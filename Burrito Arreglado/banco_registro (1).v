module banco_reg(RR1, RR2, WriteReg, Writedata, Regwrite, RD1, RD2);

	input [4:0] RR1;
	input [4:0] RR2;
	input [4:0] WriteReg;
	input [31:0] Writedata;
	input Regwrite;
	output reg [31:0] RD1;
	output reg [31:0] RD2;

	reg [31:0] banco_reg [0:31]; 

	initial
	begin
	$readmemb ("Data.txt", banco_reg);
	end 


always @*
	begin
	
	//Siempre leer
	RD1 = banco_reg[RR1];
	RD2 = banco_reg[RR2];
	
		//escribir cuando regwrite sea 1
		if(Regwrite)
		begin//escribir, 
			banco_reg[WriteReg] = Writedata;
		end
		
		
end
	

endmodule