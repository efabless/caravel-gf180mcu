How to run
==========

```
    export PDK_ROOT=<gf180mcu pdk path>
    export PDK=gf180mcuC
```

From caravel root you can run the verification using `make verify-<testbench_name>-rtl/gl`

Tests
=====

Test | rtl status | gl status
---- | ---------- | ---------
gpio | pass | pass
gpio_mgmt | pass | pass
hkspi | pass | pass
hkspi_power | N/A | N/A
irq | TBD | TBD
mem | pass | pass
mprj_bitbang | pass | pass
mprj_ctrl | N/A | N/A
pass_thru | pass | pass
perf | TBD | TBD
pll | pass | N/A
qspi | N/A | N/A
spi_master | pass | pass
sram_exec | pass | pass
sram_ro | N/A | N/A
storage | N/A | N/A
sysctrl | pass | pass
timer | N/A | N/A
timer2 | N/A | N/A
uart | pass | pass
user_pass_thru | pass | pass
