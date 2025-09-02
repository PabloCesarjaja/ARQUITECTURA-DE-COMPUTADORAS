`timescale 1ns/1ns

module Pre_ALU_TB();

//2
reg [3:0]A_TB; 
reg [3:0]B_TB;
reg [3:0]Sel_TB;
wire C_TB;

//3

Pre_ALU DUV ( .A(A_TB), .B(B_TB), .Sel(Sel_TB), .C(C_TB));

initial
begin
//Primero todo en ceros
A_TB = 4'b 0000;
B_TB = 4'b 0000;
Sel_TB = 1'b 0;
#100;

//Una suma 3 y 2
A_TB = 4'b 0011;
B_TB = 4'b 0010;
Sel_TB = 1'b 0;
#100;

//AND con 3 y 2
A_TB = 4'b 0011;
B_TB = 4'b 0010;
Sel_TB = 1'b 1;
#100;

//Otra suma con 8 y 2
A_TB = 4'b 1000;
B_TB = 4'b 0010;
Sel_TB = 1'b 0;
#100;

//AND con 8 y 2
A_TB = 4'b 1000;
B_TB = 4'b 0010;
Sel_TB = 1'b 1;
#100;
$stop;
end

endmodule