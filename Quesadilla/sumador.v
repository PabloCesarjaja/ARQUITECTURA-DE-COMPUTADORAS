
module sumador(
	input [31:0] op1,
	input [31:0] op2,
	output [31:0] resultado
	);
	
assign resultado = op1+op2;

endmodule