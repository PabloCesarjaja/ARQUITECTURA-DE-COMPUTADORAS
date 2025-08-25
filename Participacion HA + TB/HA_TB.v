`timescale 1ns/1ns

module _and_TB();

//2
reg A_tb, B_tb;
wire S_tb, AS_tb;

//3

_and DUV (.A(A_tb), .B(B_tb), .S(S_tb), .AS(AS_tb));

//initial sirve para comenzar a validar
initial
begin
A_tb = 0;
B_tb = 0;
#100;
A_tb = 1;
B_tb = 0;
#100;
A_tb = 0;
B_tb = 1;
#100;
A_tb = 1;
B_tb = 1;
#100;
$stop;
end


endmodule
