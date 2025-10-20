
module MemInstrucciones(
	input [31:0]Dir,
	output reg[31:0]InsActual
	);

reg [7:0] MI [0:255];
initial begin
	$readmemb ("instrucciones.txt", MI);
end

always @*
begin
	InsActual = {MI[Dir], MI[Dir + 1], MI[Dir + 2], MI[Dir + 3]};
end

endmodule