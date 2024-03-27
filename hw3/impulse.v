module impulse5(
   input wire clk, 
   input wire reset,
   output reg impulse
);
reg[2:0] count;

always @(posedge clk)
begin
	if (reset)
	begin
		count <= 1'd0;
		impulse <= 1'd0;
	end
	else
		begin
		if (count == 3'h5)
			begin 
			count <= 3'h0;
			impulse <= 1'h0;
			end
		else
			begin
				count <= count + 3'h1;
				impulse <= 1'h0;
			end
		end		
end

assign impulse = (count == 3'h4);
endmodule