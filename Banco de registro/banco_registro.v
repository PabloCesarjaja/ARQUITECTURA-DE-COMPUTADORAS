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
		banco_reg [0] = 8'd90;
		banco_reg [1] = 8'd80;
		banco_reg [2] = 8'd70;
		banco_reg [3] = 8'd60;
		banco_reg [4] = 8'd50;
		banco_reg [5] = 8'd40;
		banco_reg [6] = 8'd30;
		banco_reg [7] = 8'd20;
		banco_reg [8] = 8'd10;
		banco_reg [9] = 8'd100;
		banco_reg [10] = 8'd101;
		banco_reg [11] = 8'd100;
		banco_reg [12] = 8'd99;
		banco_reg [13] = 8'd98;
		banco_reg [14] = 8'd97;
		banco_reg [15] = 8'd96;
		banco_reg [16] = 8'd95;
		banco_reg [17] = 8'd94;
		banco_reg [18] = 8'd93;
		banco_reg [19] = 8'd92;
		banco_reg [20] = 8'd91;
		
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