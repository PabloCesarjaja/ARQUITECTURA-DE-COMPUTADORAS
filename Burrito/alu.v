//1
module ALU (input [3:0]A, 
	input [3:0]B, 
	input [2:0]Sel, 
	output reg [3:0]C
	);
//2
//NA
//3 Assign, Bloques secuenciales, instancias

always @ (A) 
begin
	case (Sel) //No usa Begin, pero si lleva endcase
	3'b 000: C = A + B; //suma
	3'b 001: C = A - B; //resta
	3'b 010: C = A & B; //and
	3'b 011: C = A | B; //or
	3'b 100: C = A ^ B; //xor
	3'b 101: C = A >> B;
	3'b 110: C = A << B;
	endcase
		
			
end
endmodule
