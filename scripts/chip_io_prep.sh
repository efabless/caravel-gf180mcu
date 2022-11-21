#!/bin/bash

#-------------------------------------------------------------------
# chip_io_prep.sh --
#
# Prepare the GDS, LEF, and DEF views of chip_io (the caravel padframe)
#
# Run this from the caravel/mag/ directory after modifying the
# magic layout.
#
# Written by Tim Edwards for MPW-7  10/11/2022
# Updated/fixed 11/08/2022
# Updated for GF180MCU 11/21/2022
#-------------------------------------------------------------------

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuC} > /dev/null

# Generate DEF of chip_io
echo "Generating DEF view of chip_io"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load chip_io
select top cell
expand
extract do local
extract no all
extract all
# Declare all signals to be SPECIALNETS
set globals(vdd) 1
set globals(vss) 1
def write chip_io -units 400 -anal
quit -noprompt
EOF

rm *.ext

# Generate GDS of chip_io
echo "Generating GDS view of chip_io"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load chip_io -dereference
gds compress 9
cif *hier write disable
cif *array write disable
gds write chip_io
quit -noprompt
EOF

# Generate LEF of chip_io
echo "Generating LEF view of chip_io"
export MAGTYPE=maglef
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load chip_io -dereference
select top cell
lef write
quit -noprompt
EOF

# Move all generated files to their proper locations

echo "Moving generated files to destination directories"
mv chip_io.lef ../lef
mv chip_io.def ../def
mv chip_io.gds.gz ../gds

echo "Done!"
