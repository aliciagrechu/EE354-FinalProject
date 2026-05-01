module heart_rom
	(
		input wire clk,
		input wire [4:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [4:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin






		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011001000) && ({row_reg, col_reg}<10'b0011001111)) color_data = 12'b101000110011;
		if(({row_reg, col_reg}>=10'b0011001111) && ({row_reg, col_reg}<10'b0011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011010001) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0011011000) && ({row_reg, col_reg}<10'b0011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011101000) && ({row_reg, col_reg}<10'b0011101111)) color_data = 12'b101000110011;
		if(({row_reg, col_reg}>=10'b0011101111) && ({row_reg, col_reg}<10'b0011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011110001) && ({row_reg, col_reg}<10'b0011111000)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0011111000) && ({row_reg, col_reg}<10'b0100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100000110) && ({row_reg, col_reg}<10'b0100001010)) color_data = 12'b101000110011;
		if(({row_reg, col_reg}>=10'b0100001010) && ({row_reg, col_reg}<10'b0100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100001100) && ({row_reg, col_reg}<10'b0100011010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0100011010) && ({row_reg, col_reg}<10'b0100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101010)) color_data = 12'b101000110011;
		if(({row_reg, col_reg}>=10'b0100101010) && ({row_reg, col_reg}<10'b0100101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0100101100) && ({row_reg, col_reg}<10'b0100111010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0100111010) && ({row_reg, col_reg}<10'b0101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101000110) && ({row_reg, col_reg}<10'b0101001000)) color_data = 12'b101000110011;
		if(({row_reg, col_reg}>=10'b0101001000) && ({row_reg, col_reg}<10'b0101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101001010) && ({row_reg, col_reg}<10'b0101011010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0101011010) && ({row_reg, col_reg}<10'b0101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101100110) && ({row_reg, col_reg}<10'b0101101000)) color_data = 12'b101000110011;
		if(({row_reg, col_reg}>=10'b0101101000) && ({row_reg, col_reg}<10'b0101101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=10'b0101101010) && ({row_reg, col_reg}<10'b0101111010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0101111010) && ({row_reg, col_reg}<10'b0110000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110000110) && ({row_reg, col_reg}<10'b0110011010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0110011010) && ({row_reg, col_reg}<10'b0110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110100110) && ({row_reg, col_reg}<10'b0110111010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0110111010) && ({row_reg, col_reg}<10'b0111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111000110) && ({row_reg, col_reg}<10'b0111011010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0111011010) && ({row_reg, col_reg}<10'b0111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111100110) && ({row_reg, col_reg}<10'b0111111010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b0111111010) && ({row_reg, col_reg}<10'b1000001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000001000) && ({row_reg, col_reg}<10'b1000011000)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1000011000) && ({row_reg, col_reg}<10'b1000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000101000) && ({row_reg, col_reg}<10'b1000111000)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1000111000) && ({row_reg, col_reg}<10'b1001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001001010) && ({row_reg, col_reg}<10'b1001010110)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1001010110) && ({row_reg, col_reg}<10'b1001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001101010) && ({row_reg, col_reg}<10'b1001110110)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1001110110) && ({row_reg, col_reg}<10'b1010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010001100) && ({row_reg, col_reg}<10'b1010010100)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1010010100) && ({row_reg, col_reg}<10'b1010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010101100) && ({row_reg, col_reg}<10'b1010110100)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1010110100) && ({row_reg, col_reg}<10'b1011001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011001110) && ({row_reg, col_reg}<10'b1011010010)) color_data = 12'b101000110011;

		if(({row_reg, col_reg}>=10'b1011010010) && ({row_reg, col_reg}<10'b1011101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011101110) && ({row_reg, col_reg}<10'b1011110010)) color_data = 12'b101000110011;









		if(({row_reg, col_reg}>=10'b1011110010) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b000000000000;
	end
endmodule