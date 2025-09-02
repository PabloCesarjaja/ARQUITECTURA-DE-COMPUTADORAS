//1
module Pre_ALU (input [3:0]A, input [3:0]B, input Sel, output reg [3:0]C);
//2
//NA
//3 Assign, Bloques secuenciales, instancias

always @ (A) 
begin
	case (Sel) //No usa Begin, pero si lleva endcase
	1'b 0: C = A + B;
	1'b 1: C = A & B;
	endcase
end
endmodule