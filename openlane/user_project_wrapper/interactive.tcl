package require openlane
set script_dir [file dirname [file normalize [info script]]]
set save_path $script_dir/../..

# FOR LVS AND CREATING PORT LABELS

# ACTUAL CHIP INTEGRATION

prep -design $script_dir -tag user_project_wrapper_pdn -overwrite --verbose 1
run_synthesis
set ::env(FP_PDN_SKIPTRIM) 1
init_floorplan
set save_odb $::env(DESIGN_DIR)/out.odb
remove_components -input $::env(CURRENT_ODB) -output $save_odb
set ::env(CURRENT_ODB) $save_odb
place_io
apply_def_template
run_power_grid_generation

run_magic
calc_total_runtime
save_final_views
save_final_views -save_path .. -tag user_project_wrapper_pdn