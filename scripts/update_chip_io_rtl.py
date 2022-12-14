#!/usr/bin/env python3
# This script txt.writes mprj_pads and filler pads instantiation in chip_io.txt to add in chip_io RTL
# Rev 1 
# 12/12/2022  

import os

CARAVEL_ROOT = os.getenv('CARAVEL_ROOT')
MPRJ_IO_PADS = 38
txt = open(f"{CARAVEL_ROOT}/scripts/chip_io.txt","w")

for i in range (0,MPRJ_IO_PADS):
    txt.write(f"\tgf180mcu_fd_io__bi_t mprj_pads[{i}] (\n")
    txt.write(f"\t\t.DVDD(vdd),\n")
    txt.write(f"\t\t.DVSS(vss),\n")
    txt.write(f"\t\t.VDD(vdd),\n")
    txt.write(f"\t\t.VSS(vss),\n")
    txt.write(f"\t\t.PAD(mprj_io[{i}]),\n")
    txt.write(f"\t\t.CS(mprj_io_schmitt_select[{i}]),\n")
    txt.write(f"\t\t.SL(mprj_io_slew_select[{i}]),\n")
    txt.write(f"\t\t.IE(mprj_io_inen[{i}]),\n")
    txt.write(f"\t\t.OE(mprj_io_outen[{i}]),\n")
    txt.write(f"\t\t.PU(mprj_io_pu_select[{i}]),\n")
    txt.write(f"\t\t.PD(mprj_io_pd_select[{i}]),\n")
    txt.write(f"\t\t.PDRV0(mprj_io_drive_sel[{i*2}]),\n")
    txt.write(f"\t\t.PDRV1(mprj_io_drive_sel[{i*2+1}]),\n")
    txt.write(f"\t\t.A(mprj_io_out[{i}]),\n")
    txt.write(f"\t\t.Y(mprj_io_in[{i}]),\n")
    txt.write(f"\t);\n")


for i in range (0,3):
    txt.write(f"\tgf180mcu_fd_io__fill5 gf180mcu_fd_io__fill5_{i} (\n")
    txt.write(f"\t\t.DVDD(vdd),\n")
    txt.write(f"\t\t.DVSS(vss),\n")
    txt.write(f"\t\t.VDD(vdd),\n")
    txt.write(f"\t\t.VSS(vss),\n")
    txt.write(f"\t);\n")
    
arr_indx = []
with open(f"{CARAVEL_ROOT}/mag/chip_io.mag", "r") as mag:
    for line in mag.readlines():
        if "fill10_" in line:
            if "PDK" in line.split("fill10_")[-1]:
                indx = line.split("fill10_")[-1][0]
            else: 
                indx = line.split("fill10_")[-1][:-1]
            arr_indx.append(indx)

for i in arr_indx:
    txt.write(f"\tgf180mcu_fd_io__fill10 gf180mcu_fd_io__fill10_{i} (\n")
    txt.write(f"\t\t.DVDD(vdd),\n")
    txt.write(f"\t\t.DVSS(vss),\n")
    txt.write(f"\t\t.VDD(vdd),\n")
    txt.write(f"\t\t.VSS(vss),\n")
    txt.write(f"\t);\n")

txt.close()