module burrito(
	input [4:0]Dir1,
	input [4:0]Dir2,
	input [4:0]DirEscritura,
	input [2:0]Select
	);

wire [31:0]C1,C2,C3;

ALU tortilla (
	.A(C1),
	.B(C2),
	.C(C3),
	.Sel(Select)
	);

banco_reg Relleno(
	.RR1(Dir1),
	.RR2(Dir2),
	.WriteReg(DirEscritura),
	.Writedata(C3),
	.Regwrite(1),
	.RD1(C1),
	.RD2(C2)
	);



endmodule