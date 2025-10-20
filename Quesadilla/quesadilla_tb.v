`timescale 1ns/1ns
module quesadilla_tb();

reg clk_tb;
wire [31:0] InstQ_tb;

quesadilla DUV (.clk(clk_tb), .InstQ(InstQ_tb));

initial begin
	clk_tb = 0; //initialize clock to 0
end

//always clk_tb = ~clk_tb;#50
always # (100 / 2) clk_tb = ~clk_tb;

initial
begin
	#350;
	$stop;
end

endmodule