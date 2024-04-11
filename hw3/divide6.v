module impulse6(
   	input clk,
   	input reset,
	output clk_div6
);  

always @(posedge clk)
begin
	if (reset) begin
		counter <= 3'h0;
	end
	else begin
	if (counter == 3'h5) begin
		counter <= 3'h0;
	end
	else begin
		counter <= counter + 1'd1;
	end
end
end
assign clk_div6 = (counter < 3'h3);
endmodule
