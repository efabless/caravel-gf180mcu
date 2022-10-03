`default_nettype none
/*
 *  SPDX-FileCopyrightText: 2017  Clifford Wolf, 2018  Tim Edwards
 *
 *  StriVe - A full example SoC using PicoRV32 in SkyWater s8
 *
 *  Copyright (C) 2017  Clifford Wolf <clifford@clifford.at>
 *  Copyright (C) 2018  Tim Edwards <tim@efabless.com>
 *
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *  SPDX-License-Identifier: ISC
 */

`timescale 1 ns / 1 ps



module uart_tb;
	reg clock;
	reg RSTB;
	reg power1;

	wire gpio;
    wire [15:0] checkbits;
	wire [37:0] mprj_io;
	wire flash_csb;
	wire flash_clk;
	wire flash_io0;
	wire flash_io1;
	wire uart_tx;
	wire uart_loopback;
	wire SDO;

	assign checkbits = mprj_io[31:16];
	assign uart_tx = mprj_io[6];

	always #12.5 clock <= (clock === 1'b0);

	initial begin
		clock = 0;
	end
	
	`ifdef ENABLE_SDF
		initial begin
			$sdf_annotate("../../../../sdf/DFFRAM.sdf", uut.soc.DFFRAM_0 );
			$sdf_annotate("../../../../sdf/mgmt_core.sdf", uut.soc.core);
			$sdf_annotate("../../../../sdf/mgmt_core_wrapper.sdf", uut.soc);
		end
	`endif 

	initial begin
		$dumpfile("uart.vcd");
		$dumpvars(0, uart_tb);

		$display("Wait for UART o/p");
		repeat (450) begin
			repeat (1000) @(posedge clock);
			// Diagnostic. . . interrupts output pattern.
		end
        $display("%c[1;31m",27);
		`ifdef GL
			$display ("Monitor: Timeout, Test UART (GL) Failed");
		`else
			$display ("Monitor: Timeout, Test UART (RTL) Failed");
		`endif
		$display("%c[0m",27);
		$finish;
	end

	initial begin
		RSTB <= 1'b0;
		#1000;
		RSTB <= 1'b1;	    // Release reset
		#2000;
	end

	initial begin		// Power-up sequence
		power1 <= 1'b0;
		#200;
		power1 <= 1'b1;
	end

	always @(checkbits) begin
		if(checkbits == 16'hA000) begin
			$display("UART Test started");
		end
		else if(checkbits == 16'hAB00) begin
			`ifdef GL
				$display("UART Test (GL) passed");
			`else
				$display("UART Test (RTL) passed");
			`endif
			$finish;
		end
	end

	wire VDD5V0;
	wire VSS;

	assign VDD5V0 = power1;
	assign VSS = 1'b0;
	
	assign mprj_io[3] = 1'b1;  // Force CSB high.
	assign mprj_io[0] = 1'b0;  // Disable debug mode

	caravel uut (
		.VDD	  (VDD5V0),
		.VSS	  (VSS),
		.clock	  (clock),
		.gpio     (gpio),
		.mprj_io  (mprj_io),
		.flash_csb(flash_csb),
		.flash_clk(flash_clk),
		.flash_io0(flash_io0),
		.flash_io1(flash_io1),
		.resetb	  (RSTB)
	);

	spiflash #(
		.FILENAME("uart.hex")
	) spiflash (
		.csb(flash_csb),
		.clk(flash_clk),
		.io0(flash_io0),
		.io1(flash_io1),
		.io2(),			// not used
		.io3()			// not used
	);

	// Testbench UART
	tbuart tbuart (
		.ser_rx(uart_tx)
	);
		
endmodule
`default_nettype wire
