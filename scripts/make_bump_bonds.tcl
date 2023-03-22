# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0
#----------------------------------------------------------------------
# Assumes running magic -T micross using the micross technology file
# from the open_pdks installation of sky130A.  Note that the micross
# technology is independent of sky130A.  This script is specifically
# to generate the bump bond pattern for the gf180mucC/D version of
# caravel, but should be run with the micross technology.
#----------------------------------------------------------------------
# bump bond pitch is 500um.  Bump diameter is set by the technology

namespace path {::tcl::mathop ::tcl::mathfunc}

if {[catch {set PDKPATH $env(PDKPATH)}]} {
    if {[catch {set PDK_ROOT $::env(PDK_ROOT)}]} {
	set PDKPATH "/usr/share/pdk/sky130A"
    } else {
	set PDKPATH "$::env(PDK_ROOT)/sky130A"
    }
}

source $PDKPATH/libs.tech/magic/bump_bond_generator/bump_bond.tcl

# Caravel dimensions, in microns
set chipwidth 3880
set chipheight 5070

set halfwidth [/ $chipwidth 2]
set halfheight [/ $chipheight 2]

set columns 6
set rows 10

set bump_pitch 500

set llx [- $halfwidth [* [- [/ $columns 2] 0.5] $bump_pitch]]
set lly [- $halfheight [* [- [/ $rows 2] 0.5] $bump_pitch]]

# Create a new cell
load caravel_bump_bond -silent

# Build the bump cells
make_bump_bond 0
make_bump_bond 45

# View the whole chip during generation.  This is not strictly
# necessary, but looks nice!
snap internal
box values 0 0 ${chipwidth}um ${chipheight}um
paint glass
view
erase glass
box values 0 0 0 0
grid 250um 250um 45um 95um

# Starting from the bottom left-hand corner and scanning across and up,
# these are the orientations of the bump bond pad tapers:
set tapers {}
lappend tapers 180 225 270 270 270 315
lappend tapers 180 135 225 270   0   0
lappend tapers 180 135 135 270 315   0
lappend tapers 180 135 135 315 315   0
lappend tapers 135 135   0 180 315   0
lappend tapers 180 135   0 180 315   0
lappend tapers 180 135 180 315 315   0
lappend tapers 180 180 135  45 315   0
lappend tapers 180 135 135  45  45  45
lappend tapers 135  90  90  90  90  45

box values 0 0 0 0
set t 0
for {set y 0} {$y < $rows} {incr y} {
    for {set x 0} {$x < $columns} {incr x} {
        set xpos [+ $llx [* $x $bump_pitch]]
        set ypos [+ $lly [* $y $bump_pitch]]
	draw_bump_bond $xpos $ypos [lindex $tapers $t]
	incr t
    }
}

# The pad at E6 has wires exiting two sides, so put another pad down
# at the other orientation.
set y 4
set x 4
set xpos [+ $llx [* $x $bump_pitch]]
set ypos [+ $lly [* $y $bump_pitch]]
draw_bump_bond $xpos $ypos 180

select top cell
expand

# On the GF caravel, pads are regularly spaced, and the glass cuts
# are 60um x 60um.
# 1st pad on left side at bottom:  Y = 432.5, so pad Y center is 462.5um.
# Left side pad Y pitch is 205um
# There are 21 pads on the left.
#
# 1st pad on bottom side at left:  X = 532.5, so pad X center is 562.5um.
# Bottom side pad X pitch is 275um.
# There are 11 pads on the bottom.
#
# 1st pad on right side at bottom:  Y = 452.5, so pad Y center is 482.5um.
# Right side pad pitch is 215um.
# There are 20 pads on the right.
#
# 1st pad on top side at left: X = 527.5um, so pad X center is 557.5um.
# Top side pad pitch is 275um.
# There are 11 pads on the top.
#

# These are the pad Y positions on the left side from bottom to top

set leftpads {}
set y 462.5
for {set i 0} {$i < 21} {incr i} {
    lappend leftpads $y
    set y [+ 205 $y]
}

# These are the pad X positions on the top side from left to right

set toppads {}
set x 557.5
for {set i 0} {$i < 11} {incr i} {
    lappend toppads $x
    set x [+ 275 $x]
}

# These are the pad Y positions on the right side from bottom to top

set rightpads {}
set y 482.5
for {set i 0} {$i < 20} {incr i} {
    lappend rightpads $y
    set y [+ 215 $y]
}

# These are the pad X positions on the bottom side from left to right

set bottompads {}
set x 562.5
for {set i 0} {$i < 11} {incr i} {
    lappend bottompads $x
    set x [+ 275 $x]
}

set leftpadx 32
set rightpadx 3848
set bottompady 32
set toppady 5038

set xpos $leftpadx
for {set y 0} {$y < [llength $leftpads]} {incr y} {
    set ypos [lindex $leftpads $y]
    draw_pad_bond $xpos $ypos
}

set ypos $toppady
for {set x 0} {$x < [llength $toppads]} {incr x} {
    set xpos [lindex $toppads $x]
    draw_pad_bond $xpos $ypos
}

set xpos $rightpadx
for {set y 0} {$y < [llength $rightpads]} {incr y} {
    set ypos [lindex $rightpads $y]
    draw_pad_bond $xpos $ypos
}

set ypos $bottompady
for {set x 0} {$x < [llength $bottompads]} {incr x} {
    set xpos [lindex $bottompads $x]
    draw_pad_bond $xpos $ypos
}

# Now route between the wirebond pads and the bump bond pads
# routes start centered on the wirebond pad and align to grid points
# on a 1/2 ball pitch, although positions do not need to be on
# integer values.  The overlaid grid starts 1/2 pitch to the left
# and below the center of the bottom left bump bond.  Grid columns
# are numbered 0 to 12, and grid rows are numbered 0 to 20.  To
# convert to a micron unit coordinate, use the to_grid procedure
# defined below.

set gridllx [- $llx 250.0]
set gridlly [- $lly 250.0]
set gridpitchx 250.0
set gridpitchy 250.0

proc to_grid {x y} {
    global gridllx gridlly
    set coords []
    catch {lappend coords [+ $gridllx [* 250.0 $x]]}
    catch {lappend coords [+ $gridlly [* 250.0 $y]]}
    return $coords
}

# Detailed routing, scanning left to right and from bottom to top.
# (This really needs to be automated. . .)

set wire_width 40.0

# The grid used by "to_grid" is half the bump pitch (250um x 250um)
# and the bump bond at the lower left corner is at grid (1, 1).

# A10 vccd
set coords [list $leftpadx [lindex $leftpads 0]]
lappend coords {*}[to_grid -0.9 1]
lappend coords {*}[to_grid 1 1]
draw_pad_route $coords $wire_width

# B10 resetb
set coords [list [lindex $bottompads 1] $bottompady]
lappend coords {*}[to_grid 1.8 0.2]
lappend coords {*}[to_grid 2.2 0.2]
lappend coords {*}[to_grid 3 1]
draw_pad_route $coords $wire_width

# C10 flash csb
set coords [list [lindex $bottompads 4] $bottompady]
lappend coords {*}[to_grid 5 0.1]
lappend coords {*}[to_grid 5 1]
draw_pad_route $coords $wire_width

# D10 flash io0
set coords [list [lindex $bottompads 6] $bottompady]
lappend coords {*}[to_grid 7 0.1]
lappend coords {*}[to_grid 7 1]
draw_pad_route $coords $wire_width

# E10 gpio
set coords [list [lindex $bottompads 8] $bottompady]
lappend coords {*}[to_grid 9 0.3]
lappend coords {*}[to_grid 9 1]
draw_pad_route $coords $wire_width

# F10 vdda
set coords [list [lindex $bottompads 10] $bottompady]
lappend coords {*}[to_grid 11.5 0.1]
lappend coords {*}[to_grid 11.5 0.5]
lappend coords {*}[to_grid 11 1]
draw_pad_route $coords $wire_width

# A9 mprj_io[37]
set coords [list $leftpadx [lindex $leftpads 2]]
lappend coords {*}[to_grid -1.3 3]
lappend coords {*}[to_grid 1 3]
draw_pad_route $coords $wire_width

# B9 mprj_io[36]
set coords [list $leftpadx [lindex $leftpads 3]]
lappend coords {*}[to_grid -1.5 4]
lappend coords {*}[to_grid 2 4]
lappend coords {*}[to_grid 3 3]
draw_pad_route $coords $wire_width

# C9 clock
set coords [list [lindex $bottompads 2] $bottompady]
lappend coords {*}[to_grid 2.9 0.2]
lappend coords {*}[to_grid 3.4 0.2]
lappend coords {*}[to_grid 3.8 0.6]
lappend coords {*}[to_grid 3.8 1.6]
lappend coords {*}[to_grid 4.5 2.3]
lappend coords {*}[to_grid 4.5 2.5]
lappend coords {*}[to_grid 5 3]
draw_pad_route $coords $wire_width

# D9 flash io1
set coords [list [lindex $bottompads 7] $bottompady]
lappend coords {*}[to_grid 8 0.2]
lappend coords {*}[to_grid 8 1.3]
lappend coords {*}[to_grid 7 2.3]
lappend coords {*}[to_grid 7 3]
draw_pad_route $coords $wire_width

# E9 mprj_io[1]/SDO
set coords [list $rightpadx [lindex $rightpads 1]]
lappend coords {*}[to_grid 13.2 2.2]
lappend coords {*}[to_grid 10.5 2.2]
lappend coords {*}[to_grid 9.7 3]
lappend coords {*}[to_grid 9 3]
draw_pad_route $coords $wire_width

# F9 mprj_io[2]/SDI
set coords [list $rightpadx [lindex $rightpads 2]]
lappend coords {*}[to_grid 13.1 3]
lappend coords {*}[to_grid 11 3]
draw_pad_route $coords $wire_width

# A8 mprj_io[35]
set coords [list $leftpadx [lindex $leftpads 4]]
lappend coords {*}[to_grid -1.4 5]
lappend coords {*}[to_grid 1 5]
draw_pad_route $coords $wire_width

# B8 mprj_io[34]
set coords [list $leftpadx [lindex $leftpads 5]]
lappend coords {*}[to_grid -1.4 5.8]
lappend coords {*}[to_grid 2.2 5.8]
lappend coords {*}[to_grid 3 5]
draw_pad_route $coords $wire_width

# C8 mprj_io[33]
set coords [list $leftpadx [lindex $leftpads 6]]
lappend coords {*}[to_grid -1.2 6.2]
lappend coords {*}[to_grid 3.8 6.2]
lappend coords {*}[to_grid 5 5]
draw_pad_route $coords $wire_width

# D8 flash clk
set coords [list [lindex $bottompads 5] $bottompady]
lappend coords {*}[to_grid 6 0]
lappend coords {*}[to_grid 6 1]
lappend coords {*}[to_grid 6.2 1.2]
lappend coords {*}[to_grid 6.2 3.5]
lappend coords {*}[to_grid 7 4.3]
lappend coords {*}[to_grid 7 5]
draw_pad_route $coords $wire_width

# E8 mprj_io[3]/CSB
set coords [list $rightpadx [lindex $rightpads 3]]
lappend coords {*}[to_grid 13.3 4]
lappend coords {*}[to_grid 10 4]
lappend coords {*}[to_grid 9 5]
draw_pad_route $coords $wire_width

# F8 mrpj_io[4]/SCK
set coords [list $rightpadx [lindex $rightpads 4]]
lappend coords {*}[to_grid 13.4 5]
lappend coords {*}[to_grid 11 5]
draw_pad_route $coords $wire_width

# A7 mrpj_io[32]
set coords [list $leftpadx [lindex $leftpads 7]]
lappend coords {*}[to_grid -1.2 7]
lappend coords {*}[to_grid 1 7]
draw_pad_route $coords $wire_width

# B7 vssd2
set coords [list $leftpadx [lindex $leftpads 8]]
lappend coords {*}[to_grid -1.2 7.8]
lappend coords {*}[to_grid 2.2 7.8]
lappend coords {*}[to_grid 3 7]
draw_pad_route $coords $wire_width

# C7 vdda2
set coords [list $leftpadx [lindex $leftpads 9]]
lappend coords {*}[to_grid -0.7 8.2]
lappend coords {*}[to_grid 2.3 8.2]
lappend coords {*}[to_grid 2.5 8]
lappend coords {*}[to_grid 4 8]
lappend coords {*}[to_grid 5 7]
draw_pad_route $coords $wire_width

# D7 mrpj_io[0]/JTAG
set coords [list $rightpadx [lindex $rightpads 0]]
lappend coords {*}[to_grid 13.4 1.8]
lappend coords {*}[to_grid 10.2 1.8]
lappend coords {*}[to_grid 9.8 2.2]
lappend coords {*}[to_grid 8.6 2.2]
lappend coords {*}[to_grid 8.2 2.6]
lappend coords {*}[to_grid 8.2 5.8]
lappend coords {*}[to_grid 7 7]
draw_pad_route $coords $wire_width

# E7 mrpj_io[5]/ser_rx
set coords [list $rightpadx [lindex $rightpads 5]]
lappend coords {*}[to_grid 13.6 6]
lappend coords {*}[to_grid 10 6]
lappend coords {*}[to_grid 9 7]
draw_pad_route $coords $wire_width

# F7 mprj_io[6]/ser_tx
set coords [list $rightpadx [lindex $rightpads 6]]
lappend coords {*}[to_grid 13.6 7]
lappend coords {*}[to_grid 11 7]
draw_pad_route $coords $wire_width

# A6 mprj_io[31]
set coords [list $leftpadx [lindex $leftpads 10]]
lappend coords {*}[to_grid -1.4 9.7]
lappend coords {*}[to_grid 0.3 9.7]
lappend coords {*}[to_grid 1 9]
draw_pad_route $coords $wire_width

# B6 mprj_io[30]
set coords [list $leftpadx [lindex $leftpads 11]]
lappend coords {*}[to_grid -1.4 10.5]
lappend coords {*}[to_grid 0 10.5]
lappend coords {*}[to_grid 0.5 10]
lappend coords {*}[to_grid 2 10]
lappend coords {*}[to_grid 3 9]
draw_pad_route $coords $wire_width

# C6 vssio/vssa/vssd:  Connects to D6, D5, C5
set coords [to_grid 5 9]
lappend coords {*}[to_grid 5.65 9]
lappend coords {*}[to_grid 5.85 9.2]
lappend coords {*}[to_grid 6 9.2]
draw_pad_route $coords $wire_width

# D6 vssio/vssa/vssd
set coords [to_grid 7 9]
lappend coords {*}[to_grid 6.35 9]
lappend coords {*}[to_grid 6.15 8.8]
lappend coords {*}[to_grid 6 8.8]
draw_pad_route $coords $wire_width

# D6 vssio/vssa/vssd also goes to:
set coords [list [lindex $bottompads 0] $bottompady]
lappend coords {*}[to_grid 0.7 0.2]
lappend coords {*}[to_grid 1.3 0.2]
lappend coords {*}[to_grid 2 0.9]
lappend coords {*}[to_grid 2 1.5]
lappend coords {*}[to_grid 2.3 1.8]
lappend coords {*}[to_grid 3.5 1.8]
lappend coords {*}[to_grid 4.2 2.5]
lappend coords {*}[to_grid 4.2 3.5]
lappend coords {*}[to_grid 4.5 3.8]
lappend coords {*}[to_grid 5.3 3.8]
lappend coords {*}[to_grid 5.8 3.3]
lappend coords {*}[to_grid 5.8 2.5]
lappend coords {*}[to_grid 5.3 2]
lappend coords {*}[to_grid 4.8 2]
lappend coords {*}[to_grid 4.2 1.4]
lappend coords {*}[to_grid 4.2 0.4]
lappend coords {*}[list [lindex $bottompads 3] $bottompady]
draw_pad_route $coords $wire_width

# D6 vssio/vssa/vssd also goes to:
set coords [list [lindex $bottompads 9] $bottompady]
lappend coords {*}[to_grid 10 0.4]
lappend coords {*}[to_grid 10 1.4]
lappend coords {*}[to_grid 9.6 1.8]
lappend coords {*}[to_grid 8.5 1.8]
lappend coords {*}[to_grid 7.8 2.5]
lappend coords {*}[to_grid 7.8 5.5]
lappend coords {*}[to_grid 7.3 6]
lappend coords {*}[to_grid 6.2 6]
draw_pad_route $coords $wire_width

# D6 vssio/vssa/vssd also goes to:
set coords [list [lindex $toppads 5] $toppady]
lappend coords {*}[to_grid 6 19.9]
lappend coords {*}[to_grid 6 16]
lappend coords {*}[to_grid 5.8 15.8]
lappend coords {*}[to_grid 5.8 12.2]
lappend coords {*}[to_grid 6 12]
lappend coords {*}[to_grid 6 8]
lappend coords {*}[to_grid 6.2 7.8]
lappend coords {*}[to_grid 6.2 4.3]
lappend coords {*}[to_grid 5.5 3.6]
draw_pad_route $coords $wire_width

# E6 vssa1
set coords [list $rightpadx [lindex $rightpads 7]]
lappend coords {*}[to_grid 13.4 8]
lappend coords {*}[to_grid 10 8]
lappend coords {*}[to_grid 9 9]
draw_pad_route $coords $wire_width

# E6 vssa1 also goes to
set coords [list [lindex $toppads 9] $toppady]
lappend coords {*}[to_grid 10 19.6]
lappend coords {*}[to_grid 10 18.5]
lappend coords {*}[to_grid 9.5 18]
lappend coords {*}[to_grid 8.5 18]
lappend coords {*}[to_grid 8 17.5]
lappend coords {*}[to_grid 8 16.5]
lappend coords {*}[to_grid 7.5 16]
lappend coords {*}[to_grid 6.7 16]
lappend coords {*}[to_grid 6.2 15.5]
lappend coords {*}[to_grid 6.2 12.6]
lappend coords {*}[to_grid 6.7 12]
lappend coords {*}[to_grid 7.3 12]
lappend coords {*}[to_grid 7.8 11.5]
lappend coords {*}[to_grid 7.8 10.2]
lappend coords {*}[to_grid 8 10]
lappend coords {*}[to_grid 8 9.3]
lappend coords {*}[to_grid 8.3 9]
lappend coords {*}[to_grid 9 9]
draw_pad_route $coords $wire_width

# F6 vssd1
set coords [list $rightpadx [lindex $rightpads 8]]
lappend coords {*}[to_grid 13.3 9]
lappend coords {*}[to_grid 11 9]
draw_pad_route $coords $wire_width

# A5 mprj_io[29]
set coords [list $leftpadx [lindex $leftpads 12]]
lappend coords {*}[to_grid -1.1 11]
lappend coords {*}[to_grid 1 11]
draw_pad_route $coords $wire_width

# B5 mprj_io[28]
set coords [list $leftpadx [lindex $leftpads 13]]
lappend coords {*}[to_grid -1.3 12]
lappend coords {*}[to_grid 2 12]
lappend coords {*}[to_grid 3 11]
draw_pad_route $coords $wire_width

# C5 vssio/vssa/vssd :  Connects to D6, C6, D5
set coords [to_grid 5 11]
lappend coords {*}[to_grid 5.65 11]
lappend coords {*}[to_grid 5.85 11.2]
lappend coords {*}[to_grid 6 11.2]
draw_pad_route $coords $wire_width

# D5 vssio/vssa/vssd :  Connects to D6, C6, C5
set coords [to_grid 7 11]
lappend coords {*}[to_grid 6.35 11]
lappend coords {*}[to_grid 6.15 10.8]
lappend coords {*}[to_grid 6 10.8]
draw_pad_route $coords $wire_width

# E5 mprj_io[7]/irq
set coords [list $rightpadx [lindex $rightpads 10]]
lappend coords {*}[to_grid 13.5 10.2]
lappend coords {*}[to_grid 9.8 10.2]
lappend coords {*}[to_grid 9 11]
draw_pad_route $coords $wire_width

# F5 mprj_io[8]/flash2 csb
set coords [list $rightpadx [lindex $rightpads 11]]
lappend coords {*}[to_grid 13.4 11]
lappend coords {*}[to_grid 11 11]
draw_pad_route $coords $wire_width

# A4 mprj_io[27]
set coords [list $leftpadx [lindex $leftpads 14]]
lappend coords {*}[to_grid -1.4 13]
lappend coords {*}[to_grid 1 13]
draw_pad_route $coords $wire_width

# B4 mprj_io[26]
set coords [list $leftpadx [lindex $leftpads 15]]
lappend coords {*}[to_grid -1.5 14]
lappend coords {*}[to_grid 2 14]
lappend coords {*}[to_grid 3 13]
draw_pad_route $coords $wire_width

# C4 vddio
set coords [list $leftpadx [lindex $leftpads 1]]
lappend coords {*}[to_grid -1.1 2]
lappend coords {*}[to_grid 1.8 2]
lappend coords {*}[to_grid 2 2.2]
lappend coords {*}[to_grid 3.3 2.2]
lappend coords {*}[to_grid 3.8 2.7]
lappend coords {*}[to_grid 3.8 3.7]
lappend coords {*}[to_grid 4.3 4.2]
lappend coords {*}[to_grid 5.3 4.2]
lappend coords {*}[to_grid 5.8 4.7]
lappend coords {*}[to_grid 5.8 7.4]
lappend coords {*}[to_grid 5.2 8]
lappend coords {*}[to_grid 4.7 8]
lappend coords {*}[to_grid 4 8.7]
lappend coords {*}[to_grid 4 13]
draw_pad_route $coords $wire_width

# C4 vddio is also:
set coords [list $leftpadx [lindex $leftpads 18]]
lappend coords {*}[to_grid -1.4 16.2]
lappend coords {*}[to_grid 1.6 16.2]
lappend coords {*}[to_grid 2 15.8]
lappend coords {*}[to_grid 3.4 15.8]
lappend coords {*}[to_grid 4 15.2]
lappend coords {*}[to_grid 4 13]
lappend coords {*}[to_grid 5 13]
draw_pad_route $coords $wire_width

# D4 vdda1
set coords [list $rightpadx [lindex $rightpads 9]]
lappend coords {*}[to_grid 13.4 9.8]
lappend coords {*}[to_grid 9.7 9.8]
lappend coords {*}[to_grid 9.5 10]
lappend coords {*}[to_grid 8.8 10]
lappend coords {*}[to_grid 8.2 10.6]
lappend coords {*}[to_grid 8.2 11.8]
lappend coords {*}[to_grid 7 13]
draw_pad_route $coords $wire_width

# D4 vdda1 is also:
set coords [list $rightpadx [lindex $rightpads 16]]
lappend coords {*}[to_grid 13.4 15.8]
lappend coords {*}[to_grid 8.4 15.8]
lappend coords {*}[to_grid 8 15.4]
lappend coords {*}[to_grid 8 12.4]
lappend coords {*}[to_grid 7.8 12.2]
draw_pad_route $coords $wire_width

# E4 mprj_io[9]/flash2 sck
set coords [list $rightpadx [lindex $rightpads 12]]
lappend coords {*}[to_grid 13.6 12]
lappend coords {*}[to_grid 10 12]
lappend coords {*}[to_grid 9 13]
draw_pad_route $coords $wire_width

# F4 mprj_io[10]/flash2 io0
set coords [list $rightpadx [lindex $rightpads 13]]
lappend coords {*}[to_grid 13.5 13]
lappend coords {*}[to_grid 11 13]
draw_pad_route $coords $wire_width

# A3 mprj_io[25]
set coords [list $leftpadx [lindex $leftpads 16]]
lappend coords {*}[to_grid -1.5 15]
lappend coords {*}[to_grid 1 15]
draw_pad_route $coords $wire_width

# B3 vssa2
set coords [list $leftpadx [lindex $leftpads 17]]
lappend coords {*}[to_grid -1.5 15.8]
lappend coords {*}[to_grid 0 15.8]
lappend coords {*}[to_grid 1.3 15.8]
lappend coords {*}[to_grid 2.2 15]
lappend coords {*}[to_grid 3 15]
draw_pad_route $coords $wire_width

# C3 mprj_io[24]
set coords [list $leftpadx [lindex $leftpads 20]]
lappend coords {*}[to_grid -1.5 18]
lappend coords {*}[to_grid 1.5 18]
lappend coords {*}[to_grid 2 17.5]
lappend coords {*}[to_grid 2 16.5]
lappend coords {*}[to_grid 2.3 16.2]
lappend coords {*}[to_grid 3.8 16.2]
lappend coords {*}[to_grid 5 15]
draw_pad_route $coords $wire_width

# D3 mprj_io[13]
set coords [list $rightpadx [lindex $rightpads 17]]
lappend coords {*}[to_grid 13.4 16.2]
lappend coords {*}[to_grid 8.2 16.2]
lappend coords {*}[to_grid 7 15]
draw_pad_route $coords $wire_width

# E3 mprj_io[11]/flash2 io1
set coords [list $rightpadx [lindex $rightpads 14]]
lappend coords {*}[to_grid 13.5 14]
lappend coords {*}[to_grid 10 14]
lappend coords {*}[to_grid 9 15]
draw_pad_route $coords $wire_width

# F3 mprj_io[12]
set coords [list $rightpadx [lindex $rightpads 15]]
lappend coords {*}[to_grid 13.3 15]
lappend coords {*}[to_grid 11 15]
draw_pad_route $coords $wire_width

# A2 vccd2
set coords [list $leftpadx [lindex $leftpads 19]]
lappend coords {*}[to_grid -1.3 17]
lappend coords {*}[to_grid 1 17]
draw_pad_route $coords $wire_width

# B2 mprj_io[22]
set coords [list [lindex $toppads 1] $toppady]
lappend coords {*}[to_grid 2 19.6]
lappend coords {*}[to_grid 2 18]
lappend coords {*}[to_grid 3 17]
draw_pad_route $coords $wire_width

# C2 mprj_io[20]
set coords [list [lindex $toppads 3] $toppady]
lappend coords {*}[to_grid 4 19.8]
lappend coords {*}[to_grid 4 18]
lappend coords {*}[to_grid 5 17]
draw_pad_route $coords $wire_width

# D2 mprj_io[17]
set coords [list [lindex $toppads 7] $toppady]
lappend coords {*}[to_grid 8 19.8]
lappend coords {*}[to_grid 8 18]
lappend coords {*}[to_grid 7 17]
draw_pad_route $coords $wire_width

# E2 mprj_io[14]
set coords [list $rightpadx [lindex $rightpads 19]]
lappend coords {*}[to_grid 13.6 18]
lappend coords {*}[to_grid 11.5 18]
lappend coords {*}[to_grid 10 18]
lappend coords {*}[to_grid 9 17]
draw_pad_route $coords $wire_width

# F2 vccd1
set coords [list $rightpadx [lindex $rightpads 18]]
lappend coords {*}[to_grid 13.4 17.5]
lappend coords {*}[to_grid 11.5 17.5]
lappend coords {*}[to_grid 11 17]
draw_pad_route $coords $wire_width

# A1 mprj_io[23]
set coords [list [lindex $toppads 0] $toppady]
lappend coords {*}[to_grid 0.5 19.9]
lappend coords {*}[to_grid 0.5 19.5]
lappend coords {*}[to_grid 1 19]
draw_pad_route $coords $wire_width

# B1 mprj_io[21]
set coords [list [lindex $toppads 2] $toppady]
lappend coords {*}[to_grid 3 19.7]
lappend coords {*}[to_grid 3 19]
draw_pad_route $coords $wire_width

# C1 mprj_io[19]
set coords [list [lindex $toppads 4] $toppady]
lappend coords {*}[to_grid 5 19.9]
lappend coords {*}[to_grid 5 19]
draw_pad_route $coords $wire_width

# D1 mrpj_io[18]
set coords [list [lindex $toppads 6] $toppady]
lappend coords {*}[to_grid 7 19.9]
lappend coords {*}[to_grid 7 19]
draw_pad_route $coords $wire_width

# E1 mprj_io[16]
set coords [list [lindex $toppads 8] $toppady]
lappend coords {*}[to_grid 9 19.7]
lappend coords {*}[to_grid 9 19]
draw_pad_route $coords $wire_width

# F1 mprj_io[15]
set coords [list [lindex $toppads 10] $toppady]
lappend coords {*}[to_grid 11.6 19.9]
lappend coords {*}[to_grid 11.6 19.6]
lappend coords {*}[to_grid 11 19]
draw_pad_route $coords $wire_width

# Set the grid for viewing the layout.
grid ${gridpitchx}um ${gridpitchy}um ${gridllx}um ${gridlly}um

# Set the GDS output style for following polygon outlines
gds merge true
# Set compressed output
gds compress 9
# Don't need to do hieararchical processing
cif *hier write disable
cif *array write disable
puts stdout "Writing output with polygon outlines (this takes about a minute)"
gds write caravel_bump_bond
