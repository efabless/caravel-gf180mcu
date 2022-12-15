# Caravel Signoff

## Signoff Results 
- Summary of the report of timing and physical verification signoff can be found [here](./signoff.rpt)
- LVS: the full report could be found [here](https://github.com/efabless/caravel-gf180mcu/tree/caravel_signoff/signoff/caravel/standalone_pvr/report.lvs)
- DRC: the total number of violations could be found [here](./standalone_pvr/summary.drc) and the error database could be found [here](https://github.com/efabless/caravel-gf180mcu/tree/caravel_signoff/signoff/caravel/standalone_pvr/results_db.drc) 
- STA: 
    - Generated logs could be found [here](https://github.com/efabless/caravel-gf180mcu/tree/caravel_signoff/signoff/caravel/primetime/logs/). 
    - Generated reports could be found [here](https://github.com/efabless/caravel-gf180mcu/tree/caravel_signoff/signoff/caravel/primetime/reports/). 
    - For a summary of the results of each corner, check `*global.rpt` and `*all_viol.rpt`. The detailed timing paths and path groups could be found in the archive of each corner. 
    - Sheet of the top-level results could be found [here](https://docs.google.com/spreadsheets/d/1IVJhi-dBSr-ng3kgjkLdgRDog8D0pvIXslRosr-H-Cs/edit#gid=212089739)
- Antenna: the summary could be found [here](https://github.com/efabless/caravel-gf180mcu/tree/caravel_signoff/signoff/caravel/standalone_pvr/summary.drc) and the ratio files could be found [here](https://github.com/efabless/caravel-gf180mcu/tree/caravel_signoff/signoff/caravel/standalone_pvr/antenna_ratios)
- Top-level wire length report could be found [here](../caravel_core/openlane-signoff/20-wire_lengths.csv)

## Signoff STA Constraints
Clock period: `30ns` (`33.3MHz`)

