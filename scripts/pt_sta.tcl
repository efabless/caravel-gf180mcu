if {\
  [catch {
    ##PT script
    # Adding SCL and IO link libraries based on the PDK and process corner specified
    if {[string match gf180* $::env(PDK)]} {
      source ./gf180_libs.tcl
    } elseif {[string match sky130* $::env(PDK)]} {
      source ./sky130_libs.tcl
    }

    # Reading design netlist
    set search_path "$::env(CARAVEL_ROOT)/verilog/gl $::env(MCW_ROOT)/verilog/gl $::env(UPRJ_ROOT)/verilog/gl"
    puts "list of verilog files:"
    foreach verilog "[glob $::env(UPRJ_ROOT)/verilog/gl/*.v] [glob $::env(CARAVEL_ROOT)/verilog/gl/*.v] [glob $::env(MCW_ROOT)/verilog/gl/*.v]" {
        puts $verilog
        read_verilog $verilog
    }

    current_design $::env(DESIGN)
    link

    # Reading constraints (signoff)
    read_sdc $::env(ROOT)/signoff/$::env(DESIGN)/$::env(DESIGN).sdc

    # Reading parasitics based on the RC corner specified
    proc read_spefs {design rc_corner} {
      if {[string match gf180* $::env(PDK)]} {
        source ./gf180_spef_mapping.tcl
      } elseif {[string match sky130* $::env(PDK)]} {
        source ./sky130_spef_mapping.tcl
      }
      foreach key [array names spef_mapping] {
        read_parasitics -keep_capacitive_coupling -path $key $spef_mapping($key)
      }
      # add -complete_with wlm to let PT complete incomplete RC networks at the top-level
      read_parasitics -keep_capacitive_coupling $::env(ROOT)/signoff/${design}/StarRC/${design}.${rc_corner}.spef -pin_cap_included -complete_with wlm
      # read_parasitics -keep_capacitive_coupling $::env(ROOT)/signoff/${design}/StarRC/${design}.${rc_corner}.spef -pin_cap_included 
      report_annotated_parasitics
    }

    proc report_results {design rc_corner proc_corner} {
      report_global_timing -separate_all_groups -significant_digits 4 > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-global.rpt
      report_analysis_coverage -significant_digits 4 -nosplit -status_details {untested} > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-coverage.rpt

      report_constraint -all_violators -significant_digits 4 -nosplit > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-all_viol.rpt

      report_timing -unique_pins -delay min -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit \
      -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-min_timing.rpt
      
      report_timing -unique_pins -delay max -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit \
      -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-max_timing.rpt

      report_si_bottleneck -significant_digits 4 -nosplit -slack_lesser_than 10 -all_nets > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-si_bottleneck.rpt

      if {$design == "caravel" | $design == "caravel_core"} {
        if {$::env(UPW) && $design == "caravel"} {
          if {[string match gf180* $::env(PDK)]} {
            report_timing -unique_pins -delay min -through [get_cells chip_core/mprj] -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit \
            -max_paths 10000 -nworst 5 -slack_lesser_than 100 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-mprj-min_timing.rpt

            report_timing -unique_pins -delay max -through [get_cells chip_core/mprj] -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit \
            -max_paths 10000 -nworst 5 -slack_lesser_than 100 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-mprj-max_timing.rpt
        } elseif {[string match sky130* $::env(PDK)]} {
            report_timing -unique_pins -delay min -through [get_cells mprj] -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit \
            -max_paths 10000 -nworst 5 -slack_lesser_than 100 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-mprj-min_timing.rpt

            report_timing -unique_pins -delay max -through [get_cells mprj] -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit \
            -max_paths 10000 -nworst 5 -slack_lesser_than 100 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-mprj-max_timing.rpt
        } }
        report_timing -unique_pins -delay min -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit -group clk \
        -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-clk-min_timing.rpt
        
        report_timing -unique_pins -delay max -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit -group clk \
        -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-clk-max_timing.rpt
        
        report_timing -unique_pins -delay min -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit -group hk_serial_clk \
        -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-hk_serial_clk-min_timing.rpt
        
        report_timing -unique_pins -delay max -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit -group hk_serial_clk \
        -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-hk_serial_clk-max_timing.rpt

        report_timing -unique_pins -delay max -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit -group hkspi_clk \
        -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-hkspi_clk-max_timing.rpt

        report_timing -unique_pins -delay min -path_type full_clock_expanded -transition_time -capacitance -nets -crosstalk_delta -derate -nosplit -group hkspi_clk \
        -max_paths 10000 -nworst 5 -slack_lesser_than 10 -significant_digits 4 -include_hierarchical_pins > $::env(OUT_DIR)/reports/${proc_corner}${proc_corner}/${design}.${rc_corner}-hkspi_clk-min_timing.rpt

        report_case_analysis -nosplit > $::env(OUT_DIR)/reports/${design}.case_analysis.rpt
        report_exceptions -nosplit > $::env(OUT_DIR)/reports/${design}.false_paths.rpt
      }

      write_sdf -version 3.0 -significant_digits 3 $::env(OUT_DIR)/sdf/${proc_corner}${proc_corner}/${design}.${rc_corner}.sdf

      # Extract timing model
      set extract_model_clock_transition_limit 0.75
      set extract_model_data_transition_limit 0.75
      set_app_var extract_model_capacitance_limit 1.0
      set extract_model_num_capacitance_points 7
      set extract_model_num_clock_transition_points 7
      set extract_model_num_data_transition_points 7
      set extract_model_use_conservative_current_slew true
      set extract_model_enable_report_delay_calculation true
      set extract_model_with_clock_latency_arcs true
      extract_model -output $::env(OUT_DIR)/lib/${proc_corner}${proc_corner}/${design}.${rc_corner} -format {lib} 
    }
    # set timing_report_unconstrained_paths TRUE
    set parasitics_log_file $::env(OUT_DIR)/logs/$::env(DESIGN)-$::env(RC_CORNER)-parasitics.log
    set si_enable_analysis TRUE
    # set si_enable_analysis FALSE
    set sh_message_limit 1500
    read_spefs $::env(DESIGN) $::env(RC_CORNER)
    update_timing
    report_results $::env(DESIGN) $::env(RC_CORNER) $::env(PROC_CORNER)
    exit
  } err]
} {
  puts stderr $err
  exit 1
}