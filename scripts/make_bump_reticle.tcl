# Tcl script to generate the full reticle mask of the bump-bond layers.
#
# Required:  caravel_bump_bond.gds.gz, which was created by the
# make_bump_bonds.tcl script and moved to the gds/ directory.
#
# This script should be run under magic using the micross.tech technology
# file.
# The tech file is currently installed in the sky130A PDK, although it is
# not skywater-specific;  the technology file defines the top layer of
# metal and glass cut, which happen to be "m5" for both sky130 and for
# gf180mcu.
#
# This script is intended to be run from the scripts/ directory.
#
# The GF reticle is 26 x 32 mm.  There are 40 projects arranged, rotated
# 90 degrees, arrayed 5 x 8.
# Lower-left-hand slot is 36, center position (34744, 20312)
# next over in X is slot 37, center position X = 55472
# next up in Y is slot 31, center position Y = 36280
#
# Slot size is 20488 x 15728
# (These units appear to be quarter microns---divided by 4 is
# 5122 x 3932)
#
# The reticle drawing from GF inclues the entire frame.  For the 26 x 32
# reticle itself, the cell lower-left-most positions are
# 24288, 12304  (6072um, 3076um)
#
# (Chip size w/o seal ring and rotated 90 degrees is 5070 x 3880
#
# X pitch = (55472 - 34744) = 20728 = 5182um
# Y pitch = (36280 - 20312) = 15968 = 3992um
# 
#
# NOTE:  Considered generating just the m5 and glass cut layers for
# the reticle, but it is difficult to do and is not representative
# of the data, anyway.  Get the data from GF.  The layers needed
# are metal 5 (GDS 81:0) and glass cut (GDS 37:0).  
#

namespace path {::tcl::mathop ::tcl::mathfunc}

gds readonly true
gds rescale false
gds read ../gds/caravel_bump_bond.gds.gz
# gds read ../gds/caravel_top_m5.gds.gz
gds readonly false

load caravel_bump_reticle -silent
box values 0 0 0 0

# X and Y pitch of the individual caravel slots on the reticle.
set xpitch 5182
set ypitch 3992

# Position of the lower left-most project (in frame coordinates):
# Center X 34744 = 8686um
# Center Y 20312 = 5078um

# Subtract half of original project die size w/o seal ring:
# Half chip (rotated) X = 2535
# Half chip (rotated) Y = 1940
# Origin x = 8686 - 2535 = 6151
# Origin X = 5078 - 1940 = 3138
set xorigin 6151
set yorigin 3138

for {set x 0} {$x < 5} {incr x} {
    for {set y 0} {$y < 8} {incr y} {
	set xval [+ $xorigin [* $xpitch $x]]
	set yval [+ $yorigin [* $ypitch $y]]
       
        box position ${xval}um ${yval}um
	getcell caravel_bump_bond 90
    }
}

# Write the result (need to uncompress before sending to Micross)
# 
gds compress 9
cif *hier write disable
cif *array write disable
gds write caravel_bump_reticle
