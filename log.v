module log(
	input [7:0] number,
	output [2:0] res
);
	assign res = 	{3{number[0]}} & 3'd0 |
			{3{number[1]}} & 3'd1 |
			{3{number[2]}} & 3'd2 |
			{3{number[3]}} & 3'd3 |
			{3{number[4]}} & 3'd4 |
			{3{number[5]}} & 3'd5 |
			{3{number[6]}} & 3'd6 |
			{3{number[7]}} & 3'd7 ; 
endmodule