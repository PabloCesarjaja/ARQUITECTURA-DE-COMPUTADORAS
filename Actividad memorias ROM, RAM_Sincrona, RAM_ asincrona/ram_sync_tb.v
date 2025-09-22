`timescale 1ns/1ns

module ram_sync_tb;

	reg [7:0] direccion_tb;
	reg [7:0] Dato_E_tb;
	reg EN_tb;
	reg clk_tb;
	wire [7:0] dato_s_tb;
	
ram_sync DUV (
	.direccion(direccion_tb), 
	.Dato_E(Dato_E_tb), 
	.EN(EN_tb), 
	.dato_s(dato_s_tb),
	.clk(clk_tb));

initial
begin
	
	//inicializar todo en 0
	direccion_tb = 8'd 0;
	EN_tb = 1'd 0;
	Dato_E_tb = 8'd 0;
	clk_tb = 0;
	#100;
	
	//leer la direccion 9
	direccion_tb = 8'd 9;
	EN_tb = 1'd 0;
	Dato_E_tb = 8'd 0;
	clk_tb = 1;
	#100;
	
	clk_tb = 0;
	#100
	
	//escribir en la direccion 9
	direccion_tb = 8'd 9;
	EN_tb = 1'd 1;
	Dato_E_tb = 8'd 120; 
	clk_tb = 1;
	#100;
	
	clk_tb = 0;
	#100
	
	//leer de nuevo la direccion 9 para ver si cambio
	direccion_tb = 8'd 9;
	EN_tb = 1'd 0;
	Dato_E_tb = 8'd 0;
	clk_tb = 1;
	#100;
	
	clk_tb = 0;
	#100
	
	//leer la direccion 5
	direccion_tb = 8'd 5;
	EN_tb = 1'd 0;
	Dato_E_tb = 8'd 0; 
	clk_tb = 1;
	#100;
	
	clk_tb = 0;
	#100
	
$stop;
end

endmodule