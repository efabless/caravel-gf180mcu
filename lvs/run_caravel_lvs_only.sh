#!/bin/bash
# Run top-level LVS on caravel.  Assumes that the extraction has already been
# done, and that a file caravel.spice exists in the mag/ directory.
# which is abstracted.
#
echo ${PDK_ROOT:=/usr/share/pdk} > /dev/null
echo ${PDK:=gf180mcuC} > /dev/null

cd ../mag
export NETGEN_COLUMNS=60
netgen -batch lvs "caravel.spice caravel" "../verilog/gl/caravel.v caravel" \
	$PDK_ROOT/$PDK/libs.tech/netgen/${PDK}_setup.tcl caravel_comp.out

# mv caravel.spice ../spi/lvs/caravel_lvs.spice
# mv caravel_comp.out ../signoff/
exit 0
