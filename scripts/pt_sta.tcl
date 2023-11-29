if {\
  [catch {
    ##PT script
    # Adding SCL and IO link libraries based on the PDK and process corner specified
    set ::report_dir $::env(OUT_DIR)/reports/$::env(PROC_CORNER)$::env(PROC_CORNER)/
    source ./gf180_libs.tcl

    # Reading design netlist
    set search_path "$::env(CARAVEL_ROOT)/verilog/gl $::env(MCW_ROOT)/verilog/gl $::env(UPRJ_ROOT)/verilog/gl $::env(ROOT)/verilog/gl"

    set verilogs [concat [glob $::env(CARAVEL_ROOT)/verilog/gl/*.v] \
        [glob $::env(MCW_ROOT)/verilog/gl/*.v] \
        [glob $::env(UPRJ_ROOT)/verilog/gl/*.v]]

    set verilog_exceptions [concat [glob -nocomplain $::env(MCW_ROOT)/verilog/gl/__*.v] \
      [glob -nocomplain $::env(CARAVEL_ROOT)/verilog/gl/__*.v]]

    # remove empty wrapper when including non-empty wrapper only
    if {!($::env(UPW))} {
      if {$::env(DESIGN) == $::env(CHIP)} {
        set verilogs [concat $verilogs "$::env(CARAVEL_ROOT)/verilog/gl/__user_project_wrapper.v"]
        set verilog_exceptions [concat $verilog_exceptions "$::env(UPRJ_ROOT)/verilog/gl/user_project_wrapper.v"]
      } 
    } 

    foreach verilog_exception $verilog_exceptions {
        puts "verilog exception: $verilog_exception"
        set match_idx [lsearch $verilogs $verilog_exception]
        if {$match_idx > -1} {
            puts "removing $verilog_exception from verilogs list"
            set verilogs [lreplace $verilogs $match_idx $match_idx]
        }
    }

    puts "list of verilog files:"
    foreach verilog $verilogs {
        puts $verilog
        read_verilog $verilog
    }

    current_design $::env(DESIGN)
    link

    # Reading constraints (signoff)
    read_sdc $::env(ROOT)/signoff/$::env(DESIGN)/$::env(DESIGN).sdc

    # Reading parasitics based on the RC corner specified
    proc read_spefs {design rc_corner} {
      if {$design == $::env(CHIP)} {
        source ./gf180_spef_mapping_starRC.tcl
      } elseif {$::env(SPEF_MAPPING) == 1} {
        source $::env(ROOT)/scripts/$::env(DESIGN).tcl
      }
      if {$::env(SI_ANALYSIS) == 1} {
        foreach key [array names spef_mapping] {
          read_parasitics -keep_capacitive_coupling -path $key $spef_mapping($key)
        }
        # add -complete_with wlm to let PT complete incomplete RC networks at the top-level
        # read_parasitics -keep_capacitive_coupling $::env(ROOT)/signoff/${design}/openlane-signoff/spef/${design}.${rc_corner}.spef -pin_cap_included -complete_with wlm
        read_parasitics -keep_capacitive_coupling $::env(ROOT)/signoff/${design}/StarRC/${design}.${rc_corner}.spef -pin_cap_included -complete_with wlm
        # read_parasitics -keep_capacitive_coupling $::env(ROOT)/signoff/${design}/openlane-signoff/spef/${design}.${rc_corner}.spef -pin_cap_included 
      } else {
        foreach key [array names spef_mapping] {
          read_parasitics -path $key $spef_mapping($key)
        }
        # add -complete_with wlm to let PT complete incomplete RC networks at the top-level
        # read_parasitics $::env(ROOT)/signoff/${design}/openlane-signoff/spef/${design}.${rc_corner}.spef -pin_cap_included -complete_with wlm
        read_parasitics $::env(ROOT)/signoff/${design}/StarRC/${design}.${rc_corner}.spef -pin_cap_included -complete_with wlm
        # read_parasitics $::env(ROOT)/signoff/${design}/StarRC/${design}.${rc_corner}.spef -pin_cap_included
      
      }
    }

    proc report_results {design rc_corner proc_corner} {
      set common_args [list]
      lappend common_args -unique_pins
      lappend common_args -path_type full_clock_expanded
      lappend common_args -transition_time
      lappend common_args -capacitance
      lappend common_args -nets
      lappend common_args -crosstalk_delta
      lappend common_args -derate
      lappend common_args -nosplit
      lappend common_args -include_hierarchical_pins
      lappend common_args -slack_lesser_than 40
      lappend common_args -max_paths 500
      lappend common_args

      report_global_timing -separate_all_groups -significant_digits 4 > $::report_dir/${rc_corner}-global.rpt
      report_analysis_coverage -significant_digits 4 -nosplit -status_details {untested} > $::report_dir/${rc_corner}-coverage.rpt

      report_constraint -all_violators -significant_digits 4 -nosplit > $::report_dir/${rc_corner}-all_viol.rpt

      report_timing -delay min {*}$common_args > $::report_dir/${rc_corner}-min_timing.rpt
      report_timing -delay max {*}$common_args > $::report_dir/${rc_corner}-max_timing.rpt

      report_timing -delay min -group {clk} {*}$common_args > $::report_dir/clk-${rc_corner}-min_timing.rpt
      report_timing -delay max -group {clk} {*}$common_args > $::report_dir/clk-${rc_corner}-max_timing.rpt

      report_clock_timing -nosplit -setup -type skew  > $::report_dir/${rc_corner}-skew.max.rpt
      report_clock_timing -nosplit -hold -type skew  > $::report_dir/${rc_corner}-skew.min.rpt
      report_qor -summary > $::report_dir/${rc_corner}-qor.rpt

      if {$design == $::env(CHIP) | $design == $::env(CHIP_CORE)} {
        if {$::env(UPW) && $design == $::env(CHIP)} {
            report_timing -delay min -through [get_cells chip_core/mprj] {*}$common_args > $::report_dir/${rc_corner}-mprj-min_timing.rpt
            report_timing -delay max -through [get_cells chip_core/mprj] {*}$common_args > $::report_dir/${rc_corner}-mprj-max_timing.rpt
        }

        report_case_analysis -nosplit > $::env(OUT_DIR)/reports/case_analysis.rpt
        report_exceptions -nosplit > $::env(OUT_DIR)/reports/false_paths.rpt
      }

      set worst_max_path [get_timing_paths -delay max]
      set design_setup_ws [get_attribute $worst_max_path slack]
      set worst_min_path [get_timing_paths -delay min]
      set design_hold_ws [get_attribute $worst_min_path slack]

      set worst_max_r2r_path [get_timing_paths -delay max -start_end_type reg_to_reg]
      set design_setup_r2r_ws [get_attribute $worst_max_r2r_path slack]
      set worst_min_r2r_path [get_timing_paths -delay min -start_end_type reg_to_reg]
      set design_hold_r2r_ws [get_attribute $worst_min_r2r_path slack]

      echo [format "Design Worst Slack (Setup): %g" $design_setup_ws]
      echo [format "Design Worst Slack (Hold): %g" $design_hold_ws] 

      echo [format "Design Worst Slack R2R (Setup): %g" $design_setup_r2r_ws]
      echo [format "Design Worst Slack R2R (Hold): %g" $design_hold_r2r_ws]

      if {$::env(REPORTS_ONLY) == 0} {
        write_sdf -compress gzip $::env(OUT_DIR)/sdf/${proc_corner}${proc_corner}/${design}.${rc_corner}.sdf.gz

        # Extract timing model
        set_app_var extract_model_clock_transition_limit 1.5
        set_app_var extract_model_data_transition_limit 1.5
        set_app_var extract_model_capacitance_limit 1.0
        set_app_var extract_model_num_capacitance_points 7
        set_app_var extract_model_num_clock_transition_points 7
        set_app_var extract_model_num_data_transition_points 7
        set_app_var extract_model_use_conservative_current_slew true
        set_app_var extract_model_enable_report_delay_calculation true
        set_app_var extract_model_with_clock_latency_arcs true

        # remove boundary constraints
        reset_timing_derate
        remove_input_delay [all_inputs]
        remove_output_delay [all_outputs]
        remove_capacitance [all_outputs]

        extract_model -output $::env(OUT_DIR)/lib/${proc_corner}${proc_corner}/${design}.${rc_corner} -format {lib}  
      }
      if {$::env(SI_ANALYSIS) == 1} {
        report_si_bottleneck -significant_digits 4 -nosplit -slack_lesser_than 10 -all_nets > $::report_dir/${rc_corner}-si_bottleneck.rpt
      }

    }
    set report_default_significant_digits 4
    if {$::env(SI_ANALYSIS) == 1} {
      set si_enable_analysis TRUE
    }
    # set si_enable_analysis FALSE
    # set timing_report_unconstrained_paths TRUE
    set parasitics_log_file $::env(OUT_DIR)/logs/$::env(RC_CORNER)-parasitics.log
    set sh_message_limit 1500
    read_spefs $::env(DESIGN) $::env(RC_CORNER)
    set parasitics_log_file $::env(OUT_DIR)/logs/$::env(RC_CORNER)-unannotated.log
    report_annotated_parasitics -list_not_annotated -max_nets 5000 
    update_timing
    report_results $::env(DESIGN) $::env(RC_CORNER) $::env(PROC_CORNER)
    exit
  } err]
} {
  puts stderr $err
  exit 1
}