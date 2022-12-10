#!/usr/bin/env python3
# This script runs StarRC extraction for gf180 PDK
# Rev 1 
# 17/11/2022

import argparse
import os
import glob

def run_stxt_all (
    design: str,
    root_dir: str,
    output_dir: str,
    log_dir: str,
):
    rc_corners = ["nom", "max", "min"]
    for rc_corner in rc_corners: 
            run_stxt(args.design, rc_corner, root, output, log)

def run_stxt (
    design: str,
    rc_corner: str,
    root_dir: str,
    output_dir: str,
    log_dir: str,
):
    print (f"StarRC extraction run for design: {design} at RC corner {rc_corner}")
    star_sum, stxt_cmd_file_path = gen_stxt_cmd_file (design, rc_corner, root_dir, output_dir)
    extract (stxt_cmd_file_path)
    create_log (design, rc_corner, log_dir, stxt_cmd_file_path, star_sum)

def extract (
    stxt_cmd_file_path: str,
):
    # StarRC command
    stxt_command = f"source /tools/bashrc_snps; StarXtract {stxt_cmd_file_path}"
    os.system(stxt_command)

def gen_stxt_cmd_file (
    design: str,
    rc_corner: str,
    root_dir: str,
    output_dir: str,
):
    # Enviornment Variables
    check_env_vars()
    PDK_ROOT= os.getenv('PDK_ROOT')
    PDK = os.getenv('PDK')
    SCL = os.getenv('STD_CELL_LIBRARY')
    CARAVEL_ROOT = os.getenv('CARAVEL_ROOT')
    UPRJ_ROOT = os.getenv('UPRJ_ROOT')
    MCW_ROOT = os.getenv('MCW_ROOT')
    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
    
    #Temporary directory to store star directory (must be relative path to run dir)
    star_dir = f"./star_dir_temp"
    try:
        os.makedirs(star_dir)
    except FileExistsError:
        # directory already exists
        pass

    #gf180 techfiles and corner temperatures
    if rc_corner == "nom":
        grd_file = "gf180mcu_1p5m_1tm_9k_sp_smim_OPTB_typ.nxtgrd"
        temp = "25"
    elif rc_corner == "max":
        grd_file = "gf180mcu_1p5m_1tm_9k_sp_smim_OPTB_wst.nxtgrd"
        temp = "125"
    elif rc_corner == "min":
        grd_file = "gf180mcu_1p5m_1tm_9k_sp_smim_OPTB_bst.nxtgrd"
        temp = "-40"
    map_file = "gf180mcu.starxt_map"

    # Create StarRC command file
    stxt_cmd_file_path = f"{SCRIPT_DIR}/star_cmd-{rc_corner}.xtcmd"
    stxt_cmd_file = open(stxt_cmd_file_path,"w")
    stxt_cmd_file.write(f"BLOCK: {design}\n")
    stxt_cmd_file.write(f"TCAD_GRD_FILE: {SCRIPT_DIR}/gf180-tech/{grd_file}\n")
    stxt_cmd_file.write(f"MAPPING_FILE: {SCRIPT_DIR}/gf180-tech/{map_file}\n")
    stxt_cmd_file.write(f"OPERATING_TEMPERATURE: {temp}\n")
    stxt_cmd_file.write(f"NETLIST_FORMAT: SPEF\n")
    stxt_cmd_file.write(f"NETLIST_FILE: {output_dir}/{design}.{rc_corner}.spef\n")

    # must be relative path to run dir
    star_sum = f"{star_dir}/{design}.{rc_corner}.star_sum"
    stxt_cmd_file.write(f"SUMMARY_FILE: {star_sum}\n")

    #lef files required: techlef must be the 1st lef_file then SCL then macros lef
    stxt_cmd_file.write(f"LEF_FILE: {PDK_ROOT}/{PDK}/libs.ref/{SCL}/techlef/{SCL}__{rc_corner}.tlef\n")
    stxt_cmd_file.write(f"LEF_FILE: {PDK_ROOT}/{PDK}/libs.ref/{SCL}/lef/{SCL}.lef\n")
    stxt_cmd_file.write(f"LEF_FILE: {PDK_ROOT}/{PDK}/libs.ref/gf180mcu_fd_io/lef/gf180mcu_fd_io.lef\n")
    stxt_cmd_file.write(f"LEF_FILE: {PDK_ROOT}/{PDK}/libs.ref/gf180mcu_fd_ip_sram/lef/gf180mcu_fd_ip_sram__sram512x8m8wm1.lef\n")
    stxt_cmd_file.write(f"LEF_FILE: {CARAVEL_ROOT}/macros/simple_por/lef/simple_por.lef\n")
    root_dirs = [f'{CARAVEL_ROOT}',f'{MCW_ROOT}', f'{UPRJ_ROOT}']
    for dir in root_dirs:
        lef_files = glob.glob(f"{dir}/lef/*.lef")
        for lef in lef_files:
            stxt_cmd_file.write(f"LEF_FILE: {lef}\n")
    
    stxt_cmd_file.write(f"TOP_DEF_FILE: {root_dir}/def/{design}.def\n")
    stxt_cmd_file.write(f"STAR_DIRECTORY: {star_dir}/{design}.{rc_corner}/\n")
    stxt_cmd_file.write(f"GPD: {SCRIPT_DIR}/" + star_dir.split("/")[-1] + f"/{design}.{rc_corner}.gpd\n")

    # Global commands (are not affected by the corner or design)
    stxt_cmd_file.write(f"TRANSLATE_RETAIN_BULK_LAYERS: YES\n")
    stxt_cmd_file.write(f"IGNORE_CAPACITANCE: NONE\n")
    stxt_cmd_file.write(f"TRANSLATE_RETAIN_BULK_LAYERS: YES\n")
    stxt_cmd_file.write(f"NETLIST_PASSIVE_PARAMS: YES\n")  
    stxt_cmd_file.write(f"EXTRACTION: RC\n")
    stxt_cmd_file.write(f"EXTRACT_VIA_CAPS: YES\n")
    stxt_cmd_file.write(f"COUPLE_TO_GROUND: NO\n")
    stxt_cmd_file.write(f"COUPLING_ABS_THRESHOLD: 1e-19\n")
    stxt_cmd_file.write(f"REDUCTION: NO_EXTRA_LOOPS\n")
    
    stxt_cmd_file.close()
    return star_sum, stxt_cmd_file_path

def create_log (
    design: str,
    rc_corner: str,
    log_dir: str,
    stxt_cmd_file_path: str,
    star_sum: str,
):
    # Create log file for the run
    star_log_path = os.path.join(log_dir, f"{design}-{rc_corner}.log")
    star_log = open(star_log_path, "w")
    star_log.write(f"StarRC extraction run for design: {design} at RC corner {rc_corner}\n\n")
    star_log.write(f"StarRC command file created:\tstar_cmd-{rc_corner}.xtcmd\n\n")
    with open(stxt_cmd_file_path,"r") as f:
        star_log.write(f.read())
    with open(star_sum,"r") as f:
        star_log.write(f.read())
    star_log.close()

# Check the required env variables
def check_env_vars():
    pdk_root = os.getenv('PDK_ROOT')
    pdk = os.getenv('PDK')
    scl = os.getenv('STD_CELL_LIBRARY')
    if pdk_root is None:
        raise FileNotFoundError(
        "Please export PDK_ROOT to the PDKs path"
        )
    if pdk is None:
        raise FileNotFoundError(
        "Please export PDK version"
        )
    if scl is None:
        raise FileNotFoundError(
        "Please export STD_CELL_LIBRARY"
        )
    caravel_root = os.getenv('CARAVEL_ROOT')
    uprj_root = os.getenv('UPRJ_ROOT')
    mcw_root = os.getenv('MCW_ROOT')
    if caravel_root is None:
        raise FileNotFoundError(
        "Please export CARAVEL_ROOT to the Caravel repo path"
        )
    if mcw_root is None:
        raise FileNotFoundError(
        "Please export MCW_ROOT to the Caravel Management SoC Litex repo path"
        )
    if uprj_root is None:
        raise FileNotFoundError(
        "Please export UPRJ_ROOT to the Caravel User Project Wrapper repo path"
        )

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run StarRC extraction for gf180 PDK"
    )
    parser.add_argument(
        "-d",
        "--design",
        help="design name",
        required=True
    )
    parser.add_argument(
        "-o",
        "--output_dir",
        help="output directory",
        required=True
    )
    parser.add_argument(
        "-l",
        "--logs_dir",
        help="log directory",
        required=True
    )
    parser.add_argument(
        "-r",
        "--root_dir",
        help="design root directory",
        required=True
    )
    parser.add_argument(
        "-rc",
        "--rc_corner",
        help="Specify the RC corner for the parasitics (Values are nom, max, or min) <default is nom>",
        nargs="?",
        default="nom"
    )
    parser.add_argument(
        "-a",
        "--all",
        help="Specify to extract the design at all rc corners",
        action='store_true'
    )

    args = parser.parse_args()

    output = os.path.abspath(args.output_dir)
    log = os.path.abspath(args.logs_dir)
    root = os.path.abspath(args.root_dir)

    if root is None:
        raise FileNotFoundError(
        "Design root directory not found"
        )
    try:
        os.makedirs(output)
    except FileExistsError:
        # directory already exists
        pass

    if args.all:
        run_stxt_all (args.design, root, output, log)
    else:
        run_stxt(args.design, args.rc_corner, root, output, log)
