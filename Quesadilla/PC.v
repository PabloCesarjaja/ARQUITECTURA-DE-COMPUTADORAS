`timescale 1ns/1ns
//Lo que entra sale, cuando clk => posedge
module PC(
	input clk,
	input [31:0] next,
	output reg[31:0]Iactual
	);
	
initial
begin
	Iactual = 32'b0;
	//#5;
end
	

always @(posedge clk)
begin
	Iactual <= next;
end


endmodule