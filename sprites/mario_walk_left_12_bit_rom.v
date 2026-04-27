module mario_walk_left_rom
	(
		input wire clk,
		input wire [3:0] row,
		input wire [3:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [3:0] row_reg;
	reg [3:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00000110) && ({row_reg, col_reg}<8'b00001011)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00001011) && ({row_reg, col_reg}<8'b00010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00010100) && ({row_reg, col_reg}<8'b00011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00011100) && ({row_reg, col_reg}<8'b00100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00100110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00101000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b00101001) && ({row_reg, col_reg}<8'b00101100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b00101100) && ({row_reg, col_reg}<8'b00110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00110100) && ({row_reg, col_reg}<8'b00110111)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00111000) && ({row_reg, col_reg}<8'b00111010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00111010)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00111011)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00111100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b00111101) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01000011) && ({row_reg, col_reg}<8'b01000110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b01000110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01000111) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01001001) && ({row_reg, col_reg}<8'b01001011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b01001011)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b01001100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b01001101) && ({row_reg, col_reg}<8'b01010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01010100) && ({row_reg, col_reg}<8'b01011000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01011000) && ({row_reg, col_reg}<8'b01011011)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01011011) && ({row_reg, col_reg}<8'b01011101)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b01011101) && ({row_reg, col_reg}<8'b01100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01100110) && ({row_reg, col_reg}<8'b01101011)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b01101011) && ({row_reg, col_reg}<8'b01110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01110101) && ({row_reg, col_reg}<8'b01110111)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01110111)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b01111000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01111001)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b01111010) && ({row_reg, col_reg}<8'b01111100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b01111100) && ({row_reg, col_reg}<8'b10000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10000011)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b10000100) && ({row_reg, col_reg}<8'b10000111)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10000111)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10001000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10001001)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10001010) && ({row_reg, col_reg}<8'b10001101)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b10001101) && ({row_reg, col_reg}<8'b10010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10010010) && ({row_reg, col_reg}<8'b10010101)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b10010101) && ({row_reg, col_reg}<8'b10010111)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10010111)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}==8'b10011000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10011001)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=8'b10011010) && ({row_reg, col_reg}<8'b10011110)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b10011110) && ({row_reg, col_reg}<8'b10100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10100011) && ({row_reg, col_reg}<8'b10100101)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b10100101)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10100110) && ({row_reg, col_reg}<8'b10101011)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10101011)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10101100) && ({row_reg, col_reg}<8'b10101110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10101110) && ({row_reg, col_reg}<8'b10110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10110110) && ({row_reg, col_reg}<8'b10111011)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10111011) && ({row_reg, col_reg}<8'b10111110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10111110) && ({row_reg, col_reg}<8'b11000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11000101) && ({row_reg, col_reg}<8'b11001011)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b11001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11001100) && ({row_reg, col_reg}<8'b11001110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b11001110) && ({row_reg, col_reg}<8'b11010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11010101) && ({row_reg, col_reg}<8'b11010111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b11010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11011000) && ({row_reg, col_reg}<8'b11011011)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=8'b11011011) && ({row_reg, col_reg}<8'b11100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11100100) && ({row_reg, col_reg}<8'b11100111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b11100111) && ({row_reg, col_reg}<8'b11101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11101001) && ({row_reg, col_reg}<8'b11101011)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11101011) && ({row_reg, col_reg}<8'b11111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11111000) && ({row_reg, col_reg}<8'b11111011)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11111011) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule