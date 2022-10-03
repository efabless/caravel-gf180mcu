#!/bin/bash
# Run top-level LVS on caravel.  The extraction in magic does not include the SoC,
# which is abstracted.
#
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuC} > /dev/null

cd ../mag
magic -dnull -noconsole -rcfile $PDK_ROOT/$PDK/libs.tech/magic/$PDK.magicrc << EOF
drc off
crashbackups stop
# To do: Create .mag view of gf-caravel!
gds polygon subcell true
gds read ../gds/caravel.gds.gz
load caravel

select top cell
expand
extract do local
extract all
ext2spice lvs
ext2spice
EOF
rm -f *.ext

export NETGEN_COLUMNS=60
netgen -batch lvs "caravel.spice caravel" "../verilog/gl/caravel.v caravel" \
	$PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl caravel_comp.out

# mv caravel.spice ../spi/lvs/caravel_lvs.spice
# mv caravel_comp.out ../signoff/
exit 0
