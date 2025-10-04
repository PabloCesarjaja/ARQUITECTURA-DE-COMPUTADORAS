`timescale 1ns/1ns
module burrito_TB();

reg [17:0] instruccion_TB;

burrito DUV(
	.instruccion(instruccion_TB)
	);

initial begin
	#100
	//SUM $15 $3 $7
	instruccion_TB = 18'b00001_00010_00110_000;
	#100;
	$stop;
end


endmodule