`timescale 1ns/1ns
module testbench();
	reg flick, clk, rst;
	wire [15:0] led;
	
	bound_flasher uut(flick, clk, rst, led);
	
	always begin
		clk = 1;
		#1 clk = 0;
		#1;
	end
	
	initial begin
		#1; rst = 0;
		#1; rst = 1;
		
		$monitor("At %0t : clk = %b, flick = %b, led = %b", $time, clk, flick, led);
		$display("Testcase 1 with normal flow");
		#1; flick = 1;
		#1; flick = 0;
		#130;
		$display("Testcase 2 in slide number 4");
		flick = 1;
		#1;
		flick = 0;
		#44; flick = 1;
		#1; flick = 0;
		#110;
		$display("Testcase 3 with interrupt");
		flick = 1;
		#1;
		flick = 0;
		#44; flick = 1;
		#1; flick = 0;
		#33; flick = 1;
		#1; flick = 0;
		#110;
		$display("Testcase 4 with interrupt at non kickback point");
		flick = 1;
		#1;
		flick = 0;
		#44; flick = 1;
		#1; flick = 0;
		#36; flick = 1;
		#2; flick = 0;
		#110;
		$stop;
	end

	initial begin
  		$recordfile ("waves");
  		$recordvars ("depth=0", testbench);
	end


endmodule
