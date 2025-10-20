module quesadilla(
	input clk,
	output [31:0] InstQ
	);
	
	wire [31:0]C1, C2;
	
PC queso (.clk(clk), .next(C1), .Iactual(C1));
MemInstrucciones tortilla (.Dir(C1), .InsActual(InstQ));
sumador salsa (.op1(4), .op2(C1), .resultado(C2));
	
	
endmodule