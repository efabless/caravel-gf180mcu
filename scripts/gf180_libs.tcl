if {$::env(PROC_CORNER) == "t"} {
    puts "\nset link_path \"* $::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram128x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram256x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram512x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram64x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_io/liberty/gf180mcu_fd_io__tt_025C_5v00.lib \
    \""
    set link_path "* $::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram128x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram256x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram512x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram64x8m8wm1__tt_025C_5v00.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_io/liberty/gf180mcu_fd_io__tt_025C_5v00.lib \
    "
} elseif {$::env(PROC_CORNER) == "f"} {
    puts "\nset link_path \"* $::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram128x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram256x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram512x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram64x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_io/liberty/gf180mcu_fd_io__ff_n40C_5v50.lib \
    \""
    set link_path "* $::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram128x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram256x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram512x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram64x8m8wm1__ff_n40C_5v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_io/liberty/gf180mcu_fd_io__ff_n40C_5v50.lib \
    "
} elseif {$::env(PROC_CORNER) == "s"} {
    puts "\nset link_path \"* $::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram128x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram256x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram512x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram64x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_io/liberty/gf180mcu_fd_io__ss_125C_4v50.lib \
    \""
    set link_path "* $::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/liberty/$::env(STD_CELL_LIBRARY)__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram128x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram256x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram512x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_ip_sram/liberty/gf180mcu_fd_ip_sram__sram64x8m8wm1__ss_125C_4v50.lib \
    $::env(PDK_ROOT)/$::env(PDK)/libs.ref/gf180mcu_fd_io/liberty/gf180mcu_fd_io__ss_125C_4v50.lib \
    "
}
puts "\n\[INFO\]: set link_path for PDK: $::env(PDK)"