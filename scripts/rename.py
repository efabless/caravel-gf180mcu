#!/usr/bin/env python3
#
# rename ---
#
# This script does name conversions from the original caravel test chip
# for compatibility with the open PDK names.
#
#
# This script can be run as a filter in open_pdks, or as a standalone
# program.

import re
import os
import sys

def filter(inname, outname):

    # Read input
    try:
        with open(inname, 'r') as inFile:
            ftext = inFile.read()
            flines = ftext.splitlines()
    except:
        print('rename.py: failed to open ' + inname + ' for reading.', file=sys.stderr)
        return 1

    # Process input with regexp

    fixedlines = []
    modified = False

    conversions = [['GF018hv5v_mcu_sc7', 'gf180mcu_fd_sc_mcu7t5v0'],
                   ['GF018green_ipio_5p0c_75', 'gf180mcu_fd_io'],
		   ['GF018_5VGreen_SRAM_1P_512x8M8WM1', 'gf180mcu_fd_ip_sram__sram512x8m8wm1'],
		   ['pdk/gf180mcuC', '$PDKPATH'],
		   ['gf180mcu_sc7_hv', 'gf180mcu_fd_sc_mcu7t5v0'],
		   ['gf180mcu_io', 'gf180mcu_fd_io'],
		   ['gf180mcu_sram', 'gf180mcu_fd_ip_sram'],
		   ['sky130A', 'gf180mcuC'],
		   ['GF_NI_BI_T', 'gf180mcu_fd_io__bi_t'],
		   ['GF_NI_COR', 'gf180mcu_fd_io__cor'],
		   ['GF_NI_DVDD', 'gf180mcu_fd_io__dvdd'],
		   ['GF_NI_DVSS', 'gf180mcu_fd_io__dvss'],
		   ['GF_NI_FILL', 'gf180mcu_fd_io__fill'],
		   ['GF_NI_IN_C', 'gf180mcu_fd_io__in_c'],
		   ['GF_NI_IN_S', 'gf180mcu_fd_io__in_s']]

    deletions = ['GF018hv5v_mcu_sc7_udp']

    for line in flines:
        fixedline = line

        # Run each potential substitution on every line.  This is insanely inefficient,
        # but only needs to be done once.

        for conversion in conversions:
            fromtext = conversion[0]
            totext = conversion[1]
            fixedline = re.sub(fromtext, totext, fixedline)

        deleted = False
        for deletion in deletions:
            if deletion in fixedline:
                deleted = True

        if not deleted:
            fixedlines.append(fixedline)
            if fixedline != line:
                modified = True
        else:
            modified = True

    # Write output
    if outname == None:
        for i in fixedlines:
            print(i)
    else:
        # If the output is a symbolic link but no modifications have been made,
        # then leave it alone.  If it was modified, then remove the symbolic
        # link before writing.
        if os.path.islink(outname):
            if not modified:
                return 0
            else:
                os.unlink(outname)
        try:
            with open(outname, 'w') as outFile:
                for i in fixedlines:
                    print(i, file=outFile)
        except:
            print('rename.py: failed to open ' + outname + ' for writing.', file=sys.stderr)
            return 1


if __name__ == '__main__':

    # This script expects to get one or two arguments.  One argument is
    # mandatory and is the input file.  The other argument is optional and
    # is the output file.  The output file and input file may be the same
    # name, in which case the original input is overwritten.

    options = []
    arguments = []
    for item in sys.argv[1:]:
        if item.find('-', 0) == 0:
            options.append(item[1:])
        else:
            arguments.append(item)

    if len(arguments) > 0:
        infilename = arguments[0]

    if len(arguments) > 1:
        outfilename = arguments[1]
    else:
        outfilename = None

    result = filter(infilename, outfilename)
    sys.exit(result)
