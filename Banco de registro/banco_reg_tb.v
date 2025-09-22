`timescale 1ns/1ns

module banco_reg_tb;

	reg [4:0] RR1_tb;
	reg [4:0] RR2_tb;
	reg [4:0] WriteReg_tb;
	reg [31:0] Writedata_tb;
	reg Regwrite_tb;
	wire [31:0] RD1_tb;
	wire [31:0] RD2_tb;
	
banco_reg DUV (
	.RR1(RR1_tb),
	.RR2(RR2_tb),
	.WriteReg(WriteReg_tb),
	.Writedata(Writedata_tb),
	.Regwrite(Regwrite_tb),
	.RD1(RD1_tb),
	.RD2(RD2_tb));
	
initial
begin
	
	//inicializar todo en 0
	RR1_tb = 0;
	RR2_tb = 0;
	WriteReg_tb = 0; //aqui se indica en que direccion se va a escribir
	Writedata_tb = 0;//aqui se indica que es lo que se va a escribir
	Regwrite_tb = 0;//este es el if, si se pone 1 entra en el if y escribe
	#100;
	
	//leer lo que hay en la posicion 9 y 4
	RR1_tb = 9;
	RR2_tb = 4;
	WriteReg_tb = 0; 
	Writedata_tb = 0;
	Regwrite_tb = 0;
	#100;
	
	//leer lo que hay en la posicion 0 y 1 y escribir 200 en la posicion 0
	RR1_tb = 0;
	RR2_tb = 1;
	WriteReg_tb = 0; 
	Writedata_tb = 200;
	Regwrite_tb = 1;
	#100;
	
	//leer la posicion 0 y la 8 nada mas para ver si se cambio
	RR1_tb = 0;
	RR2_tb = 8;
	WriteReg_tb = 0; 
	Writedata_tb = 0;
	Regwrite_tb = 0;
	#100;
	
	//leer la posicion 16 y 17
	RR1_tb = 16;
	RR2_tb = 17;
	WriteReg_tb = 0; 
	Writedata_tb = 0;
	Regwrite_tb = 0;
	#100;
	
	
$stop;
end
endmodule