module mario_walk_right_rom
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
		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00000101) && ({row_reg, col_reg}<8'b00001010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00001010) && ({row_reg, col_reg}<8'b00010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00010100) && ({row_reg, col_reg}<8'b00011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00011100) && ({row_reg, col_reg}<8'b00100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00100100) && ({row_reg, col_reg}<8'b00100111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00100111)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00101001)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b00101010) && ({row_reg, col_reg}<8'b00110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00110100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00110101)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b00110110) && ({row_reg, col_reg}<8'b00111000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00111001) && ({row_reg, col_reg}<8'b00111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b00111100) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01000011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b01000100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01000101) && ({row_reg, col_reg}<8'b01000111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01000111) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b01001001)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01001010) && ({row_reg, col_reg}<8'b01001101)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b01001101) && ({row_reg, col_reg}<8'b01010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01010011) && ({row_reg, col_reg}<8'b01010101)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01010101) && ({row_reg, col_reg}<8'b01011000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01011000) && ({row_reg, col_reg}<8'b01011100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b01011100) && ({row_reg, col_reg}<8'b01100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01100101) && ({row_reg, col_reg}<8'b01101010)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b01101010) && ({row_reg, col_reg}<8'b01110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01110100) && ({row_reg, col_reg}<8'b01110110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01110110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b01110111)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01111000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b01111001) && ({row_reg, col_reg}<8'b01111011)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b01111011) && ({row_reg, col_reg}<8'b10000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10000011) && ({row_reg, col_reg}<8'b10000110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10000110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10000111)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10001000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10001001) && ({row_reg, col_reg}<8'b10001100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10001100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10001101) && ({row_reg, col_reg}<8'b10010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10010010) && ({row_reg, col_reg}<8'b10010110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10010110)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}==8'b10010111)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10011000)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=8'b10011001) && ({row_reg, col_reg}<8'b10011011)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10011011) && ({row_reg, col_reg}<8'b10011110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10011110) && ({row_reg, col_reg}<8'b10100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10100010) && ({row_reg, col_reg}<8'b10100100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b10100100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10100101) && ({row_reg, col_reg}<8'b10101010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10101010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10101011) && ({row_reg, col_reg}<8'b10101101)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10101101) && ({row_reg, col_reg}<8'b10110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10110010) && ({row_reg, col_reg}<8'b10110101)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b10110101) && ({row_reg, col_reg}<8'b10111010)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=8'b10111010) && ({row_reg, col_reg}<8'b11000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11000010) && ({row_reg, col_reg}<8'b11000100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b11000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11000101) && ({row_reg, col_reg}<8'b11001011)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=8'b11001011) && ({row_reg, col_reg}<8'b11010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11010101) && ({row_reg, col_reg}<8'b11011000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b11011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11011001) && ({row_reg, col_reg}<8'b11011011)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11011011) && ({row_reg, col_reg}<8'b11100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11100101) && ({row_reg, col_reg}<8'b11100111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b11100111) && ({row_reg, col_reg}<8'b11101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11101001) && ({row_reg, col_reg}<8'b11101100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11101100) && ({row_reg, col_reg}<8'b11110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11110101) && ({row_reg, col_reg}<8'b11111000)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11111000) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule