`timescale 1ns/1ns
module burrito_TB();

reg [17:0] instruccion;

/*
initial
begin
	$readmemb("Data.txt", instruccion);
end
*/
burrito DUV(
	.Dir1(instruccion[17:13]),
	.Dir2(instruccion[12:8]),
	.DirEscritura(instruccion[7:3]),
	.Select(instruccion[2:0])
	);

initial begin
	#100
	instruccion = 14'b00011_00100_00101_000;
	#100; 
	$stop;
end


endmodule