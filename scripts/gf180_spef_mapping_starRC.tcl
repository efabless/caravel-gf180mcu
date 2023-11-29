# mapping instances to a .spef to enable hierarchical parasitic annotation

if {$::env(UPW)} {
    # user_project_wrapper spefs
    # update the path to match the spefs path
    set spef_mapping(chip_core/mprj)                                 $::env(UPRJ_ROOT)/signoff/user_project_wrapper/StarRC/user_project_wrapper.${rc_corner}.spef
    
    # add spefs of modules instantiated in user_project_wrapper/user_analog_project_wrapper here
    set spef_mapping(chip_core/mprj/mprj)                            $::env(UPRJ_ROOT)/signoff/user_proj_example/StarRC/user_project_wrapper.${rc_corner}.spef
}

set spef_mapping(padframe)                                           $::env(CARAVEL_ROOT)/signoff/chip_io/StarRC/chip_io.${rc_corner}.spef
set spef_mapping(chip_core)                                          $::env(CARAVEL_ROOT)/signoff/caravel_core/StarRC/caravel_core.${rc_corner}.spef

#caravel macros
set spef_mapping(chip_core/housekeeping)                             $::env(CARAVEL_ROOT)/signoff/housekeeping/StarRC/housekeeping.${rc_corner}.spef
set spef_mapping(chip_core/gpio_buf)                                 $::env(CARAVEL_ROOT)/signoff/mprj_io_buffer/StarRC/mprj_io_buffer.${rc_corner}.spef

set spef_mapping(chip_core/\spare_logic[0])                          $::env(CARAVEL_ROOT)/signoff/spare_logic_block/StarRC/spare_logic_block.${rc_corner}.spef
set spef_mapping(chip_core/\spare_logic[1])                          $::env(CARAVEL_ROOT)/signoff/spare_logic_block/StarRC/spare_logic_block.${rc_corner}.spef
set spef_mapping(chip_core/\spare_logic[2])                          $::env(CARAVEL_ROOT)/signoff/spare_logic_block/StarRC/spare_logic_block.${rc_corner}.spef
set spef_mapping(chip_core/\spare_logic[3])                          $::env(CARAVEL_ROOT)/signoff/spare_logic_block/StarRC/spare_logic_block.${rc_corner}.spef

set spef_mapping(chip_core/gpio_defaults_block_0)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_1)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_3)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_10)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_10)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_11)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_12)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_13)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_14)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_15)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_16)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_17)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_18)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_19)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_2)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_20)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_21)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_22)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_23)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_24)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_25)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_26)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_27)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_28)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_29)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_30)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_31)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_32)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_33)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_35)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_36)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_37)                   $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_4)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_5)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_6)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_7)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_8)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/gpio_defaults_block_9)                    $::env(CARAVEL_ROOT)/signoff/gpio_defaults_block/StarRC/gpio_defaults_block.${rc_corner}.spef
set spef_mapping(chip_core/por_inst)                                 $::env(CARAVEL_ROOT)/signoff/not-found/simple_por.${rc_corner}.spef
set spef_mapping(chip_core/user_id_value)                            $::env(CARAVEL_ROOT)/signoff/user_id_programming/StarRC/user_id_programming.${rc_corner}.spef

puts "\[INFO\]: Spef mapping done"