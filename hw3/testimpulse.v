`include "impulse.v"
module top();

reg tclk = 0;
always #1 tclk = ~tclk;

reg reset = 0;
initial begin
	@(posedge tclk)
	reset <= 1;
	repeat(3) @(negedge tclk);
	reset <= 0;
end

imp
test_impulse
(
	.clk(tclk),
	.reset(reset),
	.impulse(imp)
);
endmodule