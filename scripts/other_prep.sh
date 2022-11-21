#!/bin/bash

#-------------------------------------------------------------------
# other_prep.sh --
#
# Prepare the GDS, LEF, and DEF views of all manually-generated
# cells (other than chip_io).  This includes gpio_defaults_block
# and variants gpio_defaults_block_* (007, 009, and 087);
# and user_id_programming.
#
# Run this from the caravel/mag/ directory after modifying the
# magic layout.
#
# Written by Tim Edwards for the 1st GF180MCU MPW, 11/21/2022
#-------------------------------------------------------------------

echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuC} > /dev/null

# Generate DEF of user_id_programming
echo "Generating DEF view of user_id_programming"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load user_id_programming
select top cell
expand
extract do local
extract no all
extract all
# Declare all signals to be SPECIALNETS
set globals(VDD) 1
set globals(VSS) 1
def write user_id_programming -units 400 -anal
quit -noprompt
EOF

rm *.ext

# Generate DEF of gpio_defaults_block
echo "Generating DEF view of gpio_defaults_block"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block
select top cell
expand
extract do local
extract no all
extract all
# Declare all signals to be SPECIALNETS
set globals(VDD) 1
set globals(VSS) 1
def write gpio_defaults_block -units 400 -anal
quit -noprompt
EOF

rm *.ext

# Generate DEF of gpio_defaults_block_007
echo "Generating DEF view of gpio_defaults_block_007"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_007
select top cell
expand
extract do local
extract no all
extract all
# Declare all signals to be SPECIALNETS
set globals(VDD) 1
set globals(VSS) 1
def write gpio_defaults_block_007 -units 400 -anal
quit -noprompt
EOF

rm *.ext

# Generate DEF of gpio_defaults_block_009
echo "Generating DEF view of gpio_defaults_block_009"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_009
select top cell
expand
extract do local
extract no all
extract all
# Declare all signals to be SPECIALNETS
set globals(VDD) 1
set globals(VSS) 1
def write gpio_defaults_block_009 -units 400 -anal
quit -noprompt
EOF

rm *.ext

# Generate DEF of gpio_defaults_block_087
echo "Generating DEF view of gpio_defaults_block_087"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_087
select top cell
expand
extract do local
extract no all
extract all
# Declare all signals to be SPECIALNETS
set globals(VDD) 1
set globals(VSS) 1
def write gpio_defaults_block_087 -units 400 -anal
quit -noprompt
EOF

rm *.ext

# Generate GDS of user_id_programming
echo "Generating GDS view of user_id_programming"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load user_id_programming -dereference
gds compress 9
cif *hier write disable
cif *array write disable
gds write user_id_programming
quit -noprompt
EOF

# Generate GDS of gpio_defaults_block
echo "Generating GDS view of gpio_defaults_block"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block -dereference
gds compress 9
cif *hier write disable
cif *array write disable
gds write gpio_defaults_block
quit -noprompt
EOF

# Generate GDS of gpio_defaults_block_007
echo "Generating GDS view of gpio_defaults_block_007"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_007 -dereference
gds compress 9
cif *hier write disable
cif *array write disable
gds write gpio_defaults_block_007
quit -noprompt
EOF

# Generate GDS of gpio_defaults_block_009
echo "Generating GDS view of gpio_defaults_block_009"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_009 -dereference
gds compress 9
cif *hier write disable
cif *array write disable
gds write gpio_defaults_block_009
quit -noprompt
EOF

# Generate GDS of gpio_defaults_block_087
echo "Generating GDS view of gpio_defaults_block_087"
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_087 -dereference
gds compress 9
cif *hier write disable
cif *array write disable
gds write gpio_defaults_block_087
quit -noprompt
EOF

# Generate LEF of user_id_programming
echo "Generating LEF view of user_id_programming"
export MAGTYPE=maglef
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load user_id_programming -dereference
select top cell
lef write
quit -noprompt
EOF

# Generate LEF of gpio_defaults_block
echo "Generating LEF view of gpio_defaults_block"
export MAGTYPE=maglef
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block -dereference
select top cell
lef write
quit -noprompt
EOF

# Generate LEF of gpio_defaults_block_007
echo "Generating LEF view of gpio_defaults_block_007"
export MAGTYPE=maglef
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_007 -dereference
select top cell
lef write
quit -noprompt
EOF

# Generate LEF of gpio_defaults_block_009
echo "Generating LEF view of gpio_defaults_block_009"
export MAGTYPE=maglef
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_009 -dereference
select top cell
lef write
quit -noprompt
EOF

# Generate LEF of gpio_defaults_block_087
echo "Generating LEF view of gpio_defaults_block_087"
export MAGTYPE=maglef
magic -dnull -noconsole -rcfile ${PDK_ROOT}/${PDK}/libs.tech/magic/${PDK}.magicrc << EOF
load gpio_defaults_block_087 -dereference
select top cell
lef write
quit -noprompt
EOF

# Move all generated files to their proper locations

echo "Moving generated files to destination directories"

mv user_id_programming.lef ../lef
mv gpio_defaults_block.lef ../lef
mv gpio_defaults_block_007.lef ../lef
mv gpio_defaults_block_009.lef ../lef
mv gpio_defaults_block_087.lef ../lef

mv user_id_programming.def ../def
mv gpio_defaults_block.def ../def
mv gpio_defaults_block_007.def ../def
mv gpio_defaults_block_009.def ../def
mv gpio_defaults_block_087.def ../def

mv user_id_programming.gds.gz ../gds
mv gpio_defaults_block.gds.gz ../gds
mv gpio_defaults_block_007.gds.gz ../gds
mv gpio_defaults_block_009.gds.gz ../gds
mv gpio_defaults_block_087.gds.gz ../gds

echo "Done!"
