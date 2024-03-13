module decypher2(
    input [7:0] num,
    output [2:0] res
);  

    wire a[7:0];

    assign a[7] = num[7];
    assign a[6] = num[6] & ~num[7];
    assign a[5] = num[5] & ~num[6] & ~num[7];
    assign a[4] = num[4] & ~num[5] & ~num[6] & ~num[7];
    assign a[3] = num[3] & ~num[4] & ~num[5] & ~num[6] & ~num[7];
    assign a[2] = num[2] & ~num[3] & ~num[4] & ~num[5] & ~num[6] & ~num[7];
    assign a[1] = num[1] & ~num[2] & ~num[3] & ~num[4] & ~num[5] & ~num[6] & ~num[7];
    assign a[0] = num[0] & ~num[1] & ~num[2] & ~num[3] & ~num[4] & ~num[5] & ~num[6] & ~num[7];
    assign res = 	{3{a[0]}} & 3'd0 |
			{3{a[1]}} & 3'd1 |
			{3{a[2]}} & 3'd2 |
			{3{a[3]}} & 3'd3 |
			{3{a[4]}} & 3'd4 |
			{3{a[5]}} & 3'd5 |
			{3{a[6]}} & 3'd6 |
			{3{a[7]}} & 3'd7 ; 
endmodule