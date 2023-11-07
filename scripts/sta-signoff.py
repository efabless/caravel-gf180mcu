import click
import logging
import os
import subprocess
import glob
import time
import shutil
import re


@click.command(
    help="""
    performs timing signoff flow for Caravel based chips using PrimeTime
    Current supported PDKs: sky130 - gf180mcu
    """
)
@click.option(
    "--design",
    "-d",
    required=True,
    type=str,
    help="design name",
)
@click.option(
    "--root",
    "-r",
    type=click.Path(exists=True, file_okay=False),
    help="design root",
)
@click.option("--debug", is_flag=True)
@click.option(
    "--upw",
    is_flag=True,
    help="Specify to run STA with a non-empty user project wrapper",
)
@click.option(
    "--starcx",
    is_flag=True,
    help="run spef extraction using StarRC (only supported for gf180mcu)",
)
@click.option(
    "--reports",
    is_flag=True,
    help="Specify to generate reports only skipping generating liberties and sdf (for faster runtime)",
)
@click.option(
    "--no_si",
    is_flag=True,
    default=False,
    help="Specify to disable SI analysis",
)
@click.option(
    "--no_map",
    is_flag=True,
    default=False,
    help="Specify to skip generating SPEF mapping script of the design",
)
@click.option(
    "-tag",
    type=str,
    help="Run tag",
)

def main(design, root, starcx, upw, reports, no_si, no_map, tag, debug):
    logging.basicConfig(
        format="%(asctime)s | %(levelname)-7s | %(message)s",
        datefmt="%d-%b-%Y %H:%M:%S"
    )
    logger = logging.getLogger()
    if debug:
        logger.setLevel(logging.DEBUG)
    else:
        logger.setLevel(logging.INFO)
    
    check_env_vars()
    pdk_env = os.getenv("PDK")

    if starcx and "sky130" in pdk_env:
        logging.erro(f"SPEF extraction is available for gf180mcu only")
        starcx = False
    mapping = not no_map
    if mapping:
        os.environ["SPEF_MAPPING"] = "1"
    else: 
        os.environ["SPEF_MAPPING"] = "0"
    si = not no_si
    signoff_dir = os.path.join(root, "signoff")
    
    if tag is None:
        timestr = time.strftime("%Y_%m_%d_%H_%M_%S")
        tag = timestr

    if not os.getenv("CHIP"):
        os.environ["CHIP"] = "caravel"
    if not os.getenv("CHIP_CORE"):
        os.environ["CHIP_CORE"] = "caravel_core"

    if not os.path.exists(f"{signoff_dir}/{design}"):
        os.makedirs(f"{signoff_dir}/{design}")

    SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))

    if starcx:
        if not os.path.exists(f"{signoff_dir}/{design}/StarRC"):
            os.makedirs(f"{signoff_dir}/{design}/StarRC")
        if not os.path.exists(f"{signoff_dir}/{design}/StarRC/{tag}"):
            os.makedirs(f"{signoff_dir}/{design}/StarRC/{tag}")
        spef_log_dir = os.path.join(signoff_dir, f"{design}/StarRC/{tag}/logs")
        if not os.path.exists(f"{spef_log_dir}"):
            os.makedirs(f"{spef_log_dir}")
        spef_p = run_starxt(
            root,
            spef_log_dir,
            signoff_dir,
            design,
            tag,
            SCRIPT_DIR,
        )
        logging.info(f"Running StarRC all corners extraction on {design}")

    if starcx:
        out, err = spef_p.communicate()
        spef_log = open(f"{spef_log_dir}/{design}-error.log", "w")
        if err:
            if "ERROR" in err:
                logging.error(err[err.find("ERROR") :].split(")", 1)[0] + ")")
                spef_log.write(err[err.find("ERROR") :].split(")", 1)[0] + ")")
                spef_log.close()
            else:
                logging.info(f"StarRC spef extraction done")
                os.remove(f"{spef_log_dir}/{design}-error.log")
        save_spefs(f"{signoff_dir}/{design}/StarRC/{tag}")

        if not os.path.exists(f"{signoff_dir}/{design}/primetime"):
            os.makedirs(f"{signoff_dir}/{design}/primetime")
        if not os.path.exists(f"{signoff_dir}/{design}/primetime/{tag}"):
            os.makedirs(f"{signoff_dir}/{design}/primetime/{tag}")
        sta_log_dir = os.path.join(signoff_dir, f"{design}/primetime/{tag}/logs")
        if not os.path.exists(f"{sta_log_dir}"):
            os.makedirs(f"{sta_log_dir}")

        logging.info(f"Running PrimeTime STA all corners on {design}")
        if mapping:
            create_spef_mapping(root, design, SCRIPT_DIR)
        sta_p = run_sta(
            root,
            f"{root}/scripts/pt_libs",
            sta_log_dir,
            signoff_dir,
            design,
            tag,
            upw,
            reports,
            si,
            SCRIPT_DIR,
        )

    else:
        if not os.path.exists(f"{signoff_dir}/{design}/primetime"):
            os.makedirs(f"{signoff_dir}/{design}/primetime")
        if not os.path.exists(f"{signoff_dir}/{design}/primetime/{tag}"):
            os.makedirs(f"{signoff_dir}/{design}/primetime/{tag}")
        sta_log_dir = os.path.join(signoff_dir, f"{design}/primetime/{tag}/logs")
        if not os.path.exists(f"{sta_log_dir}"):
            os.makedirs(f"{sta_log_dir}")

        logging.info(f"Running PrimeTime STA all corners on {design}")
        if mapping:
            create_spef_mapping(root, design, SCRIPT_DIR)
        sta_p = run_sta(
            root,
            f"{root}/scripts/pt_libs",
            sta_log_dir,
            signoff_dir,
            design,
            tag,
            upw,
            reports,
            si,
            SCRIPT_DIR,
        )

    out, err = sta_p.communicate()
    sta_log = open(f"{sta_log_dir}/PT_STA_{design}.log", "w")
    if err:
        logging.error(err)
        sta_log.write(err)
        sta_log.close()
    else:
        os.remove(f"{sta_log_dir}/PT_STA_{design}.log")
        save_latest_run(f"{signoff_dir}/{design}/primetime/{tag}")

    check_errors(signoff_dir, sta_log_dir, design)


def check_env_vars():
    if not os.getenv("PDK_ROOT"):
        logging.error("Please export PDK_ROOT")
        exit(1)
    if not os.getenv("PDK"):
        logging.error("Please export PDK")
        exit(1)
    if not os.getenv("CARAVEL_ROOT"):
        logging.error("Please export CARAVEL_ROOT")
        exit(1)
    if not os.getenv("MCW_ROOT"):
        logging.error("Please export MCW_ROOT")
        exit(1)
    if not os.getenv("UPRJ_ROOT"):
        logging.error("Please export UPRJ_ROOT")
        exit(1)    
    if not os.getenv("TIMING_ROOT"):
        logging.error("Please export TIMING_ROOT")
        exit(1)

def run_sta(root, pt_lib_root, log_dir, signoff_dir, design, tag, upw, rep, si, cwd):
    myenv = os.environ.copy()
    if "sky130" in os.getenv("PDK"):
        if not os.path.exists(f"{pt_lib_root}"):
            subprocess.run(
                [
                    "git",
                    "clone",
                    "git@github.com:efabless/pt_libs.git",
                ],
                cwd=cwd,
                stdout=subprocess.PIPE,
            )
            myenv["PT_LIB_ROOT"] = cwd
        else: 
            myenv["PT_LIB_ROOT"] = pt_lib_root

    sta_cmd = [
        "python3",
        "run_pt_sta.py",
        "-a",
        "-d",
        f"{design}",
        "-o",
        f"{signoff_dir}/{design}/primetime/{tag}",
        "-l",
        f"{log_dir}",
        "-r",
        f"{root}",
    ]
    if rep:
        sta_cmd = sta_cmd + ["-rep"]
    if si:
        sta_cmd = sta_cmd + ["-si"]
    if upw:
        sta_cmd = sta_cmd + ["-upw"]
    p1 = subprocess.Popen(
        sta_cmd,
        cwd=cwd,
        env=myenv,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    return p1


def create_spef_mapping(root, design, SCRIPT_DIR):
    pdk_root = os.getenv("PDK_ROOT")
    timing_root = os.getenv("TIMING_ROOT")
    out_script = f"{SCRIPT_DIR}/{design}.tcl"
    if not os.path.exists(f"{out_script}"):
        cmd = f"python3 {timing_root}/scripts/generate_spef_mapping.py -i {root}/verilog/gl/{design}.v --project-root {root} -o {out_script} --pdk-path {pdk_root}"
        os.system(cmd)
        cmd = f"sed -i -E 's#PROJECT_ROOT#ROOT#g' {root}/scripts/{design}.tcl"
        os.system(cmd)
        cmd = f"sed -i -E 's#::env\(RCX_CORNER\)#{{rc_corner}}#g' {root}/scripts/{design}.tcl"
        os.system(cmd)


def run_starxt(design_root, log_dir, signoff_dir, design, tag, cwd):
    myenv = os.environ.copy()
    if not os.path.exists(f"{cwd}/gf180mcu-tech/"):
        subprocess.run(
            [
                "git",
                "clone",
                "git@github.com:efabless/gf180mcu-tech.git",
            ],
           cwd=cwd,
            stdout=subprocess.PIPE,
        )
    starxt_cmd = [
        "python3",
        "extract_StarRC.py",
        "-a",
        "-d",
        f"{design}",
        "-o",
        f"{signoff_dir}/{design}/StarRC/{tag}",
        "-r",
        f"{design_root}",
        "-l",
        f"{log_dir}",
    ]
    p1 = subprocess.Popen(
        starxt_cmd,
        cwd=cwd,
        env=myenv,
        universal_newlines=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    return p1


def check_errors(signoff_dir, sta_log_dir, design):
    f = open(os.path.join(signoff_dir, f"{design}/signoff.rpt"), "w")
    sta_logs = glob.glob(f"{sta_log_dir}/*sta.log")
    for l in sta_logs:
        with open(l) as rep:
            log_name = l.split("/")[-1]
            log_name = log_name.split(".")[0]
            data = rep.read()
            if "The following spefs are missing:" in data:
                logging.warning(f"Missing spefs. check the log!")
            rep.seek(0)
            lines = rep.readlines()
            if "Passed" in lines[-1]:
                logging.info(f"{log_name} STA:    Passed")
                f.write(f"{log_name} STA:    Passed\n")
            elif "max_transition and max_capacitance" in lines[-1]:
                logging.warning(lines[-1])
                logging.info(
                    f"{log_name} STA:    Passed (except: max_tran & max_cap)"
                )
                f.write(f"{log_name} STA:    Passed (except: max_tran & max_cap)\n")
            elif "max_transition" in lines[-1]:
                logging.warning(lines[-1])
                logging.info(f"{log_name} STA:    Passed (except: max_tran)")
                f.write(f"{log_name} STA:    Passed (except: max_tran)\n")
            elif "max_capacitance" in lines[-1]:
                logging.warning(lines[-1])
                logging.info(f"{log_name} STA:    Passed (except: max_cap)")
                f.write(f"{log_name} STA:    Passed (except: max_cap)\n")
            elif "other violations" in lines[-1]:
                logging.warning(lines[-1])
                logging.info(f"{log_name} STA:    Passed")
                f.write(f"{log_name} STA:    Passed\n")
            else:
                logging.error(lines[-1])
                if "setup" in lines[-1]:
                    f.write(f"{log_name} STA:    Failed (setup)\n")
                    logging.error(f"{log_name} STA:    Failed (setup)")
                elif "hold" in lines[-1]:
                    f.write(f"{log_name} STA:    Failed (hold)\n")
                    logging.error(f"{log_name} STA:    Failed (hold)")
                else:
                    logging.error(f"{log_name} STA:    Failed")
                    f.write(
                        f"{log_name} STA:    Failed ("
                        + lines[-1].split(" failed")[0]
                        + ")\n"
                    )
            for i in range(len(lines)):
                line = lines[i]
                if "Design Worst Slack (Setup)" in line:
                    if "%g" in line:
                        continue
                    else:
                        ws_setup = get_slack(line)
                        ws_hold = get_slack(lines[i + 1])
                        ws_r2r_setup = get_slack(lines[i + 2])
                        ws_r2r_hold = get_slack(lines[i + 3])
                        logging.info(
                            f"{log_name}: Worst Setup Slack: {ws_setup} | Worst Hold Slack {ws_hold}"
                        )
                        logging.info(
                            f"{log_name}: Worst reg2reg Setup Slack: {ws_r2r_setup} | Worst reg2reg Hold Slack {ws_r2r_hold}"
                        )
                        break


def save_latest_run(run_dir):
    dirs = ["lib", "sdf", "reports", "logs"]
    for dir in dirs:
        if os.path.exists(f"{run_dir}/../{dir}"):
            shutil.rmtree(f"{run_dir}/../{dir}")
        shutil.copytree(f"{run_dir}/{dir}", f"{run_dir}/../{dir}")
    cmd = f"sed -i -E 's#original_pin :.*##g' {run_dir}/../lib/*/*.lib"
    os.system(cmd)


def save_spefs(run_dir):
    if os.path.exists(f"{run_dir}/../logs"):
        shutil.rmtree(f"{run_dir}/../logs")
    shutil.copytree(f"{run_dir}/logs", f"{run_dir}/../logs")
    spef_files = glob.glob(f"{run_dir}/*.spef")
    for spef_f in spef_files:
        spef_name = spef_f.split("/")[-1]
        shutil.copyfile(spef_f, f"{run_dir}/../{spef_name}")


def get_slack(line):
    ws = float(
        re.findall(r"[+-]? *(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][+-]?\d+)?", line)[-1].strip()
    )
    return ws


if __name__ == "__main__":
    main()