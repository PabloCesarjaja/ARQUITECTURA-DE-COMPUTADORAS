//1.Definicion del modulo
module ram_sync (direccion, dato_s, clk, Dato_E, EN, dato_s);
	input [7:0] direccion;
	input clk;
	input [7:0]Dato_E;
	input EN;
	output reg [7:0] dato_s;
	
//2.Componentes internos
//Creacion de la RAM

reg [7:0] RAM [0:10]; 

//3.Cuerpo del modulo
initial
	begin
		RAM [0] =8'd90;
		RAM [1] =8'd80;
		RAM [2] =8'd70;
		RAM [3] =8'd60;
		RAM [4] =8'd50;
		RAM [5] =8'd40;
		RAM [6] =8'd30;
		RAM [7] =8'd20;
		RAM [8] =8'd10;
		RAM [9] =8'd100;
		RAM [10] =8'd101;
	end 


always @(posedge clk)//ram async + reloj
begin
		if(EN)
		begin//escribir
			RAM[direccion] = Dato_E;
		end

	else begin //leer
		dato_s = RAM[direccion];
		end
end


endmodule
