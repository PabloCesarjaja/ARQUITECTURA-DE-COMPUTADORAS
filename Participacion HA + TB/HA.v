module _and (
			input A,
			input B,
			output S,
			output AS
);

assign AS = A&B;
assign S = A^B;


endmodule
