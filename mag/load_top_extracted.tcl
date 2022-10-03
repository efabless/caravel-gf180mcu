# load_top_extracted.tcl
#
# Tcl script to run in magic;  loads the caravel top level and then
# replaces all subcells with abstract views from maglef/.
#
addpath alpha
drc off
load caravel -dereference
cellname filepath mgmt_core_wrapper ../../mgmt_soc_litex/maglef
cellname filepath simple_por ../macros/simple_por/maglef
cellname filepath user_project_wrapper ../maglef
cellname filepath spare_logic_block ../maglef
cellname filepath mgmt_protect ../maglef
cellname filepath gpio_control_block ../maglef
cellname filepath gpio_defaults_block ../maglef
cellname filepath gpio_defaults_block_007 ../maglef
cellname filepath gpio_defaults_block_009 ../maglef
cellname filepath housekeeping ../maglef
cellname filepath user_id_programming ../maglef
cellname filepath caravel_clocking ../maglef
cellname filepath digital_pll ../maglef
select top cell
expand

