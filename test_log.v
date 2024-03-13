`include "log.v"

module top();

wire [7:0] num_test1 = 8'b00100000;
wire [7:0] num_test2 = 8'b00001000;

wire [2:0] result1;
wire [2:0] result2;


wire [2:0] check1 = 5;
wire [2:0] check2 = 3;


log
test1_log
(
	.number	(num_test1),
	.res	(result1)
);

log
test2_log
(
	.number	(num_test2),
	.res	(result2)
);



endmodule