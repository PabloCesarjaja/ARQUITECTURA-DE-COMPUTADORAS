module burrito(
	input [17:0]instruccion
	);

wire [31:0]C1,C2,C3;

ALU tortilla (
	.A(C1),
	.B(C2),
	.C(C3),
	.Sel(instruccion[2:0])
	);

banco_reg Relleno(
	.RR1(instruccion[17:13]),
	.RR2(instruccion[12:8]),
	.WriteReg(instruccion[7:3]),
	.Writedata(C3),
	.Regwrite(1),
	.RD1(C1),
	.RD2(C2)
	);



endmodule