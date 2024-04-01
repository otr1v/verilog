module impulse(
   input wire clk, 
   input wire reset,
   output wire impulse
);
reg[2:0] count;
reg imp;
always @(posedge clk)
begin
	if (reset)
	begin
		count <= 3'd0;
		imp <= 1'd0;
	end
	else
		begin
		if (count == 3'h4)
			begin 
			count <= 3'h0;
			imp <= 1'h1;
			end
		else
			begin
				count <= count + 3'h1;
				imp <= 1'h0;
			end
		end		
end

assign impulse = imp;
endmodule
