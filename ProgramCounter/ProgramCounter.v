module ProgramCounter(
	input					clk_i,
	input					rst_ni,
	input		[31:0]	pc,
	output	[31:0]	pc_next
);

always @(posedge clk_i, negedge rst_ni)
	begin
		if (!rst_ni)
			pc = 32'b0;			//Si reset, reiniciar el contador de programa (PC) 
		else
			pc = pc_next;			//De lo contrario, aumentar el valor de contador de programa (PC) 
	end
endmodule	