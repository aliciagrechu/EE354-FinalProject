module new_background2_sky_nofloor_rom
	(
		input wire clk,
		input wire [8:0] row,
		input wire [9:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [8:0] row_reg;
	reg [9:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin





















		if(({row_reg, col_reg}>=19'b0000000000000000000) && ({row_reg, col_reg}<19'b0000101011001101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000101011001101010) && ({row_reg, col_reg}<19'b0000101011001110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000101011001110010) && ({row_reg, col_reg}<19'b0000101101001101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000101101001101010) && ({row_reg, col_reg}<19'b0000101101001110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000101101001110010) && ({row_reg, col_reg}<19'b0000101111001101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0000101111001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000101111001101010) && ({row_reg, col_reg}<19'b0000101111001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000101111001110010) && ({row_reg, col_reg}<19'b0000101111001110100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000101111001110100) && ({row_reg, col_reg}<19'b0000110001001101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0000110001001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110001001101010) && ({row_reg, col_reg}<19'b0000110001001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000110001001110010) && ({row_reg, col_reg}<19'b0000110001001110100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110001001110100) && ({row_reg, col_reg}<19'b0000110010011100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110010011100110) && ({row_reg, col_reg}<19'b0000110010011101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110010011101110) && ({row_reg, col_reg}<19'b0000110011001100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110011001100101) && ({row_reg, col_reg}<19'b0000110011001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110011001101001) && ({row_reg, col_reg}<19'b0000110011001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000110011001110100) && ({row_reg, col_reg}<19'b0000110011001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110011001110110) && ({row_reg, col_reg}<19'b0000110011001111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110011001111000) && ({row_reg, col_reg}<19'b0000110011001111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110011001111101) && ({row_reg, col_reg}<19'b0000110100011100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110100011100110) && ({row_reg, col_reg}<19'b0000110100011101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110100011101110) && ({row_reg, col_reg}<19'b0000110101001100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110101001100101) && ({row_reg, col_reg}<19'b0000110101001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110101001101001) && ({row_reg, col_reg}<19'b0000110101001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000110101001110100) && ({row_reg, col_reg}<19'b0000110101001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110101001110110) && ({row_reg, col_reg}<19'b0000110101001111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110101001111000) && ({row_reg, col_reg}<19'b0000110101001111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110101001111101) && ({row_reg, col_reg}<19'b0000110110011100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110110011100100) && ({row_reg, col_reg}<19'b0000110110011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110110011100110) && ({row_reg, col_reg}<19'b0000110110011101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000110110011101110) && ({row_reg, col_reg}<19'b0000110110011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110110011110001) && ({row_reg, col_reg}<19'b0000110110100001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110110100001000) && ({row_reg, col_reg}<19'b0000110110100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110110100001111) && ({row_reg, col_reg}<19'b0000110111001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110111001100011) && ({row_reg, col_reg}<19'b0000110111001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110111001100101) && ({row_reg, col_reg}<19'b0000110111001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000110111001110100) && ({row_reg, col_reg}<19'b0000110111001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110111001110110) && ({row_reg, col_reg}<19'b0000110111001111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0000110111001111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000110111001111001) && ({row_reg, col_reg}<19'b0000110111001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000110111001111101) && ({row_reg, col_reg}<19'b0000110111001111111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110111001111111) && ({row_reg, col_reg}<19'b0000111000011100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111000011100100) && ({row_reg, col_reg}<19'b0000111000011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111000011100110) && ({row_reg, col_reg}<19'b0000111000011101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111000011101110) && ({row_reg, col_reg}<19'b0000111000011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111000011110001) && ({row_reg, col_reg}<19'b0000111000100001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111000100001000) && ({row_reg, col_reg}<19'b0000111000100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111000100001111) && ({row_reg, col_reg}<19'b0000111001001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111001001100011) && ({row_reg, col_reg}<19'b0000111001001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111001001100101) && ({row_reg, col_reg}<19'b0000111001001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111001001110100) && ({row_reg, col_reg}<19'b0000111001001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111001001110110) && ({row_reg, col_reg}<19'b0000111001001111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0000111001001111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111001001111001) && ({row_reg, col_reg}<19'b0000111001001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111001001111101) && ({row_reg, col_reg}<19'b0000111001001111111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111001001111111) && ({row_reg, col_reg}<19'b0000111010011100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111010011100010) && ({row_reg, col_reg}<19'b0000111010011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111010011100100) && ({row_reg, col_reg}<19'b0000111010011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111010011110001) && ({row_reg, col_reg}<19'b0000111010011110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111010011110101) && ({row_reg, col_reg}<19'b0000111010100000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111010100000110) && ({row_reg, col_reg}<19'b0000111010100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111010100001000) && ({row_reg, col_reg}<19'b0000111010100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111010100001111) && ({row_reg, col_reg}<19'b0000111010100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111010100010001) && ({row_reg, col_reg}<19'b0000111011001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111011001100011) && ({row_reg, col_reg}<19'b0000111011001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111011001100101) && ({row_reg, col_reg}<19'b0000111011001101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111011001101010) && ({row_reg, col_reg}<19'b0000111011001101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0000111011001101110) && ({row_reg, col_reg}<19'b0000111011001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111011001110000) && ({row_reg, col_reg}<19'b0000111011001110010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0000111011001110010) && ({row_reg, col_reg}<19'b0000111011001110100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0000111011001110100) && ({row_reg, col_reg}<19'b0000111011001110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111011001110110) && ({row_reg, col_reg}<19'b0000111011001111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111011001111000) && ({row_reg, col_reg}<19'b0000111011001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111011001111101) && ({row_reg, col_reg}<19'b0000111011001111111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111011001111111) && ({row_reg, col_reg}<19'b0000111100011100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111100011100010) && ({row_reg, col_reg}<19'b0000111100011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111100011100100) && ({row_reg, col_reg}<19'b0000111100011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111100011110001) && ({row_reg, col_reg}<19'b0000111100011110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111100011110101) && ({row_reg, col_reg}<19'b0000111100100000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111100100000110) && ({row_reg, col_reg}<19'b0000111100100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111100100001000) && ({row_reg, col_reg}<19'b0000111100100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111100100001111) && ({row_reg, col_reg}<19'b0000111100100010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111100100010001) && ({row_reg, col_reg}<19'b0000111101001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111101001100011) && ({row_reg, col_reg}<19'b0000111101001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111101001100101) && ({row_reg, col_reg}<19'b0000111101001101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111101001101010) && ({row_reg, col_reg}<19'b0000111101001101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0000111101001101110) && ({row_reg, col_reg}<19'b0000111101001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111101001110000) && ({row_reg, col_reg}<19'b0000111101001110010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0000111101001110010) && ({row_reg, col_reg}<19'b0000111101001110100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0000111101001110100) && ({row_reg, col_reg}<19'b0000111101001110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111101001110110) && ({row_reg, col_reg}<19'b0000111101001111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111101001111000) && ({row_reg, col_reg}<19'b0000111101001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111101001111101) && ({row_reg, col_reg}<19'b0000111101001111111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111101001111111) && ({row_reg, col_reg}<19'b0000111110011100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111110011100010) && ({row_reg, col_reg}<19'b0000111110011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111110011100100) && ({row_reg, col_reg}<19'b0000111110011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111110011110101) && ({row_reg, col_reg}<19'b0000111110011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111110011110111) && ({row_reg, col_reg}<19'b0000111110011111101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111110011111101) && ({row_reg, col_reg}<19'b0000111110100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111110100000010) && ({row_reg, col_reg}<19'b0000111110100000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111110100000100) && ({row_reg, col_reg}<19'b0000111110100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111110100000110) && ({row_reg, col_reg}<19'b0000111110100010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111110100010001) && ({row_reg, col_reg}<19'b0000111110100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111110100010101) && ({row_reg, col_reg}<19'b0000111111001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111111001100011) && ({row_reg, col_reg}<19'b0000111111001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111111001100101) && ({row_reg, col_reg}<19'b0000111111001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0000111111001101001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0000111111001101010) && ({row_reg, col_reg}<19'b0000111111001101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0000111111001101110) && ({row_reg, col_reg}<19'b0000111111001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111111001110010) && ({row_reg, col_reg}<19'b0000111111001110100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0000111111001110100) && ({row_reg, col_reg}<19'b0000111111001110110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0000111111001110110) && ({row_reg, col_reg}<19'b0000111111001111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0000111111001111101) && ({row_reg, col_reg}<19'b0001000000000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000000000000000) && ({row_reg, col_reg}<19'b0001000000011100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000000011100010) && ({row_reg, col_reg}<19'b0001000000011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000000011100100) && ({row_reg, col_reg}<19'b0001000000011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000000011110101) && ({row_reg, col_reg}<19'b0001000000011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000000011110111) && ({row_reg, col_reg}<19'b0001000000011111101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000000011111101) && ({row_reg, col_reg}<19'b0001000000100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000000100000010) && ({row_reg, col_reg}<19'b0001000000100000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000000100000100) && ({row_reg, col_reg}<19'b0001000000100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000000100000110) && ({row_reg, col_reg}<19'b0001000000100010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000000100010001) && ({row_reg, col_reg}<19'b0001000000100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000000100010101) && ({row_reg, col_reg}<19'b0001000001001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000001001100011) && ({row_reg, col_reg}<19'b0001000001001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000001001100101) && ({row_reg, col_reg}<19'b0001000001001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000001001101001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000001001101010) && ({row_reg, col_reg}<19'b0001000001001101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000001001101110) && ({row_reg, col_reg}<19'b0001000001001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000001001110010) && ({row_reg, col_reg}<19'b0001000001001110100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000001001110100) && ({row_reg, col_reg}<19'b0001000001001110110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000001001110110) && ({row_reg, col_reg}<19'b0001000001001111101)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}>=19'b0001000001001111101) && ({row_reg, col_reg}<19'b0001000010000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010000000000) && ({row_reg, col_reg}<19'b0001000010011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000010011100000) && ({row_reg, col_reg}<19'b0001000010011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010011100010) && ({row_reg, col_reg}<19'b0001000010011101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000010011101010) && ({row_reg, col_reg}<19'b0001000010011101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000010011101110) && ({row_reg, col_reg}<19'b0001000010011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000010011110101) && ({row_reg, col_reg}<19'b0001000010011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010011110111) && ({row_reg, col_reg}<19'b0001000010011111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000010011111011) && ({row_reg, col_reg}<19'b0001000010011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010011111101) && ({row_reg, col_reg}<19'b0001000010100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000010100000000) && ({row_reg, col_reg}<19'b0001000010100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010100000010) && ({row_reg, col_reg}<19'b0001000010100000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000010100000100) && ({row_reg, col_reg}<19'b0001000010100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010100000110) && ({row_reg, col_reg}<19'b0001000010100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000010100010101) && ({row_reg, col_reg}<19'b0001000010100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000010100010111) && ({row_reg, col_reg}<19'b0001000011001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000011001100011) && ({row_reg, col_reg}<19'b0001000011001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000011001100101) && ({row_reg, col_reg}<19'b0001000011001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000011001101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000011001101010) && ({row_reg, col_reg}<19'b0001000011001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001000011001111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100000000000) && ({row_reg, col_reg}<19'b0001000100011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000100011100000) && ({row_reg, col_reg}<19'b0001000100011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100011100010) && ({row_reg, col_reg}<19'b0001000100011101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000100011101010) && ({row_reg, col_reg}<19'b0001000100011101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000100011101110) && ({row_reg, col_reg}<19'b0001000100011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000100011110101) && ({row_reg, col_reg}<19'b0001000100011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100011110111) && ({row_reg, col_reg}<19'b0001000100011111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000100011111011) && ({row_reg, col_reg}<19'b0001000100011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100011111101) && ({row_reg, col_reg}<19'b0001000100100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000100100000000) && ({row_reg, col_reg}<19'b0001000100100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100100000010) && ({row_reg, col_reg}<19'b0001000100100000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000100100000100) && ({row_reg, col_reg}<19'b0001000100100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100100000110) && ({row_reg, col_reg}<19'b0001000100100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000100100010101) && ({row_reg, col_reg}<19'b0001000100100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000100100010111) && ({row_reg, col_reg}<19'b0001000101001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000101001100011) && ({row_reg, col_reg}<19'b0001000101001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000101001100101) && ({row_reg, col_reg}<19'b0001000101001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000101001101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000101001101010) && ({row_reg, col_reg}<19'b0001000101001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001000101001111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110000000000) && ({row_reg, col_reg}<19'b0001000110011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000110011100000) && ({row_reg, col_reg}<19'b0001000110011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110011100010) && ({row_reg, col_reg}<19'b0001000110011101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000110011101010) && ({row_reg, col_reg}<19'b0001000110011101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000110011101110) && ({row_reg, col_reg}<19'b0001000110011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000110011110101) && ({row_reg, col_reg}<19'b0001000110011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110011110111) && ({row_reg, col_reg}<19'b0001000110011111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000110011111011) && ({row_reg, col_reg}<19'b0001000110011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110011111101) && ({row_reg, col_reg}<19'b0001000110100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000110100000000) && ({row_reg, col_reg}<19'b0001000110100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110100000010) && ({row_reg, col_reg}<19'b0001000110100000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000110100000100) && ({row_reg, col_reg}<19'b0001000110100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110100000110) && ({row_reg, col_reg}<19'b0001000110100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000110100010101) && ({row_reg, col_reg}<19'b0001000110100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000110100010111) && ({row_reg, col_reg}<19'b0001000111001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000111001100011) && ({row_reg, col_reg}<19'b0001000111001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000111001100101) && ({row_reg, col_reg}<19'b0001000111001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000111001101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000111001101010) && ({row_reg, col_reg}<19'b0001000111001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001000111001111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001000000000000) && ({row_reg, col_reg}<19'b0001001000011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001000011100000) && ({row_reg, col_reg}<19'b0001001000011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001000011100010) && ({row_reg, col_reg}<19'b0001001000011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001000011100110) && ({row_reg, col_reg}<19'b0001001000011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001000011101010) && ({row_reg, col_reg}<19'b0001001000011101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001000011101110) && ({row_reg, col_reg}<19'b0001001000011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001000011110111) && ({row_reg, col_reg}<19'b0001001000011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001000011111001) && ({row_reg, col_reg}<19'b0001001000011111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001000011111011) && ({row_reg, col_reg}<19'b0001001000011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001000011111101) && ({row_reg, col_reg}<19'b0001001000100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001000100000010) && ({row_reg, col_reg}<19'b0001001000100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001000100000100) && ({row_reg, col_reg}<19'b0001001000100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001000100000110) && ({row_reg, col_reg}<19'b0001001000100001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001000100001000) && ({row_reg, col_reg}<19'b0001001000100001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001000100001010) && ({row_reg, col_reg}<19'b0001001000100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001000100001100) && ({row_reg, col_reg}<19'b0001001000100001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001000100001111) && ({row_reg, col_reg}<19'b0001001000100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001000100010101) && ({row_reg, col_reg}<19'b0001001000100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001000100010111) && ({row_reg, col_reg}<19'b0001001001001100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001001001100001) && ({row_reg, col_reg}<19'b0001001001001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001001001100011) && ({row_reg, col_reg}<19'b0001001001001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001001001001111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001010000000000) && ({row_reg, col_reg}<19'b0001001010011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001010011100000) && ({row_reg, col_reg}<19'b0001001010011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001010011100010) && ({row_reg, col_reg}<19'b0001001010011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001010011100110) && ({row_reg, col_reg}<19'b0001001010011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001010011101010) && ({row_reg, col_reg}<19'b0001001010011101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001010011101110) && ({row_reg, col_reg}<19'b0001001010011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001010011110111) && ({row_reg, col_reg}<19'b0001001010011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001010011111001) && ({row_reg, col_reg}<19'b0001001010011111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001010011111011) && ({row_reg, col_reg}<19'b0001001010011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001010011111101) && ({row_reg, col_reg}<19'b0001001010100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001010100000010) && ({row_reg, col_reg}<19'b0001001010100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001010100000100) && ({row_reg, col_reg}<19'b0001001010100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001010100000110) && ({row_reg, col_reg}<19'b0001001010100001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001010100001000) && ({row_reg, col_reg}<19'b0001001010100001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001010100001010) && ({row_reg, col_reg}<19'b0001001010100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001010100001100) && ({row_reg, col_reg}<19'b0001001010100001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001010100001111) && ({row_reg, col_reg}<19'b0001001010100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001010100010101) && ({row_reg, col_reg}<19'b0001001010100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001010100010111) && ({row_reg, col_reg}<19'b0001001011001100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001011001100001) && ({row_reg, col_reg}<19'b0001001011001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001011001100011) && ({row_reg, col_reg}<19'b0001001011001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001001011001111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001100000000000) && ({row_reg, col_reg}<19'b0001001100011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001100011100000) && ({row_reg, col_reg}<19'b0001001100011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001100011100010) && ({row_reg, col_reg}<19'b0001001100011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001100011100100) && ({row_reg, col_reg}<19'b0001001100011100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001100011100110) && ({row_reg, col_reg}<19'b0001001100011101010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001100011101010) && ({row_reg, col_reg}<19'b0001001100011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001100011111001) && ({row_reg, col_reg}<19'b0001001100011111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001100011111011) && ({row_reg, col_reg}<19'b0001001100100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001100100000100) && ({row_reg, col_reg}<19'b0001001100100000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001100100000110) && ({row_reg, col_reg}<19'b0001001100100001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001100100001000) && ({row_reg, col_reg}<19'b0001001100100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001100100001100) && ({row_reg, col_reg}<19'b0001001100100001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001100100001111) && ({row_reg, col_reg}<19'b0001001100100010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001100100010001) && ({row_reg, col_reg}<19'b0001001100100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001100100010101) && ({row_reg, col_reg}<19'b0001001100100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001100100010111) && ({row_reg, col_reg}<19'b0001001101001011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001101001011111) && ({row_reg, col_reg}<19'b0001001101001100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001001101001100001) && ({row_reg, col_reg}<19'b0001001110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001110000000000) && ({row_reg, col_reg}<19'b0001001110011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001110011100000) && ({row_reg, col_reg}<19'b0001001110011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001110011100010) && ({row_reg, col_reg}<19'b0001001110011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001110011100100) && ({row_reg, col_reg}<19'b0001001110011100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001110011100110) && ({row_reg, col_reg}<19'b0001001110011101010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001110011101010) && ({row_reg, col_reg}<19'b0001001110011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001110011111001) && ({row_reg, col_reg}<19'b0001001110011111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001110011111011) && ({row_reg, col_reg}<19'b0001001110100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001110100000100) && ({row_reg, col_reg}<19'b0001001110100000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001110100000110) && ({row_reg, col_reg}<19'b0001001110100001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001110100001000) && ({row_reg, col_reg}<19'b0001001110100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001110100001100) && ({row_reg, col_reg}<19'b0001001110100001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001110100001111) && ({row_reg, col_reg}<19'b0001001110100010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001110100010001) && ({row_reg, col_reg}<19'b0001001110100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001110100010101) && ({row_reg, col_reg}<19'b0001001110100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001110100010111) && ({row_reg, col_reg}<19'b0001001111001011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001111001011111) && ({row_reg, col_reg}<19'b0001001111001100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001001111001100001) && ({row_reg, col_reg}<19'b0001010000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010000000000000) && ({row_reg, col_reg}<19'b0001010000011011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010000011011110) && ({row_reg, col_reg}<19'b0001010000011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010000011100000) && ({row_reg, col_reg}<19'b0001010000011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010000011100110) && ({row_reg, col_reg}<19'b0001010000011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001010000011101000) && ({row_reg, col_reg}<19'b0001010000011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010000011111001) && ({row_reg, col_reg}<19'b0001010000011111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010000011111011) && ({row_reg, col_reg}<19'b0001010000100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010000100001111) && ({row_reg, col_reg}<19'b0001010000100010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001010000100010001) && ({row_reg, col_reg}<19'b0001010000100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010000100010101) && ({row_reg, col_reg}<19'b0001010000100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010000100010111) && ({row_reg, col_reg}<19'b0001010001001011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010001001011101) && ({row_reg, col_reg}<19'b0001010001001011111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010001001011111) && ({row_reg, col_reg}<19'b0001010010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010010000000000) && ({row_reg, col_reg}<19'b0001010010011011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010010011011110) && ({row_reg, col_reg}<19'b0001010010011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010010011100000) && ({row_reg, col_reg}<19'b0001010010011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010010011100110) && ({row_reg, col_reg}<19'b0001010010011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001010010011101000) && ({row_reg, col_reg}<19'b0001010010011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010010011111001) && ({row_reg, col_reg}<19'b0001010010011111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010010011111011) && ({row_reg, col_reg}<19'b0001010010100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010010100001111) && ({row_reg, col_reg}<19'b0001010010100010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001010010100010001) && ({row_reg, col_reg}<19'b0001010010100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010010100010101) && ({row_reg, col_reg}<19'b0001010010100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010010100010111) && ({row_reg, col_reg}<19'b0001010011001011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010011001011101) && ({row_reg, col_reg}<19'b0001010011001011111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010011001011111) && ({row_reg, col_reg}<19'b0001010100000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010100000000000) && ({row_reg, col_reg}<19'b0001010100011011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010100011011110) && ({row_reg, col_reg}<19'b0001010100011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010100011100000) && ({row_reg, col_reg}<19'b0001010100011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010100011110111) && ({row_reg, col_reg}<19'b0001010100011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010100011111001) && ({row_reg, col_reg}<19'b0001010100100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010100100010111) && ({row_reg, col_reg}<19'b0001010100100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010100100011001) && ({row_reg, col_reg}<19'b0001010101001011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010101001011001) && ({row_reg, col_reg}<19'b0001010101001011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010101001011101) && ({row_reg, col_reg}<19'b0001010110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010110000000000) && ({row_reg, col_reg}<19'b0001010110011011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010110011011110) && ({row_reg, col_reg}<19'b0001010110011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010110011100000) && ({row_reg, col_reg}<19'b0001010110011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010110011110111) && ({row_reg, col_reg}<19'b0001010110011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010110011111001) && ({row_reg, col_reg}<19'b0001010110100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010110100010111) && ({row_reg, col_reg}<19'b0001010110100011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010110100011001) && ({row_reg, col_reg}<19'b0001010111001011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010111001011001) && ({row_reg, col_reg}<19'b0001010111001011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010111001011101) && ({row_reg, col_reg}<19'b0001011000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011000000000000) && ({row_reg, col_reg}<19'b0001011000011011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011000011011011) && ({row_reg, col_reg}<19'b0001011000011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011000011011110) && ({row_reg, col_reg}<19'b0001011000100011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011000100011001) && ({row_reg, col_reg}<19'b0001011000100011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011000100011011) && ({row_reg, col_reg}<19'b0001011001001011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001011001001011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011001001011001) && ({row_reg, col_reg}<19'b0001011010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011010000000000) && ({row_reg, col_reg}<19'b0001011010011011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011010011011011) && ({row_reg, col_reg}<19'b0001011010011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011010011011110) && ({row_reg, col_reg}<19'b0001011010100011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011010100011001) && ({row_reg, col_reg}<19'b0001011010100011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011010100011011) && ({row_reg, col_reg}<19'b0001011011001011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001011011001011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011011001011001) && ({row_reg, col_reg}<19'b0001011100000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011100000000000) && ({row_reg, col_reg}<19'b0001011100011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011100011011001) && ({row_reg, col_reg}<19'b0001011100011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011100011011011) && ({row_reg, col_reg}<19'b0001011100100011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011100100011011) && ({row_reg, col_reg}<19'b0001011100100011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011100100011101) && ({row_reg, col_reg}<19'b0001011101001010110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011101001010110) && ({row_reg, col_reg}<19'b0001011101001011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011101001011000) && ({row_reg, col_reg}<19'b0001011110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011110000000000) && ({row_reg, col_reg}<19'b0001011110011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011110011011001) && ({row_reg, col_reg}<19'b0001011110011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011110011011011) && ({row_reg, col_reg}<19'b0001011110100011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011110100011011) && ({row_reg, col_reg}<19'b0001011110100011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011110100011101) && ({row_reg, col_reg}<19'b0001011111001010110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011111001010110) && ({row_reg, col_reg}<19'b0001011111001011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011111001011000) && ({row_reg, col_reg}<19'b0001100000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100000000000000) && ({row_reg, col_reg}<19'b0001100000011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100000011011001) && ({row_reg, col_reg}<19'b0001100000011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100000011011011) && ({row_reg, col_reg}<19'b0001100000100011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100000100011101) && ({row_reg, col_reg}<19'b0001100000100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100000100100000) && ({row_reg, col_reg}<19'b0001100001001010100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100001001010100) && ({row_reg, col_reg}<19'b0001100001001010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100001001010110) && ({row_reg, col_reg}<19'b0001100010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100010000000000) && ({row_reg, col_reg}<19'b0001100010011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100010011011001) && ({row_reg, col_reg}<19'b0001100010011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100010011011011) && ({row_reg, col_reg}<19'b0001100010100011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100010100011101) && ({row_reg, col_reg}<19'b0001100010100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100010100100000) && ({row_reg, col_reg}<19'b0001100011001010100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100011001010100) && ({row_reg, col_reg}<19'b0001100011001010110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100011001010110) && ({row_reg, col_reg}<19'b0001100100000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100100000000000) && ({row_reg, col_reg}<19'b0001100100011010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100100011010111) && ({row_reg, col_reg}<19'b0001100100011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100100011011001) && ({row_reg, col_reg}<19'b0001100100100100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100100100100000) && ({row_reg, col_reg}<19'b0001100100100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100100100100010) && ({row_reg, col_reg}<19'b0001100101001010010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100101001010010) && ({row_reg, col_reg}<19'b0001100101001010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100101001010100) && ({row_reg, col_reg}<19'b0001100110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100110000000000) && ({row_reg, col_reg}<19'b0001100110011010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100110011010111) && ({row_reg, col_reg}<19'b0001100110011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100110011011001) && ({row_reg, col_reg}<19'b0001100110100100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100110100100000) && ({row_reg, col_reg}<19'b0001100110100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100110100100010) && ({row_reg, col_reg}<19'b0001100111001010010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100111001010010) && ({row_reg, col_reg}<19'b0001100111001010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100111001010100) && ({row_reg, col_reg}<19'b0001101000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101000000000000) && ({row_reg, col_reg}<19'b0001101000011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101000011010101) && ({row_reg, col_reg}<19'b0001101000011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101000011010111) && ({row_reg, col_reg}<19'b0001101000100100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101000100100010) && ({row_reg, col_reg}<19'b0001101000100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101000100100100) && ({row_reg, col_reg}<19'b0001101001001010010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101001001010010) && ({row_reg, col_reg}<19'b0001101001001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101001001010100) && ({row_reg, col_reg}<19'b0001101001001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001101001001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101010000000000) && ({row_reg, col_reg}<19'b0001101010011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101010011010101) && ({row_reg, col_reg}<19'b0001101010011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101010011010111) && ({row_reg, col_reg}<19'b0001101010100100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101010100100010) && ({row_reg, col_reg}<19'b0001101010100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101010100100100) && ({row_reg, col_reg}<19'b0001101011001010010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101011001010010) && ({row_reg, col_reg}<19'b0001101011001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101011001010100) && ({row_reg, col_reg}<19'b0001101011001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001101011001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101100000000000) && ({row_reg, col_reg}<19'b0001101100011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101100011010011) && ({row_reg, col_reg}<19'b0001101100011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101100011010101) && ({row_reg, col_reg}<19'b0001101100011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101100011100010) && ({row_reg, col_reg}<19'b0001101100011101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101100011101000) && ({row_reg, col_reg}<19'b0001101100100100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101100100100100) && ({row_reg, col_reg}<19'b0001101100100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101100100100110) && ({row_reg, col_reg}<19'b0001101101001010100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101101001010100) && ({row_reg, col_reg}<19'b0001101101001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101101001010110) && ({row_reg, col_reg}<19'b0001101101001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101101001100001) && ({row_reg, col_reg}<19'b0001101101001100101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101101001100101) && ({row_reg, col_reg}<19'b0001101101001101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101101001101100) && ({row_reg, col_reg}<19'b0001101101001101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101101001101110) && ({row_reg, col_reg}<19'b0001101101001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101101001111101) && ({row_reg, col_reg}<19'b0001101101001111111)) color_data = 12'b011011001111;

		if(({row_reg, col_reg}==19'b0001101101001111111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001101110000000000) && ({row_reg, col_reg}<19'b0001101110011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101110011010011) && ({row_reg, col_reg}<19'b0001101110011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101110011010101) && ({row_reg, col_reg}<19'b0001101110011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101110011100010) && ({row_reg, col_reg}<19'b0001101110011101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101110011101000) && ({row_reg, col_reg}<19'b0001101110100100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101110100100100) && ({row_reg, col_reg}<19'b0001101110100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101110100100110) && ({row_reg, col_reg}<19'b0001101111001010100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101111001010100) && ({row_reg, col_reg}<19'b0001101111001010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101111001010110) && ({row_reg, col_reg}<19'b0001101111001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101111001100001) && ({row_reg, col_reg}<19'b0001101111001100101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101111001100101) && ({row_reg, col_reg}<19'b0001101111001101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101111001101100) && ({row_reg, col_reg}<19'b0001101111001101110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001101111001101110) && ({row_reg, col_reg}<19'b0001101111001111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101111001111101) && ({row_reg, col_reg}<19'b0001101111001111111)) color_data = 12'b011011001111;

		if(({row_reg, col_reg}==19'b0001101111001111111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110000000000000) && ({row_reg, col_reg}<19'b0001110000011010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110000011010001) && ({row_reg, col_reg}<19'b0001110000011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110000011010011) && ({row_reg, col_reg}<19'b0001110000011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110000011100010) && ({row_reg, col_reg}<19'b0001110000011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110000011101000) && ({row_reg, col_reg}<19'b0001110000011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110000011101010) && ({row_reg, col_reg}<19'b0001110000100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110000100100110) && ({row_reg, col_reg}<19'b0001110000100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110000100101000) && ({row_reg, col_reg}<19'b0001110001001010110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110001001010110) && ({row_reg, col_reg}<19'b0001110001001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110001001011000) && ({row_reg, col_reg}<19'b0001110001001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110001001100001) && ({row_reg, col_reg}<19'b0001110001001100101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110001001100101) && ({row_reg, col_reg}<19'b0001110001001100111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110001001100111) && ({row_reg, col_reg}<19'b0001110001001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110001001101001) && ({row_reg, col_reg}<19'b0001110001001101100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110001001101100) && ({row_reg, col_reg}<19'b0001110001001101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110001001101110) && ({row_reg, col_reg}<19'b0001110001001110000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110001001110000) && ({row_reg, col_reg}<19'b0001110001001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110001001111001) && ({row_reg, col_reg}<19'b0001110001001111101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110001001111101) && ({row_reg, col_reg}<19'b0001110001001111111)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}==19'b0001110001001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110010000000000) && ({row_reg, col_reg}<19'b0001110010011010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110010011010001) && ({row_reg, col_reg}<19'b0001110010011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110010011010011) && ({row_reg, col_reg}<19'b0001110010011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110010011100010) && ({row_reg, col_reg}<19'b0001110010011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110010011101000) && ({row_reg, col_reg}<19'b0001110010011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110010011101010) && ({row_reg, col_reg}<19'b0001110010100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110010100100110) && ({row_reg, col_reg}<19'b0001110010100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110010100101000) && ({row_reg, col_reg}<19'b0001110011001010110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110011001010110) && ({row_reg, col_reg}<19'b0001110011001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110011001011000) && ({row_reg, col_reg}<19'b0001110011001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110011001100001) && ({row_reg, col_reg}<19'b0001110011001100101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110011001100101) && ({row_reg, col_reg}<19'b0001110011001100111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110011001100111) && ({row_reg, col_reg}<19'b0001110011001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110011001101001) && ({row_reg, col_reg}<19'b0001110011001101100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110011001101100) && ({row_reg, col_reg}<19'b0001110011001101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110011001101110) && ({row_reg, col_reg}<19'b0001110011001110000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110011001110000) && ({row_reg, col_reg}<19'b0001110011001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110011001111001) && ({row_reg, col_reg}<19'b0001110011001111101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110011001111101) && ({row_reg, col_reg}<19'b0001110011001111111)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}==19'b0001110011001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110100000000000) && ({row_reg, col_reg}<19'b0001110100011010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110100011010001) && ({row_reg, col_reg}<19'b0001110100011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110100011010011) && ({row_reg, col_reg}<19'b0001110100011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110100011100010) && ({row_reg, col_reg}<19'b0001110100011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110100011101000) && ({row_reg, col_reg}<19'b0001110100011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110100011101010) && ({row_reg, col_reg}<19'b0001110100100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110100100100110) && ({row_reg, col_reg}<19'b0001110100100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110100100101000) && ({row_reg, col_reg}<19'b0001110101001010110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110101001010110) && ({row_reg, col_reg}<19'b0001110101001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110101001011000) && ({row_reg, col_reg}<19'b0001110101001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110101001100001) && ({row_reg, col_reg}<19'b0001110101001100101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110101001100101) && ({row_reg, col_reg}<19'b0001110101001100111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110101001100111) && ({row_reg, col_reg}<19'b0001110101001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110101001101001) && ({row_reg, col_reg}<19'b0001110101001101100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110101001101100) && ({row_reg, col_reg}<19'b0001110101001101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110101001101110) && ({row_reg, col_reg}<19'b0001110101001110000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110101001110000) && ({row_reg, col_reg}<19'b0001110101001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110101001111001) && ({row_reg, col_reg}<19'b0001110101001111101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110101001111101) && ({row_reg, col_reg}<19'b0001110101001111111)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}==19'b0001110101001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110110000000000) && ({row_reg, col_reg}<19'b0001110110011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110110011010011) && ({row_reg, col_reg}<19'b0001110110011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110110011010111) && ({row_reg, col_reg}<19'b0001110110011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110110011100110) && ({row_reg, col_reg}<19'b0001110110011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110110011101000) && ({row_reg, col_reg}<19'b0001110110011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110110011101010) && ({row_reg, col_reg}<19'b0001110110011101100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110110011101100) && ({row_reg, col_reg}<19'b0001110110011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110110011111001) && ({row_reg, col_reg}<19'b0001110110011111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110110011111011) && ({row_reg, col_reg}<19'b0001110110100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110110100100110) && ({row_reg, col_reg}<19'b0001110110100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110110100101000) && ({row_reg, col_reg}<19'b0001110111001011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110111001011000) && ({row_reg, col_reg}<19'b0001110111001011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110111001011011) && ({row_reg, col_reg}<19'b0001110111001100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110111001100101) && ({row_reg, col_reg}<19'b0001110111001100111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110111001100111) && ({row_reg, col_reg}<19'b0001110111001101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110111001101010) && ({row_reg, col_reg}<19'b0001110111001110000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110111001110000) && ({row_reg, col_reg}<19'b0001110111001110100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110111001110100) && ({row_reg, col_reg}<19'b0001110111001110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110111001110110) && ({row_reg, col_reg}<19'b0001110111001111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110111001111001) && ({row_reg, col_reg}<19'b0001110111001111111)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}==19'b0001110111001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111000000000000) && ({row_reg, col_reg}<19'b0001111000011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111000011010011) && ({row_reg, col_reg}<19'b0001111000011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111000011010111) && ({row_reg, col_reg}<19'b0001111000011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111000011100110) && ({row_reg, col_reg}<19'b0001111000011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111000011101000) && ({row_reg, col_reg}<19'b0001111000011101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111000011101010) && ({row_reg, col_reg}<19'b0001111000011101100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111000011101100) && ({row_reg, col_reg}<19'b0001111000011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111000011111001) && ({row_reg, col_reg}<19'b0001111000011111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111000011111011) && ({row_reg, col_reg}<19'b0001111000100100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111000100100110) && ({row_reg, col_reg}<19'b0001111000100101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111000100101000) && ({row_reg, col_reg}<19'b0001111001001011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111001001011000) && ({row_reg, col_reg}<19'b0001111001001011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111001001011011) && ({row_reg, col_reg}<19'b0001111001001100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111001001100101) && ({row_reg, col_reg}<19'b0001111001001100111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111001001100111) && ({row_reg, col_reg}<19'b0001111001001101010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111001001101010) && ({row_reg, col_reg}<19'b0001111001001110000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111001001110000) && ({row_reg, col_reg}<19'b0001111001001110100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111001001110100) && ({row_reg, col_reg}<19'b0001111001001110110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111001001110110) && ({row_reg, col_reg}<19'b0001111001001111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111001001111001) && ({row_reg, col_reg}<19'b0001111001001111111)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}==19'b0001111001001111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010000000000) && ({row_reg, col_reg}<19'b0001111010011010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111010011010111) && ({row_reg, col_reg}<19'b0001111010011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111010011011001) && ({row_reg, col_reg}<19'b0001111010011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010011101000) && ({row_reg, col_reg}<19'b0001111010011101010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111010011101010) && ({row_reg, col_reg}<19'b0001111010011101111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010011101111) && ({row_reg, col_reg}<19'b0001111010011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010011111001) && ({row_reg, col_reg}<19'b0001111010011111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111010011111011) && ({row_reg, col_reg}<19'b0001111010011111101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010011111101) && ({row_reg, col_reg}<19'b0001111010100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010100001100) && ({row_reg, col_reg}<19'b0001111010100001110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010100001110) && ({row_reg, col_reg}<19'b0001111010100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010100010101) && ({row_reg, col_reg}<19'b0001111010100011001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010100011001) && ({row_reg, col_reg}<19'b0001111010100100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010100100100) && ({row_reg, col_reg}<19'b0001111010100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111010100100110) && ({row_reg, col_reg}<19'b0001111011001011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111011001011011) && ({row_reg, col_reg}<19'b0001111011001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111011001100011) && ({row_reg, col_reg}<19'b0001111011001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111011001100111) && ({row_reg, col_reg}<19'b0001111011001101100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111011001101100) && ({row_reg, col_reg}<19'b0001111011001101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111011001101110) && ({row_reg, col_reg}<19'b0001111011001110010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111011001110010) && ({row_reg, col_reg}<19'b0001111011001111000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111011001111000) && ({row_reg, col_reg}<19'b0001111011001111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111011001111011) && ({row_reg, col_reg}<19'b0001111011001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001111011001111111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111100000000000) && ({row_reg, col_reg}<19'b0001111100011010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111100011010111) && ({row_reg, col_reg}<19'b0001111100011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111100011011001) && ({row_reg, col_reg}<19'b0001111100011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100011101000) && ({row_reg, col_reg}<19'b0001111100011101010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111100011101010) && ({row_reg, col_reg}<19'b0001111100011101111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111100011101111) && ({row_reg, col_reg}<19'b0001111100011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100011111001) && ({row_reg, col_reg}<19'b0001111100011111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111100011111011) && ({row_reg, col_reg}<19'b0001111100011111101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111100011111101) && ({row_reg, col_reg}<19'b0001111100100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100100001100) && ({row_reg, col_reg}<19'b0001111100100001110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111100100001110) && ({row_reg, col_reg}<19'b0001111100100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100100010101) && ({row_reg, col_reg}<19'b0001111100100011001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111100100011001) && ({row_reg, col_reg}<19'b0001111100100100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100100100100) && ({row_reg, col_reg}<19'b0001111100100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111100100100110) && ({row_reg, col_reg}<19'b0001111101001011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111101001011011) && ({row_reg, col_reg}<19'b0001111101001100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111101001100011) && ({row_reg, col_reg}<19'b0001111101001100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111101001100111) && ({row_reg, col_reg}<19'b0001111101001101100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111101001101100) && ({row_reg, col_reg}<19'b0001111101001101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111101001101110) && ({row_reg, col_reg}<19'b0001111101001110010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111101001110010) && ({row_reg, col_reg}<19'b0001111101001111000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111101001111000) && ({row_reg, col_reg}<19'b0001111101001111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111101001111011) && ({row_reg, col_reg}<19'b0001111101001111111)) color_data = 12'b111111111111;

		if(({row_reg, col_reg}==19'b0001111101001111111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111110000000000) && ({row_reg, col_reg}<19'b0001111110011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111110011011001) && ({row_reg, col_reg}<19'b0001111110011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111110011011011) && ({row_reg, col_reg}<19'b0001111110011101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110011101010) && ({row_reg, col_reg}<19'b0001111110011101111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111110011101111) && ({row_reg, col_reg}<19'b0001111110011110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111110011110001) && ({row_reg, col_reg}<19'b0001111110011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110011111001) && ({row_reg, col_reg}<19'b0001111110011111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111110011111011) && ({row_reg, col_reg}<19'b0001111110011111101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111110011111101) && ({row_reg, col_reg}<19'b0001111110100000000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111110100000000) && ({row_reg, col_reg}<19'b0001111110100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110100001010) && ({row_reg, col_reg}<19'b0001111110100001100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111110100001100) && ({row_reg, col_reg}<19'b0001111110100001110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111110100001110) && ({row_reg, col_reg}<19'b0001111110100010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111110100010001) && ({row_reg, col_reg}<19'b0001111110100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110100010011) && ({row_reg, col_reg}<19'b0001111110100010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111110100010101) && ({row_reg, col_reg}<19'b0001111110100011001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111110100011001) && ({row_reg, col_reg}<19'b0001111110100100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110100100010) && ({row_reg, col_reg}<19'b0001111110100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111110100100100) && ({row_reg, col_reg}<19'b0001111111001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111111001100011) && ({row_reg, col_reg}<19'b0001111111001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111111001100101) && ({row_reg, col_reg}<19'b0001111111001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111111001110000) && ({row_reg, col_reg}<19'b0001111111001111001)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}>=19'b0001111111001111001) && ({row_reg, col_reg}<19'b0010000000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000000000000) && ({row_reg, col_reg}<19'b0010000000011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000000011011001) && ({row_reg, col_reg}<19'b0010000000011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000000011011011) && ({row_reg, col_reg}<19'b0010000000011101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000011101010) && ({row_reg, col_reg}<19'b0010000000011101111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000000011101111) && ({row_reg, col_reg}<19'b0010000000011110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000000011110001) && ({row_reg, col_reg}<19'b0010000000011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000011111001) && ({row_reg, col_reg}<19'b0010000000011111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000000011111011) && ({row_reg, col_reg}<19'b0010000000011111101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000000011111101) && ({row_reg, col_reg}<19'b0010000000100000000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000000100000000) && ({row_reg, col_reg}<19'b0010000000100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000100001010) && ({row_reg, col_reg}<19'b0010000000100001100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000000100001100) && ({row_reg, col_reg}<19'b0010000000100001110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000000100001110) && ({row_reg, col_reg}<19'b0010000000100010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000000100010001) && ({row_reg, col_reg}<19'b0010000000100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000100010011) && ({row_reg, col_reg}<19'b0010000000100010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000000100010101) && ({row_reg, col_reg}<19'b0010000000100011001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000000100011001) && ({row_reg, col_reg}<19'b0010000000100100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000100100010) && ({row_reg, col_reg}<19'b0010000000100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000000100100100) && ({row_reg, col_reg}<19'b0010000001001100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000001001100011) && ({row_reg, col_reg}<19'b0010000001001100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000001001100101) && ({row_reg, col_reg}<19'b0010000001001110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000001001110000) && ({row_reg, col_reg}<19'b0010000001001111001)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}>=19'b0010000001001111001) && ({row_reg, col_reg}<19'b0010000010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000010000000000) && ({row_reg, col_reg}<19'b0010000010011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000010011011001) && ({row_reg, col_reg}<19'b0010000010011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000010011011011) && ({row_reg, col_reg}<19'b0010000010011101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010000010011101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000010011101111) && ({row_reg, col_reg}<19'b0010000010011110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000010011110011) && ({row_reg, col_reg}<19'b0010000010011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000010011110111) && ({row_reg, col_reg}<19'b0010000010011111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000010011111011) && ({row_reg, col_reg}<19'b0010000010100000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000010100000000) && ({row_reg, col_reg}<19'b0010000010100000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000010100000100) && ({row_reg, col_reg}<19'b0010000010100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000010100000110) && ({row_reg, col_reg}<19'b0010000010100001010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000010100001010) && ({row_reg, col_reg}<19'b0010000010100001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000010100001111) && ({row_reg, col_reg}<19'b0010000010100010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000010100010011) && ({row_reg, col_reg}<19'b0010000010100010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000010100010101) && ({row_reg, col_reg}<19'b0010000010100011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000010100011111) && ({row_reg, col_reg}<19'b0010000010100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000010100100010) && ({row_reg, col_reg}<19'b0010000011001100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000011001100101) && ({row_reg, col_reg}<19'b0010000011001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000011001100111) && ({row_reg, col_reg}<19'b0010000011001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000011001110100) && ({row_reg, col_reg}<19'b0010000011001111000)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}>=19'b0010000011001111000) && ({row_reg, col_reg}<19'b0010000100000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000100000000000) && ({row_reg, col_reg}<19'b0010000100011011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000100011011001) && ({row_reg, col_reg}<19'b0010000100011011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000100011011011) && ({row_reg, col_reg}<19'b0010000100011101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010000100011101110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000100011101111) && ({row_reg, col_reg}<19'b0010000100011110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000100011110011) && ({row_reg, col_reg}<19'b0010000100011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000100011110111) && ({row_reg, col_reg}<19'b0010000100011111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000100011111011) && ({row_reg, col_reg}<19'b0010000100100000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000100100000000) && ({row_reg, col_reg}<19'b0010000100100000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000100100000100) && ({row_reg, col_reg}<19'b0010000100100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000100100000110) && ({row_reg, col_reg}<19'b0010000100100001010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000100100001010) && ({row_reg, col_reg}<19'b0010000100100001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000100100001111) && ({row_reg, col_reg}<19'b0010000100100010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000100100010011) && ({row_reg, col_reg}<19'b0010000100100010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000100100010101) && ({row_reg, col_reg}<19'b0010000100100011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000100100011111) && ({row_reg, col_reg}<19'b0010000100100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000100100100010) && ({row_reg, col_reg}<19'b0010000101001100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000101001100101) && ({row_reg, col_reg}<19'b0010000101001100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000101001100111) && ({row_reg, col_reg}<19'b0010000101001110100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000101001110100) && ({row_reg, col_reg}<19'b0010000101001111000)) color_data = 12'b011010011111;

		if(({row_reg, col_reg}>=19'b0010000101001111000) && ({row_reg, col_reg}<19'b0010000110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110000000000) && ({row_reg, col_reg}<19'b0010000110011011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000110011011011) && ({row_reg, col_reg}<19'b0010000110011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000110011011101) && ({row_reg, col_reg}<19'b0010000110011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110011101111) && ({row_reg, col_reg}<19'b0010000110011110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000110011110011) && ({row_reg, col_reg}<19'b0010000110011110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000110011110111) && ({row_reg, col_reg}<19'b0010000110011111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000110011111011) && ({row_reg, col_reg}<19'b0010000110011111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110011111111) && ({row_reg, col_reg}<19'b0010000110100000010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000110100000010) && ({row_reg, col_reg}<19'b0010000110100001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000110100001000) && ({row_reg, col_reg}<19'b0010000110100001100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000110100001100) && ({row_reg, col_reg}<19'b0010000110100001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110100001110) && ({row_reg, col_reg}<19'b0010000110100010011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000110100010011) && ({row_reg, col_reg}<19'b0010000110100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110100010111) && ({row_reg, col_reg}<19'b0010000110100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000110100011111) && ({row_reg, col_reg}<19'b0010000111001100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000111001100101) && ({row_reg, col_reg}<19'b0010000111001100111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010000111001100111) && ({row_reg, col_reg}<19'b0010001000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000000000000) && ({row_reg, col_reg}<19'b0010001000011011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001000011011011) && ({row_reg, col_reg}<19'b0010001000011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001000011011101) && ({row_reg, col_reg}<19'b0010001000011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000011101111) && ({row_reg, col_reg}<19'b0010001000011110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001000011110011) && ({row_reg, col_reg}<19'b0010001000011110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010001000011110111) && ({row_reg, col_reg}<19'b0010001000011111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001000011111011) && ({row_reg, col_reg}<19'b0010001000011111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000011111111) && ({row_reg, col_reg}<19'b0010001000100000010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001000100000010) && ({row_reg, col_reg}<19'b0010001000100001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010001000100001000) && ({row_reg, col_reg}<19'b0010001000100001100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001000100001100) && ({row_reg, col_reg}<19'b0010001000100001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000100001110) && ({row_reg, col_reg}<19'b0010001000100010011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001000100010011) && ({row_reg, col_reg}<19'b0010001000100010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000100010111) && ({row_reg, col_reg}<19'b0010001000100011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001000100011111) && ({row_reg, col_reg}<19'b0010001001001100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001001001100101) && ({row_reg, col_reg}<19'b0010001001001100111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001001001100111) && ({row_reg, col_reg}<19'b0010001010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001010000000000) && ({row_reg, col_reg}<19'b0010001010011011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010001010011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001010011011110) && ({row_reg, col_reg}<19'b0010001010011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001010011110011) && ({row_reg, col_reg}<19'b0010001010011111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001010011111001) && ({row_reg, col_reg}<19'b0010001010100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001010100000000) && ({row_reg, col_reg}<19'b0010001010100001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001010100001010) && ({row_reg, col_reg}<19'b0010001010100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001010100010101) && ({row_reg, col_reg}<19'b0010001010100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001010100010111) && ({row_reg, col_reg}<19'b0010001011001100111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001011001100111) && ({row_reg, col_reg}<19'b0010001011001110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001011001110000) && ({row_reg, col_reg}<19'b0010001100000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001100000000000) && ({row_reg, col_reg}<19'b0010001100011011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010001100011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100011011110) && ({row_reg, col_reg}<19'b0010001100011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001100011110011) && ({row_reg, col_reg}<19'b0010001100011111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001100011111001) && ({row_reg, col_reg}<19'b0010001100100000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001100100000000) && ({row_reg, col_reg}<19'b0010001100100001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001100100001010) && ({row_reg, col_reg}<19'b0010001100100010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001100100010101) && ({row_reg, col_reg}<19'b0010001100100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100100010111) && ({row_reg, col_reg}<19'b0010001101001100111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001101001100111) && ({row_reg, col_reg}<19'b0010001101001110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001101001110000) && ({row_reg, col_reg}<19'b0010001110000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001110000000000) && ({row_reg, col_reg}<19'b0010001110011011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010001110011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110011011110) && ({row_reg, col_reg}<19'b0010001110100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001110100000010) && ({row_reg, col_reg}<19'b0010001110100000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001110100000110) && ({row_reg, col_reg}<19'b0010001110100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001110100010011) && ({row_reg, col_reg}<19'b0010001110100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110100010101) && ({row_reg, col_reg}<19'b0010001111001110000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001111001110000) && ({row_reg, col_reg}<19'b0010001111001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001111001110100) && ({row_reg, col_reg}<19'b0010001111001111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001111001111011) && ({row_reg, col_reg}<19'b0010001111001111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001111001111101) && ({row_reg, col_reg}<19'b0010010000000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010000000000000) && ({row_reg, col_reg}<19'b0010010000011011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010010000011011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000011011110) && ({row_reg, col_reg}<19'b0010010000100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010000100000010) && ({row_reg, col_reg}<19'b0010010000100000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010010000100000110) && ({row_reg, col_reg}<19'b0010010000100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010000100010011) && ({row_reg, col_reg}<19'b0010010000100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000100010101) && ({row_reg, col_reg}<19'b0010010001001110000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010001001110000) && ({row_reg, col_reg}<19'b0010010001001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010001001110100) && ({row_reg, col_reg}<19'b0010010001001111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010001001111011) && ({row_reg, col_reg}<19'b0010010001001111101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010010001001111101) && ({row_reg, col_reg}<19'b0010010010000000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010010000000000) && ({row_reg, col_reg}<19'b0010010010011011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010010011011110) && ({row_reg, col_reg}<19'b0010010010011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010011100000) && ({row_reg, col_reg}<19'b0010010010100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010010100010011) && ({row_reg, col_reg}<19'b0010010010100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010100010101) && ({row_reg, col_reg}<19'b0010010011001110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010011001110100) && ({row_reg, col_reg}<19'b0010010011001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010011001110110) && ({row_reg, col_reg}<19'b0010010011001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010011001111001) && ({row_reg, col_reg}<19'b0010010011001111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010011001111011) && ({row_reg, col_reg}<19'b0010010011001111101)) color_data = 12'b011110001110;

		if(({row_reg, col_reg}>=19'b0010010011001111101) && ({row_reg, col_reg}<19'b0010010100000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010100000000000) && ({row_reg, col_reg}<19'b0010010100011011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010100011011110) && ({row_reg, col_reg}<19'b0010010100011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010100011100000) && ({row_reg, col_reg}<19'b0010010100100010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010100100010011) && ({row_reg, col_reg}<19'b0010010100100010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010100100010101) && ({row_reg, col_reg}<19'b0010010101001110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010101001110100) && ({row_reg, col_reg}<19'b0010010101001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010101001110110) && ({row_reg, col_reg}<19'b0010010101001111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010101001111001) && ({row_reg, col_reg}<19'b0010010101001111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010101001111011) && ({row_reg, col_reg}<19'b0010010101001111101)) color_data = 12'b011110001110;

		if(({row_reg, col_reg}>=19'b0010010101001111101) && ({row_reg, col_reg}<19'b0010010110000000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010110000000000) && ({row_reg, col_reg}<19'b0010010110011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010110011100000) && ({row_reg, col_reg}<19'b0010010110011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010110011100100) && ({row_reg, col_reg}<19'b0010010110100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010110100001010) && ({row_reg, col_reg}<19'b0010010110100010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010110100010011) && ({row_reg, col_reg}<19'b0010010111001110110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010111001110110) && ({row_reg, col_reg}<19'b0010010111001111001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010010111001111001) && ({row_reg, col_reg}<19'b0010011000011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011000011100000) && ({row_reg, col_reg}<19'b0010011000011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011000011100100) && ({row_reg, col_reg}<19'b0010011000100001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011000100001010) && ({row_reg, col_reg}<19'b0010011000100010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011000100010011) && ({row_reg, col_reg}<19'b0010011001001110110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011001001110110) && ({row_reg, col_reg}<19'b0010011001001111001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011001001111001) && ({row_reg, col_reg}<19'b0010011010011100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011010011100100) && ({row_reg, col_reg}<19'b0010011010011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011010011101000) && ({row_reg, col_reg}<19'b0010011010011101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011010011101100) && ({row_reg, col_reg}<19'b0010011010011101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011010011101110) && ({row_reg, col_reg}<19'b0010011010011111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011010011111101) && ({row_reg, col_reg}<19'b0010011010011111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011010011111111) && ({row_reg, col_reg}<19'b0010011010100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011010100000110) && ({row_reg, col_reg}<19'b0010011010100001010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011010100001010) && ({row_reg, col_reg}<19'b0010011100011100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011100011100100) && ({row_reg, col_reg}<19'b0010011100011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011100011101000) && ({row_reg, col_reg}<19'b0010011100011101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011100011101100) && ({row_reg, col_reg}<19'b0010011100011101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011100011101110) && ({row_reg, col_reg}<19'b0010011100011111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011100011111101) && ({row_reg, col_reg}<19'b0010011100011111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011100011111111) && ({row_reg, col_reg}<19'b0010011100100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011100100000110) && ({row_reg, col_reg}<19'b0010011100100001010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011100100001010) && ({row_reg, col_reg}<19'b0010011110011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011110011101000) && ({row_reg, col_reg}<19'b0010011110011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011110011101100) && ({row_reg, col_reg}<19'b0010011110011101110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011110011101110) && ({row_reg, col_reg}<19'b0010011110011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011110011110001) && ({row_reg, col_reg}<19'b0010011110011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011110011111001) && ({row_reg, col_reg}<19'b0010011110011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011110011111101) && ({row_reg, col_reg}<19'b0010011110011111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010011110011111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011110100000000) && ({row_reg, col_reg}<19'b0010011110100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011110100000100) && ({row_reg, col_reg}<19'b0010011110100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011110100000110) && ({row_reg, col_reg}<19'b0010100000011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100000011101000) && ({row_reg, col_reg}<19'b0010100000011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100000011101100) && ({row_reg, col_reg}<19'b0010100000011101110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100000011101110) && ({row_reg, col_reg}<19'b0010100000011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100000011110001) && ({row_reg, col_reg}<19'b0010100000011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100000011111001) && ({row_reg, col_reg}<19'b0010100000011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100000011111101) && ({row_reg, col_reg}<19'b0010100000011111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010100000011111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100000100000000) && ({row_reg, col_reg}<19'b0010100000100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100000100000100) && ({row_reg, col_reg}<19'b0010100000100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100000100000110) && ({row_reg, col_reg}<19'b0010100010011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100010011101000) && ({row_reg, col_reg}<19'b0010100010011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100010011101100) && ({row_reg, col_reg}<19'b0010100010011101110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100010011101110) && ({row_reg, col_reg}<19'b0010100010011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100010011110001) && ({row_reg, col_reg}<19'b0010100010011111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100010011111001) && ({row_reg, col_reg}<19'b0010100010011111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100010011111101) && ({row_reg, col_reg}<19'b0010100010011111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010100010011111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100010100000000) && ({row_reg, col_reg}<19'b0010100010100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100010100000100) && ({row_reg, col_reg}<19'b0010100010100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100010100000110) && ({row_reg, col_reg}<19'b0010100100011110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100100011110001) && ({row_reg, col_reg}<19'b0010100100011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100100011111001) && ({row_reg, col_reg}<19'b0010100100100000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100100100000000) && ({row_reg, col_reg}<19'b0010100100100000100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100100100000100) && ({row_reg, col_reg}<19'b0010100110011110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100110011110001) && ({row_reg, col_reg}<19'b0010100110011111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100110011111001) && ({row_reg, col_reg}<19'b0010100110100000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100110100000000) && ({row_reg, col_reg}<19'b0010100110100000100)) color_data = 12'b000000000000;







		if(({row_reg, col_reg}>=19'b0010100110100000100) && ({row_reg, col_reg}<19'b0010110100111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010110100111000110) && ({row_reg, col_reg}<19'b0010110100111001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010110100111001110) && ({row_reg, col_reg}<19'b0010110110111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010110110111000110) && ({row_reg, col_reg}<19'b0010110110111001110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010110110111001110) && ({row_reg, col_reg}<19'b0010111000111000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111000111000100) && ({row_reg, col_reg}<19'b0010111000111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111000111000110) && ({row_reg, col_reg}<19'b0010111000111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111000111001110) && ({row_reg, col_reg}<19'b0010111000111010000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111000111010000) && ({row_reg, col_reg}<19'b0010111010111000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111010111000100) && ({row_reg, col_reg}<19'b0010111010111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111010111000110) && ({row_reg, col_reg}<19'b0010111010111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111010111001110) && ({row_reg, col_reg}<19'b0010111010111010000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111010111010000) && ({row_reg, col_reg}<19'b0010111100110111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111100110111011) && ({row_reg, col_reg}<19'b0010111100111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111100111000001) && ({row_reg, col_reg}<19'b0010111100111000011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010111100111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111100111000100) && ({row_reg, col_reg}<19'b0010111100111010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111100111010000) && ({row_reg, col_reg}<19'b0010111100111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111100111010100) && ({row_reg, col_reg}<19'b0010111110110111011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111110110111011) && ({row_reg, col_reg}<19'b0010111110111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111110111000001) && ({row_reg, col_reg}<19'b0010111110111000011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010111110111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111110111000100) && ({row_reg, col_reg}<19'b0010111110111010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111110111010000) && ({row_reg, col_reg}<19'b0010111110111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111110111010100) && ({row_reg, col_reg}<19'b0011000000110111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000000110111001) && ({row_reg, col_reg}<19'b0011000000110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000000110111011) && ({row_reg, col_reg}<19'b0011000000110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000000110111111) && ({row_reg, col_reg}<19'b0011000000111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000000111000001) && ({row_reg, col_reg}<19'b0011000000111000011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011000000111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000000111000100) && ({row_reg, col_reg}<19'b0011000000111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011000000111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000000111010101) && ({row_reg, col_reg}<19'b0011000010110111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000010110111001) && ({row_reg, col_reg}<19'b0011000010110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000010110111011) && ({row_reg, col_reg}<19'b0011000010110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000010110111111) && ({row_reg, col_reg}<19'b0011000010111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000010111000001) && ({row_reg, col_reg}<19'b0011000010111000011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011000010111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000010111000100) && ({row_reg, col_reg}<19'b0011000010111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011000010111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000010111010101) && ({row_reg, col_reg}<19'b0011000100110111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000100110111001) && ({row_reg, col_reg}<19'b0011000100110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000100110111011) && ({row_reg, col_reg}<19'b0011000100111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000100111000001) && ({row_reg, col_reg}<19'b0011000100111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0011000100111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000100111000100) && ({row_reg, col_reg}<19'b0011000100111000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011000100111000110) && ({row_reg, col_reg}<19'b0011000100111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011000100111001000) && ({row_reg, col_reg}<19'b0011000100111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000100111001010) && ({row_reg, col_reg}<19'b0011000100111001110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011000100111001110) && ({row_reg, col_reg}<19'b0011000100111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011000100111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000100111010101) && ({row_reg, col_reg}<19'b0011000110110111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000110110111001) && ({row_reg, col_reg}<19'b0011000110110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000110110111011) && ({row_reg, col_reg}<19'b0011000110111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000110111000001) && ({row_reg, col_reg}<19'b0011000110111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0011000110111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000110111000100) && ({row_reg, col_reg}<19'b0011000110111000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011000110111000110) && ({row_reg, col_reg}<19'b0011000110111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011000110111001000) && ({row_reg, col_reg}<19'b0011000110111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000110111001010) && ({row_reg, col_reg}<19'b0011000110111001110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011000110111001110) && ({row_reg, col_reg}<19'b0011000110111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011000110111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000110111010101) && ({row_reg, col_reg}<19'b0011001000110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001000110110111) && ({row_reg, col_reg}<19'b0011001000110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000110111011) && ({row_reg, col_reg}<19'b0011001000111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011001000111000011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011001000111000100) && ({row_reg, col_reg}<19'b0011001000111000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011001000111000110) && ({row_reg, col_reg}<19'b0011001000111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001000111001010) && ({row_reg, col_reg}<19'b0011001000111001110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011001000111001110) && ({row_reg, col_reg}<19'b0011001000111010000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011001000111010000) && ({row_reg, col_reg}<19'b0011001000111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011001000111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001000111010101) && ({row_reg, col_reg}<19'b0011001010110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001010110110111) && ({row_reg, col_reg}<19'b0011001010110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010110111011) && ({row_reg, col_reg}<19'b0011001010111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011001010111000011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011001010111000100) && ({row_reg, col_reg}<19'b0011001010111000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011001010111000110) && ({row_reg, col_reg}<19'b0011001010111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001010111001010) && ({row_reg, col_reg}<19'b0011001010111001110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011001010111001110) && ({row_reg, col_reg}<19'b0011001010111010000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011001010111010000) && ({row_reg, col_reg}<19'b0011001010111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011001010111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001010111010101) && ({row_reg, col_reg}<19'b0011001100110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100110110111) && ({row_reg, col_reg}<19'b0011001100110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100110111001) && ({row_reg, col_reg}<19'b0011001100111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001100111001110) && ({row_reg, col_reg}<19'b0011001100111010000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011001100111010000) && ({row_reg, col_reg}<19'b0011001100111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011001100111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001100111010101) && ({row_reg, col_reg}<19'b0011001110110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110110110111) && ({row_reg, col_reg}<19'b0011001110110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110110111001) && ({row_reg, col_reg}<19'b0011001110111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001110111001110) && ({row_reg, col_reg}<19'b0011001110111010000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011001110111010000) && ({row_reg, col_reg}<19'b0011001110111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011001110111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001110111010101) && ({row_reg, col_reg}<19'b0011010000110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010000110110111) && ({row_reg, col_reg}<19'b0011010000110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000110111001) && ({row_reg, col_reg}<19'b0011010000111001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010000111001110) && ({row_reg, col_reg}<19'b0011010000111010000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011010000111010000) && ({row_reg, col_reg}<19'b0011010000111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011010000111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010000111010101) && ({row_reg, col_reg}<19'b0011010010110101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010110101100) && ({row_reg, col_reg}<19'b0011010010110101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110101110) && ({row_reg, col_reg}<19'b0011010010110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010110110111) && ({row_reg, col_reg}<19'b0011010010110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110111001) && ({row_reg, col_reg}<19'b0011010010111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010010111010101) && ({row_reg, col_reg}<19'b0011010010111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010010111010111) && ({row_reg, col_reg}<19'b0011010100110101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010100110101100) && ({row_reg, col_reg}<19'b0011010100110101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010100110101110) && ({row_reg, col_reg}<19'b0011010100110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010100110110111) && ({row_reg, col_reg}<19'b0011010100110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010100110111001) && ({row_reg, col_reg}<19'b0011010100111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010100111010101) && ({row_reg, col_reg}<19'b0011010100111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010100111010111) && ({row_reg, col_reg}<19'b0011010110110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010110110101010) && ({row_reg, col_reg}<19'b0011010110110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110101100) && ({row_reg, col_reg}<19'b0011010110110101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110110101110) && ({row_reg, col_reg}<19'b0011010110110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110110000) && ({row_reg, col_reg}<19'b0011010110110110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010110110110101) && ({row_reg, col_reg}<19'b0011010110110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110110111) && ({row_reg, col_reg}<19'b0011010110111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110111010111) && ({row_reg, col_reg}<19'b0011010110111011001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010110111011001) && ({row_reg, col_reg}<19'b0011011000110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011000110101010) && ({row_reg, col_reg}<19'b0011011000110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011000110101100) && ({row_reg, col_reg}<19'b0011011000110101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000110101110) && ({row_reg, col_reg}<19'b0011011000110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011000110110000) && ({row_reg, col_reg}<19'b0011011000110110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011000110110101) && ({row_reg, col_reg}<19'b0011011000110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011000110110111) && ({row_reg, col_reg}<19'b0011011000111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000111010111) && ({row_reg, col_reg}<19'b0011011000111011001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011000111011001) && ({row_reg, col_reg}<19'b0011011010110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011010110101010) && ({row_reg, col_reg}<19'b0011011010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011010110101100) && ({row_reg, col_reg}<19'b0011011010110101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010110101110) && ({row_reg, col_reg}<19'b0011011010110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011010110110000) && ({row_reg, col_reg}<19'b0011011010110110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011011010110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011010110110101) && ({row_reg, col_reg}<19'b0011011010111011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010111011001) && ({row_reg, col_reg}<19'b0011011010111011011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011010111011011) && ({row_reg, col_reg}<19'b0011011100110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011100110101010) && ({row_reg, col_reg}<19'b0011011100110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011100110101100) && ({row_reg, col_reg}<19'b0011011100110101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011100110101110) && ({row_reg, col_reg}<19'b0011011100110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011100110110000) && ({row_reg, col_reg}<19'b0011011100110110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011011100110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011100110110101) && ({row_reg, col_reg}<19'b0011011100111011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011100111011001) && ({row_reg, col_reg}<19'b0011011100111011011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011100111011011) && ({row_reg, col_reg}<19'b0011011110110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011110110100100) && ({row_reg, col_reg}<19'b0011011110110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011110110100110) && ({row_reg, col_reg}<19'b0011011110110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011110110101010) && ({row_reg, col_reg}<19'b0011011110110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011110110101100) && ({row_reg, col_reg}<19'b0011011110110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011110110110000) && ({row_reg, col_reg}<19'b0011011110110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011110110110010) && ({row_reg, col_reg}<19'b0011011110110110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011011110110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011110110110101) && ({row_reg, col_reg}<19'b0011011110111011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011110111011011) && ({row_reg, col_reg}<19'b0011011110111011111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011110111011111) && ({row_reg, col_reg}<19'b0011100000110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100000110100100) && ({row_reg, col_reg}<19'b0011100000110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100000110100110) && ({row_reg, col_reg}<19'b0011100000110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100000110101010) && ({row_reg, col_reg}<19'b0011100000110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100000110101100) && ({row_reg, col_reg}<19'b0011100000110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100000110110000) && ({row_reg, col_reg}<19'b0011100000110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100000110110010) && ({row_reg, col_reg}<19'b0011100000110110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011100000110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100000110110101) && ({row_reg, col_reg}<19'b0011100000111011011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100000111011011) && ({row_reg, col_reg}<19'b0011100000111011111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100000111011111) && ({row_reg, col_reg}<19'b0011100010000111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100010000111001) && ({row_reg, col_reg}<19'b0011100010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010001000000) && ({row_reg, col_reg}<19'b0011100010110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011100010110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010110100100) && ({row_reg, col_reg}<19'b0011100010110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100010110100110) && ({row_reg, col_reg}<19'b0011100010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010110101000) && ({row_reg, col_reg}<19'b0011100010110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100010110101010) && ({row_reg, col_reg}<19'b0011100010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010110101100) && ({row_reg, col_reg}<19'b0011100010110110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100010110110010) && ({row_reg, col_reg}<19'b0011100010110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010110110100) && ({row_reg, col_reg}<19'b0011100010111011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100010111011111) && ({row_reg, col_reg}<19'b0011100010111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100010111100001) && ({row_reg, col_reg}<19'b0011100100000111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100100000111001) && ({row_reg, col_reg}<19'b0011100100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100001000000) && ({row_reg, col_reg}<19'b0011100100110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011100100110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100110100100) && ({row_reg, col_reg}<19'b0011100100110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100100110100110) && ({row_reg, col_reg}<19'b0011100100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100110101000) && ({row_reg, col_reg}<19'b0011100100110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100100110101010) && ({row_reg, col_reg}<19'b0011100100110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100110101100) && ({row_reg, col_reg}<19'b0011100100110110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100100110110010) && ({row_reg, col_reg}<19'b0011100100110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100110110100) && ({row_reg, col_reg}<19'b0011100100111011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100100111011111) && ({row_reg, col_reg}<19'b0011100100111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100100111100001) && ({row_reg, col_reg}<19'b0011100110000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100110000110111) && ({row_reg, col_reg}<19'b0011100110000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100110000111001) && ({row_reg, col_reg}<19'b0011100110001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100110001000000) && ({row_reg, col_reg}<19'b0011100110001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100110001000010) && ({row_reg, col_reg}<19'b0011100110110100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100110110100001) && ({row_reg, col_reg}<19'b0011100110110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100110110100011) && ({row_reg, col_reg}<19'b0011100110110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100110110101000) && ({row_reg, col_reg}<19'b0011100110110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100110110101010) && ({row_reg, col_reg}<19'b0011100110111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100110111100001) && ({row_reg, col_reg}<19'b0011100110111100011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100110111100011) && ({row_reg, col_reg}<19'b0011101000000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101000000110111) && ({row_reg, col_reg}<19'b0011101000000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101000000111001) && ({row_reg, col_reg}<19'b0011101000001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101000001000000) && ({row_reg, col_reg}<19'b0011101000001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101000001000010) && ({row_reg, col_reg}<19'b0011101000110100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101000110100001) && ({row_reg, col_reg}<19'b0011101000110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101000110100011) && ({row_reg, col_reg}<19'b0011101000110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101000110101000) && ({row_reg, col_reg}<19'b0011101000110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101000110101010) && ({row_reg, col_reg}<19'b0011101000111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101000111100001) && ({row_reg, col_reg}<19'b0011101000111100011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101000111100011) && ({row_reg, col_reg}<19'b0011101010000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101010000110011) && ({row_reg, col_reg}<19'b0011101010000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101010000110111) && ({row_reg, col_reg}<19'b0011101010001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101010001000010) && ({row_reg, col_reg}<19'b0011101010001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101010001000100) && ({row_reg, col_reg}<19'b0011101010001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101010001000110) && ({row_reg, col_reg}<19'b0011101010001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101010001001011) && ({row_reg, col_reg}<19'b0011101010110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101010110011111) && ({row_reg, col_reg}<19'b0011101010110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101010110100001) && ({row_reg, col_reg}<19'b0011101010111100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101010111100011) && ({row_reg, col_reg}<19'b0011101010111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101010111100101) && ({row_reg, col_reg}<19'b0011101100000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101100000110011) && ({row_reg, col_reg}<19'b0011101100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101100000110111) && ({row_reg, col_reg}<19'b0011101100001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101100001000010) && ({row_reg, col_reg}<19'b0011101100001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101100001000100) && ({row_reg, col_reg}<19'b0011101100001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101100001000110) && ({row_reg, col_reg}<19'b0011101100001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101100001001011) && ({row_reg, col_reg}<19'b0011101100110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101100110011111) && ({row_reg, col_reg}<19'b0011101100110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101100110100001) && ({row_reg, col_reg}<19'b0011101100111100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101100111100011) && ({row_reg, col_reg}<19'b0011101100111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101100111100101) && ({row_reg, col_reg}<19'b0011101110000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101110000110001) && ({row_reg, col_reg}<19'b0011101110000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101110000110011) && ({row_reg, col_reg}<19'b0011101110001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101110001000010) && ({row_reg, col_reg}<19'b0011101110001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101110001000100) && ({row_reg, col_reg}<19'b0011101110001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101110001000110) && ({row_reg, col_reg}<19'b0011101110001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101110001001000) && ({row_reg, col_reg}<19'b0011101110001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101110001001011) && ({row_reg, col_reg}<19'b0011101110001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101110001001101) && ({row_reg, col_reg}<19'b0011101110110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101110110011111) && ({row_reg, col_reg}<19'b0011101110110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101110110100001) && ({row_reg, col_reg}<19'b0011101110111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011101110111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101110111100110) && ({row_reg, col_reg}<19'b0011110000000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110000000110001) && ({row_reg, col_reg}<19'b0011110000000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110000000110011) && ({row_reg, col_reg}<19'b0011110000001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110000001000010) && ({row_reg, col_reg}<19'b0011110000001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110000001000100) && ({row_reg, col_reg}<19'b0011110000001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110000001000110) && ({row_reg, col_reg}<19'b0011110000001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110000001001000) && ({row_reg, col_reg}<19'b0011110000001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110000001001011) && ({row_reg, col_reg}<19'b0011110000001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110000001001101) && ({row_reg, col_reg}<19'b0011110000110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110000110011111) && ({row_reg, col_reg}<19'b0011110000110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110000110100001) && ({row_reg, col_reg}<19'b0011110000111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011110000111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110000111100110) && ({row_reg, col_reg}<19'b0011110010000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110010000110001) && ({row_reg, col_reg}<19'b0011110010000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110010000110011) && ({row_reg, col_reg}<19'b0011110010000111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110010000111001) && ({row_reg, col_reg}<19'b0011110010000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110010000111100) && ({row_reg, col_reg}<19'b0011110010000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110010000111110) && ({row_reg, col_reg}<19'b0011110010001000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011110010001000000) && ({row_reg, col_reg}<19'b0011110010001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110010001000010) && ({row_reg, col_reg}<19'b0011110010001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110010001000100) && ({row_reg, col_reg}<19'b0011110010001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110010001000110) && ({row_reg, col_reg}<19'b0011110010001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110010001001011) && ({row_reg, col_reg}<19'b0011110010001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110010001001101) && ({row_reg, col_reg}<19'b0011110010110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110010110011111) && ({row_reg, col_reg}<19'b0011110010110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110010110100001) && ({row_reg, col_reg}<19'b0011110010110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110010110110111) && ({row_reg, col_reg}<19'b0011110010110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110010110111001) && ({row_reg, col_reg}<19'b0011110010111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011110010111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110010111100110) && ({row_reg, col_reg}<19'b0011110100000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110100000110001) && ({row_reg, col_reg}<19'b0011110100000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110100000110011) && ({row_reg, col_reg}<19'b0011110100000111001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110100000111001) && ({row_reg, col_reg}<19'b0011110100000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110100000111100) && ({row_reg, col_reg}<19'b0011110100000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110100000111110) && ({row_reg, col_reg}<19'b0011110100001000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011110100001000000) && ({row_reg, col_reg}<19'b0011110100001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110100001000010) && ({row_reg, col_reg}<19'b0011110100001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110100001000100) && ({row_reg, col_reg}<19'b0011110100001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110100001000110) && ({row_reg, col_reg}<19'b0011110100001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110100001001011) && ({row_reg, col_reg}<19'b0011110100001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110100001001101) && ({row_reg, col_reg}<19'b0011110100110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110100110011111) && ({row_reg, col_reg}<19'b0011110100110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110100110100001) && ({row_reg, col_reg}<19'b0011110100110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110100110110111) && ({row_reg, col_reg}<19'b0011110100110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110100110111001) && ({row_reg, col_reg}<19'b0011110100111100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011110100111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110100111100110) && ({row_reg, col_reg}<19'b0011110110000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110110000110001) && ({row_reg, col_reg}<19'b0011110110000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110110000110011) && ({row_reg, col_reg}<19'b0011110110000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110000110111) && ({row_reg, col_reg}<19'b0011110110000111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110110000111001) && ({row_reg, col_reg}<19'b0011110110000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011110110000111100) && ({row_reg, col_reg}<19'b0011110110001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110001000000) && ({row_reg, col_reg}<19'b0011110110001000010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011110110001000010) && ({row_reg, col_reg}<19'b0011110110001000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110110001000100) && ({row_reg, col_reg}<19'b0011110110001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110001001011) && ({row_reg, col_reg}<19'b0011110110001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110110001001111) && ({row_reg, col_reg}<19'b0011110110110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110110110011111) && ({row_reg, col_reg}<19'b0011110110110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110110110100001) && ({row_reg, col_reg}<19'b0011110110110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110110110111) && ({row_reg, col_reg}<19'b0011110110110111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011110110110111001) && ({row_reg, col_reg}<19'b0011110110110111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110110110111011) && ({row_reg, col_reg}<19'b0011110110111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110111001010) && ({row_reg, col_reg}<19'b0011110110111001100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110110111001100) && ({row_reg, col_reg}<19'b0011110110111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110111010100) && ({row_reg, col_reg}<19'b0011110110111010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011110110111010111) && ({row_reg, col_reg}<19'b0011110110111100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110111100011) && ({row_reg, col_reg}<19'b0011110110111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110110111100101) && ({row_reg, col_reg}<19'b0011111000000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111000000110001) && ({row_reg, col_reg}<19'b0011111000000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111000000110011) && ({row_reg, col_reg}<19'b0011111000000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000000110111) && ({row_reg, col_reg}<19'b0011111000000111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111000000111001) && ({row_reg, col_reg}<19'b0011111000000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111000000111100) && ({row_reg, col_reg}<19'b0011111000001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000001000000) && ({row_reg, col_reg}<19'b0011111000001000010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111000001000010) && ({row_reg, col_reg}<19'b0011111000001000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111000001000100) && ({row_reg, col_reg}<19'b0011111000001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000001001011) && ({row_reg, col_reg}<19'b0011111000001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111000001001111) && ({row_reg, col_reg}<19'b0011111000110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111000110011111) && ({row_reg, col_reg}<19'b0011111000110100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111000110100001) && ({row_reg, col_reg}<19'b0011111000110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000110110111) && ({row_reg, col_reg}<19'b0011111000110111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111000110111001) && ({row_reg, col_reg}<19'b0011111000110111011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111000110111011) && ({row_reg, col_reg}<19'b0011111000111001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000111001010) && ({row_reg, col_reg}<19'b0011111000111001100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111000111001100) && ({row_reg, col_reg}<19'b0011111000111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000111010100) && ({row_reg, col_reg}<19'b0011111000111010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111000111010111) && ({row_reg, col_reg}<19'b0011111000111100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000111100011) && ({row_reg, col_reg}<19'b0011111000111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111000111100101) && ({row_reg, col_reg}<19'b0011111010000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111010000110001) && ({row_reg, col_reg}<19'b0011111010000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111010000110011) && ({row_reg, col_reg}<19'b0011111010000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010000110111) && ({row_reg, col_reg}<19'b0011111010000111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111010000111001) && ({row_reg, col_reg}<19'b0011111010001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010001001101) && ({row_reg, col_reg}<19'b0011111010001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111010001001111) && ({row_reg, col_reg}<19'b0011111010110100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111010110100001) && ({row_reg, col_reg}<19'b0011111010110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111010110100011) && ({row_reg, col_reg}<19'b0011111010110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010110110111) && ({row_reg, col_reg}<19'b0011111010110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111010110111001) && ({row_reg, col_reg}<19'b0011111010110111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111010110111011) && ({row_reg, col_reg}<19'b0011111010110111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111010110111111) && ({row_reg, col_reg}<19'b0011111010111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010111001000) && ({row_reg, col_reg}<19'b0011111010111001010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111010111001010) && ({row_reg, col_reg}<19'b0011111010111001100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111010111001100) && ({row_reg, col_reg}<19'b0011111010111010000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111010111010000) && ({row_reg, col_reg}<19'b0011111010111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010111010010) && ({row_reg, col_reg}<19'b0011111010111010100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111010111010100) && ({row_reg, col_reg}<19'b0011111010111010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111010111010111) && ({row_reg, col_reg}<19'b0011111010111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010111100001) && ({row_reg, col_reg}<19'b0011111010111100011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111010111100011) && ({row_reg, col_reg}<19'b0011111100000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111100000110001) && ({row_reg, col_reg}<19'b0011111100000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111100000110011) && ({row_reg, col_reg}<19'b0011111100000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100000110111) && ({row_reg, col_reg}<19'b0011111100000111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111100000111001) && ({row_reg, col_reg}<19'b0011111100001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100001001101) && ({row_reg, col_reg}<19'b0011111100001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111100001001111) && ({row_reg, col_reg}<19'b0011111100110100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111100110100001) && ({row_reg, col_reg}<19'b0011111100110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111100110100011) && ({row_reg, col_reg}<19'b0011111100110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100110110111) && ({row_reg, col_reg}<19'b0011111100110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111100110111001) && ({row_reg, col_reg}<19'b0011111100110111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111100110111011) && ({row_reg, col_reg}<19'b0011111100110111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111100110111111) && ({row_reg, col_reg}<19'b0011111100111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100111001000) && ({row_reg, col_reg}<19'b0011111100111001010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111100111001010) && ({row_reg, col_reg}<19'b0011111100111001100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111100111001100) && ({row_reg, col_reg}<19'b0011111100111010000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111100111010000) && ({row_reg, col_reg}<19'b0011111100111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100111010010) && ({row_reg, col_reg}<19'b0011111100111010100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111100111010100) && ({row_reg, col_reg}<19'b0011111100111010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111100111010111) && ({row_reg, col_reg}<19'b0011111100111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100111100001) && ({row_reg, col_reg}<19'b0011111100111100011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111100111100011) && ({row_reg, col_reg}<19'b0011111110000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111110000110001) && ({row_reg, col_reg}<19'b0011111110000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111110000110011) && ({row_reg, col_reg}<19'b0011111110000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110000110111) && ({row_reg, col_reg}<19'b0011111110000111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111110000111001) && ({row_reg, col_reg}<19'b0011111110001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110001001101) && ({row_reg, col_reg}<19'b0011111110001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111110001001111) && ({row_reg, col_reg}<19'b0011111110110100001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111110110100001) && ({row_reg, col_reg}<19'b0011111110110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111110110100011) && ({row_reg, col_reg}<19'b0011111110110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110110110111) && ({row_reg, col_reg}<19'b0011111110110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111110110111001) && ({row_reg, col_reg}<19'b0011111110110111011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111110110111011) && ({row_reg, col_reg}<19'b0011111110110111111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111110110111111) && ({row_reg, col_reg}<19'b0011111110111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110111001000) && ({row_reg, col_reg}<19'b0011111110111001010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111110111001010) && ({row_reg, col_reg}<19'b0011111110111001100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111110111001100) && ({row_reg, col_reg}<19'b0011111110111010000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111110111010000) && ({row_reg, col_reg}<19'b0011111110111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110111010010) && ({row_reg, col_reg}<19'b0011111110111010100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111110111010100) && ({row_reg, col_reg}<19'b0011111110111010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111110111010111) && ({row_reg, col_reg}<19'b0011111110111100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110111100001) && ({row_reg, col_reg}<19'b0011111110111100011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111110111100011) && ({row_reg, col_reg}<19'b0100000000000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000000000101111) && ({row_reg, col_reg}<19'b0100000000000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000000000110001) && ({row_reg, col_reg}<19'b0100000000001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000001001101) && ({row_reg, col_reg}<19'b0100000000001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000000001001111) && ({row_reg, col_reg}<19'b0100000000001011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100000000001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000000001011010) && ({row_reg, col_reg}<19'b0100000000110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100000000110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000000110100100) && ({row_reg, col_reg}<19'b0100000000110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000110110000) && ({row_reg, col_reg}<19'b0100000000110110010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000000110110010) && ({row_reg, col_reg}<19'b0100000000110110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000110110101) && ({row_reg, col_reg}<19'b0100000000110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000000110111001) && ({row_reg, col_reg}<19'b0100000000110111111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000000110111111) && ({row_reg, col_reg}<19'b0100000000111000011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0100000000111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000111000100) && ({row_reg, col_reg}<19'b0100000000111001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000000111001000) && ({row_reg, col_reg}<19'b0100000000111001110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000000111001110) && ({row_reg, col_reg}<19'b0100000000111010010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000000111010010) && ({row_reg, col_reg}<19'b0100000000111010100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000000111010100) && ({row_reg, col_reg}<19'b0100000000111011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000111011101) && ({row_reg, col_reg}<19'b0100000000111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000000111100001) && ({row_reg, col_reg}<19'b0100000010000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000010000101111) && ({row_reg, col_reg}<19'b0100000010000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010000110001) && ({row_reg, col_reg}<19'b0100000010001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010001001101) && ({row_reg, col_reg}<19'b0100000010001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010001001111) && ({row_reg, col_reg}<19'b0100000010001011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100000010001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010001011010) && ({row_reg, col_reg}<19'b0100000010110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100000010110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010110100100) && ({row_reg, col_reg}<19'b0100000010110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010110110000) && ({row_reg, col_reg}<19'b0100000010110110010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000010110110010) && ({row_reg, col_reg}<19'b0100000010110110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010110110101) && ({row_reg, col_reg}<19'b0100000010110111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000010110111001) && ({row_reg, col_reg}<19'b0100000010110111111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000010110111111) && ({row_reg, col_reg}<19'b0100000010111000011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0100000010111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010111000100) && ({row_reg, col_reg}<19'b0100000010111001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000010111001000) && ({row_reg, col_reg}<19'b0100000010111001110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000010111001110) && ({row_reg, col_reg}<19'b0100000010111010010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000010111010010) && ({row_reg, col_reg}<19'b0100000010111010100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000010111010100) && ({row_reg, col_reg}<19'b0100000010111011101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010111011101) && ({row_reg, col_reg}<19'b0100000010111100001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000010111100001) && ({row_reg, col_reg}<19'b0100000100000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000100000101101) && ({row_reg, col_reg}<19'b0100000100000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100000101111) && ({row_reg, col_reg}<19'b0100000100001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100001001111) && ({row_reg, col_reg}<19'b0100000100001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100001010001) && ({row_reg, col_reg}<19'b0100000100001010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000100001010111) && ({row_reg, col_reg}<19'b0100000100001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0100000100001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100001011010) && ({row_reg, col_reg}<19'b0100000100001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100001011100) && ({row_reg, col_reg}<19'b0100000100110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000100110100100) && ({row_reg, col_reg}<19'b0100000100110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100110100110) && ({row_reg, col_reg}<19'b0100000100110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100110110000) && ({row_reg, col_reg}<19'b0100000100110110010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100110110010) && ({row_reg, col_reg}<19'b0100000100110110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000100110110101) && ({row_reg, col_reg}<19'b0100000100110111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100110111001) && ({row_reg, col_reg}<19'b0100000100110111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100110111101) && ({row_reg, col_reg}<19'b0100000100111000001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100111000001) && ({row_reg, col_reg}<19'b0100000100111000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000100111000110) && ({row_reg, col_reg}<19'b0100000100111001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100111001010) && ({row_reg, col_reg}<19'b0100000100111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100111001100) && ({row_reg, col_reg}<19'b0100000100111010010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100111010010) && ({row_reg, col_reg}<19'b0100000100111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100111010101) && ({row_reg, col_reg}<19'b0100000100111011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000100111011101) && ({row_reg, col_reg}<19'b0100000110000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000110000101101) && ({row_reg, col_reg}<19'b0100000110000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110000101111) && ({row_reg, col_reg}<19'b0100000110001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110001001111) && ({row_reg, col_reg}<19'b0100000110001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110001010001) && ({row_reg, col_reg}<19'b0100000110001010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000110001010111) && ({row_reg, col_reg}<19'b0100000110001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0100000110001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110001011010) && ({row_reg, col_reg}<19'b0100000110001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110001011100) && ({row_reg, col_reg}<19'b0100000110110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000110110100100) && ({row_reg, col_reg}<19'b0100000110110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110110100110) && ({row_reg, col_reg}<19'b0100000110110110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110110110000) && ({row_reg, col_reg}<19'b0100000110110110010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110110110010) && ({row_reg, col_reg}<19'b0100000110110110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000110110110101) && ({row_reg, col_reg}<19'b0100000110110111001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110110111001) && ({row_reg, col_reg}<19'b0100000110110111101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110110111101) && ({row_reg, col_reg}<19'b0100000110111000001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110111000001) && ({row_reg, col_reg}<19'b0100000110111000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000110111000110) && ({row_reg, col_reg}<19'b0100000110111001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110111001010) && ({row_reg, col_reg}<19'b0100000110111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110111001100) && ({row_reg, col_reg}<19'b0100000110111010010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110111010010) && ({row_reg, col_reg}<19'b0100000110111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110111010101) && ({row_reg, col_reg}<19'b0100000110111011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000110111011101) && ({row_reg, col_reg}<19'b0100001000000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001000000101011) && ({row_reg, col_reg}<19'b0100001000000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000000101101) && ({row_reg, col_reg}<19'b0100001000001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000001010001) && ({row_reg, col_reg}<19'b0100001000001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000001010011) && ({row_reg, col_reg}<19'b0100001000001010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001000001010111) && ({row_reg, col_reg}<19'b0100001000001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0100001000001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000001011010) && ({row_reg, col_reg}<19'b0100001000001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000001011100) && ({row_reg, col_reg}<19'b0100001000110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100001000110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000110100100) && ({row_reg, col_reg}<19'b0100001000110110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000110110010) && ({row_reg, col_reg}<19'b0100001000110110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001000110110111) && ({row_reg, col_reg}<19'b0100001000110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000110111111) && ({row_reg, col_reg}<19'b0100001000111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001000111001000) && ({row_reg, col_reg}<19'b0100001000111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100001000111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001000111010101) && ({row_reg, col_reg}<19'b0100001010000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001010000101011) && ({row_reg, col_reg}<19'b0100001010000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010000101101) && ({row_reg, col_reg}<19'b0100001010001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010001010001) && ({row_reg, col_reg}<19'b0100001010001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010001010011) && ({row_reg, col_reg}<19'b0100001010001010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001010001010111) && ({row_reg, col_reg}<19'b0100001010001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0100001010001011001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010001011010) && ({row_reg, col_reg}<19'b0100001010001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010001011100) && ({row_reg, col_reg}<19'b0100001010110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100001010110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010110100100) && ({row_reg, col_reg}<19'b0100001010110110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010110110010) && ({row_reg, col_reg}<19'b0100001010110110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001010110110111) && ({row_reg, col_reg}<19'b0100001010110111111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010110111111) && ({row_reg, col_reg}<19'b0100001010111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001010111001000) && ({row_reg, col_reg}<19'b0100001010111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100001010111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001010111010101) && ({row_reg, col_reg}<19'b0100001100000101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100000101000) && ({row_reg, col_reg}<19'b0100001100000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100000101011) && ({row_reg, col_reg}<19'b0100001100001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100001010001) && ({row_reg, col_reg}<19'b0100001100001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001010011) && ({row_reg, col_reg}<19'b0100001100001010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100001010101) && ({row_reg, col_reg}<19'b0100001100001010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001010111) && ({row_reg, col_reg}<19'b0100001100001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100001011010) && ({row_reg, col_reg}<19'b0100001100001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001011100) && ({row_reg, col_reg}<19'b0100001100001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100001100000) && ({row_reg, col_reg}<19'b0100001100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001100010) && ({row_reg, col_reg}<19'b0100001100110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100110011111) && ({row_reg, col_reg}<19'b0100001100110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100110100011) && ({row_reg, col_reg}<19'b0100001100111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100111000001) && ({row_reg, col_reg}<19'b0100001100111000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001100111000100) && ({row_reg, col_reg}<19'b0100001100111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100111010010) && ({row_reg, col_reg}<19'b0100001100111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001100111010100) && ({row_reg, col_reg}<19'b0100001110000101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110000101000) && ({row_reg, col_reg}<19'b0100001110000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110000101011) && ({row_reg, col_reg}<19'b0100001110001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110001010001) && ({row_reg, col_reg}<19'b0100001110001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001010011) && ({row_reg, col_reg}<19'b0100001110001010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110001010101) && ({row_reg, col_reg}<19'b0100001110001010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001010111) && ({row_reg, col_reg}<19'b0100001110001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110001011010) && ({row_reg, col_reg}<19'b0100001110001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001011100) && ({row_reg, col_reg}<19'b0100001110001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110001100000) && ({row_reg, col_reg}<19'b0100001110001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001100010) && ({row_reg, col_reg}<19'b0100001110110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110110011111) && ({row_reg, col_reg}<19'b0100001110110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110110100011) && ({row_reg, col_reg}<19'b0100001110111000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110111000001) && ({row_reg, col_reg}<19'b0100001110111000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001110111000100) && ({row_reg, col_reg}<19'b0100001110111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110111010010) && ({row_reg, col_reg}<19'b0100001110111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001110111010100) && ({row_reg, col_reg}<19'b0100010000000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010000000100110) && ({row_reg, col_reg}<19'b0100010000000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000000101000) && ({row_reg, col_reg}<19'b0100010000001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001010011) && ({row_reg, col_reg}<19'b0100010000001010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001010101) && ({row_reg, col_reg}<19'b0100010000001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001011010) && ({row_reg, col_reg}<19'b0100010000001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001011100) && ({row_reg, col_reg}<19'b0100010000001011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010000001011110) && ({row_reg, col_reg}<19'b0100010000001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001100000) && ({row_reg, col_reg}<19'b0100010000001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001100010) && ({row_reg, col_reg}<19'b0100010000001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001100100) && ({row_reg, col_reg}<19'b0100010000110011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010000110011101) && ({row_reg, col_reg}<19'b0100010000110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000110011111) && ({row_reg, col_reg}<19'b0100010000111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000111010010) && ({row_reg, col_reg}<19'b0100010000111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010000111010100) && ({row_reg, col_reg}<19'b0100010010000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010010000100110) && ({row_reg, col_reg}<19'b0100010010000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010000101000) && ({row_reg, col_reg}<19'b0100010010001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001010011) && ({row_reg, col_reg}<19'b0100010010001010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001010101) && ({row_reg, col_reg}<19'b0100010010001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001011010) && ({row_reg, col_reg}<19'b0100010010001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001011100) && ({row_reg, col_reg}<19'b0100010010001011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010010001011110) && ({row_reg, col_reg}<19'b0100010010001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001100000) && ({row_reg, col_reg}<19'b0100010010001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001100010) && ({row_reg, col_reg}<19'b0100010010001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001100100) && ({row_reg, col_reg}<19'b0100010010110011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010010110011101) && ({row_reg, col_reg}<19'b0100010010110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010110011111) && ({row_reg, col_reg}<19'b0100010010111010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010111010010) && ({row_reg, col_reg}<19'b0100010010111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010010111010100) && ({row_reg, col_reg}<19'b0100010100000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010100000100100) && ({row_reg, col_reg}<19'b0100010100000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100000100110) && ({row_reg, col_reg}<19'b0100010100001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100001011100) && ({row_reg, col_reg}<19'b0100010100001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100001011110) && ({row_reg, col_reg}<19'b0100010100001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100001100100) && ({row_reg, col_reg}<19'b0100010100001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100001100110) && ({row_reg, col_reg}<19'b0100010100110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010100110011111) && ({row_reg, col_reg}<19'b0100010100110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100110100011) && ({row_reg, col_reg}<19'b0100010100111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100111001000) && ({row_reg, col_reg}<19'b0100010100111010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010100111010010) && ({row_reg, col_reg}<19'b0100010110000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010110000100100) && ({row_reg, col_reg}<19'b0100010110000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110000100110) && ({row_reg, col_reg}<19'b0100010110001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110001011100) && ({row_reg, col_reg}<19'b0100010110001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110001011110) && ({row_reg, col_reg}<19'b0100010110001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110001100100) && ({row_reg, col_reg}<19'b0100010110001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110001100110) && ({row_reg, col_reg}<19'b0100010110110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010110110011111) && ({row_reg, col_reg}<19'b0100010110110100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110110100011) && ({row_reg, col_reg}<19'b0100010110111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110111001000) && ({row_reg, col_reg}<19'b0100010110111010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010110111010010) && ({row_reg, col_reg}<19'b0100011000000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011000000100010) && ({row_reg, col_reg}<19'b0100011000000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000000100100) && ({row_reg, col_reg}<19'b0100011000001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000001100110) && ({row_reg, col_reg}<19'b0100011000001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000001101000) && ({row_reg, col_reg}<19'b0100011000110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011000110100011) && ({row_reg, col_reg}<19'b0100011000110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000110100110) && ({row_reg, col_reg}<19'b0100011000110101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000110101010) && ({row_reg, col_reg}<19'b0100011000110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000110101100) && ({row_reg, col_reg}<19'b0100011000110111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000110111011) && ({row_reg, col_reg}<19'b0100011000110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000110111101) && ({row_reg, col_reg}<19'b0100011000111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000111000100) && ({row_reg, col_reg}<19'b0100011000111001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011000111001000) && ({row_reg, col_reg}<19'b0100011010000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011010000100010) && ({row_reg, col_reg}<19'b0100011010000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010000100100) && ({row_reg, col_reg}<19'b0100011010001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010001100110) && ({row_reg, col_reg}<19'b0100011010001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010001101000) && ({row_reg, col_reg}<19'b0100011010110100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011010110100011) && ({row_reg, col_reg}<19'b0100011010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010110100110) && ({row_reg, col_reg}<19'b0100011010110101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010110101010) && ({row_reg, col_reg}<19'b0100011010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010110101100) && ({row_reg, col_reg}<19'b0100011010110111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010110111011) && ({row_reg, col_reg}<19'b0100011010110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010110111101) && ({row_reg, col_reg}<19'b0100011010111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010111000100) && ({row_reg, col_reg}<19'b0100011010111001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011010111001000) && ({row_reg, col_reg}<19'b0100011100000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100000100000) && ({row_reg, col_reg}<19'b0100011100000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100000100010) && ({row_reg, col_reg}<19'b0100011100001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011100001100110) && ({row_reg, col_reg}<19'b0100011100001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100001101000) && ({row_reg, col_reg}<19'b0100011100110100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100110100110) && ({row_reg, col_reg}<19'b0100011100110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100110101010) && ({row_reg, col_reg}<19'b0100011100110101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100110101100) && ({row_reg, col_reg}<19'b0100011100110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100110110000) && ({row_reg, col_reg}<19'b0100011100110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011100110110111) && ({row_reg, col_reg}<19'b0100011100110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100110111011) && ({row_reg, col_reg}<19'b0100011100110111101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100110111101) && ({row_reg, col_reg}<19'b0100011100110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100110111111) && ({row_reg, col_reg}<19'b0100011100111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100011100111000011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011100111000100) && ({row_reg, col_reg}<19'b0100011110000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110000100000) && ({row_reg, col_reg}<19'b0100011110000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110000100010) && ({row_reg, col_reg}<19'b0100011110001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011110001100110) && ({row_reg, col_reg}<19'b0100011110001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110001101000) && ({row_reg, col_reg}<19'b0100011110110100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110110100110) && ({row_reg, col_reg}<19'b0100011110110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110110101010) && ({row_reg, col_reg}<19'b0100011110110101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110110101100) && ({row_reg, col_reg}<19'b0100011110110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110110110000) && ({row_reg, col_reg}<19'b0100011110110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011110110110111) && ({row_reg, col_reg}<19'b0100011110110111011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110110111011) && ({row_reg, col_reg}<19'b0100011110110111101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110110111101) && ({row_reg, col_reg}<19'b0100011110110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110110111111) && ({row_reg, col_reg}<19'b0100011110111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100011110111000011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011110111000100) && ({row_reg, col_reg}<19'b0100100000000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100000000100000) && ({row_reg, col_reg}<19'b0100100000000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000000100010) && ({row_reg, col_reg}<19'b0100100000001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100000001001101) && ({row_reg, col_reg}<19'b0100100000001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100000001001111) && ({row_reg, col_reg}<19'b0100100000001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100000001100110) && ({row_reg, col_reg}<19'b0100100000001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000001101000) && ({row_reg, col_reg}<19'b0100100000110110000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100000110110000) && ({row_reg, col_reg}<19'b0100100000110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000110110111) && ({row_reg, col_reg}<19'b0100100000110111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100000110111111) && ({row_reg, col_reg}<19'b0100100000111000011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100000111000011) && ({row_reg, col_reg}<19'b0100100010000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100010000100000) && ({row_reg, col_reg}<19'b0100100010000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010000100010) && ({row_reg, col_reg}<19'b0100100010001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100010001001101) && ({row_reg, col_reg}<19'b0100100010001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100010001001111) && ({row_reg, col_reg}<19'b0100100010001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100010001100110) && ({row_reg, col_reg}<19'b0100100010001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010001101000) && ({row_reg, col_reg}<19'b0100100010110110000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100010110110000) && ({row_reg, col_reg}<19'b0100100010110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010110110111) && ({row_reg, col_reg}<19'b0100100010110111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100010110111111) && ({row_reg, col_reg}<19'b0100100010111000011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100010111000011) && ({row_reg, col_reg}<19'b0100100100000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100100000100010) && ({row_reg, col_reg}<19'b0100100100000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100100000100100) && ({row_reg, col_reg}<19'b0100100100000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100000101111) && ({row_reg, col_reg}<19'b0100100100000110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100100000110011) && ({row_reg, col_reg}<19'b0100100100000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100000111010) && ({row_reg, col_reg}<19'b0100100100000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100100000111100) && ({row_reg, col_reg}<19'b0100100100001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100001001011) && ({row_reg, col_reg}<19'b0100100100001001101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100100001001101) && ({row_reg, col_reg}<19'b0100100100001001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100100100001001111) && ({row_reg, col_reg}<19'b0100100100001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100001100110) && ({row_reg, col_reg}<19'b0100100100001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100100001101000) && ({row_reg, col_reg}<19'b0100100110000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100110000100010) && ({row_reg, col_reg}<19'b0100100110000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100110000100100) && ({row_reg, col_reg}<19'b0100100110000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110000101111) && ({row_reg, col_reg}<19'b0100100110000110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100110000110011) && ({row_reg, col_reg}<19'b0100100110000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110000111010) && ({row_reg, col_reg}<19'b0100100110000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100110000111100) && ({row_reg, col_reg}<19'b0100100110001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110001001011) && ({row_reg, col_reg}<19'b0100100110001001101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100100110001001101) && ({row_reg, col_reg}<19'b0100100110001001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100100110001001111) && ({row_reg, col_reg}<19'b0100100110001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110001100110) && ({row_reg, col_reg}<19'b0100100110001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100110001101000) && ({row_reg, col_reg}<19'b0100101000000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101000000100100) && ({row_reg, col_reg}<19'b0100101000000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101000000100110) && ({row_reg, col_reg}<19'b0100101000000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000000101111) && ({row_reg, col_reg}<19'b0100101000000110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101000000110011) && ({row_reg, col_reg}<19'b0100101000000110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101000000110101) && ({row_reg, col_reg}<19'b0100101000000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000000110111) && ({row_reg, col_reg}<19'b0100101000000111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101000000111010) && ({row_reg, col_reg}<19'b0100101000000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101000000111100) && ({row_reg, col_reg}<19'b0100101000000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101000000111110) && ({row_reg, col_reg}<19'b0100101000001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000001001000) && ({row_reg, col_reg}<19'b0100101000001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101000001001011) && ({row_reg, col_reg}<19'b0100101000001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101000001001101) && ({row_reg, col_reg}<19'b0100101000001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101000001001111) && ({row_reg, col_reg}<19'b0100101000001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000001100100) && ({row_reg, col_reg}<19'b0100101000001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101000001100110) && ({row_reg, col_reg}<19'b0100101010000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101010000100100) && ({row_reg, col_reg}<19'b0100101010000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010000100110) && ({row_reg, col_reg}<19'b0100101010000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010000101111) && ({row_reg, col_reg}<19'b0100101010000110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101010000110011) && ({row_reg, col_reg}<19'b0100101010000110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101010000110101) && ({row_reg, col_reg}<19'b0100101010000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010000110111) && ({row_reg, col_reg}<19'b0100101010000111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101010000111010) && ({row_reg, col_reg}<19'b0100101010000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101010000111100) && ({row_reg, col_reg}<19'b0100101010000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101010000111110) && ({row_reg, col_reg}<19'b0100101010001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010001001000) && ({row_reg, col_reg}<19'b0100101010001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101010001001011) && ({row_reg, col_reg}<19'b0100101010001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101010001001101) && ({row_reg, col_reg}<19'b0100101010001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101010001001111) && ({row_reg, col_reg}<19'b0100101010001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010001100100) && ({row_reg, col_reg}<19'b0100101010001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101010001100110) && ({row_reg, col_reg}<19'b0100101100000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101100000100100) && ({row_reg, col_reg}<19'b0100101100000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100000100110) && ({row_reg, col_reg}<19'b0100101100000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100000101111) && ({row_reg, col_reg}<19'b0100101100000110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101100000110011) && ({row_reg, col_reg}<19'b0100101100000110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101100000110101) && ({row_reg, col_reg}<19'b0100101100000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100000110111) && ({row_reg, col_reg}<19'b0100101100000111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101100000111010) && ({row_reg, col_reg}<19'b0100101100000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101100000111100) && ({row_reg, col_reg}<19'b0100101100000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101100000111110) && ({row_reg, col_reg}<19'b0100101100001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100001001000) && ({row_reg, col_reg}<19'b0100101100001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101100001001011) && ({row_reg, col_reg}<19'b0100101100001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101100001001101) && ({row_reg, col_reg}<19'b0100101100001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101100001001111) && ({row_reg, col_reg}<19'b0100101100001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100001100100) && ({row_reg, col_reg}<19'b0100101100001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101100001100110) && ({row_reg, col_reg}<19'b0100101110000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101110000100110) && ({row_reg, col_reg}<19'b0100101110000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110000101001) && ({row_reg, col_reg}<19'b0100101110000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110000110011) && ({row_reg, col_reg}<19'b0100101110000110101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101110000110101) && ({row_reg, col_reg}<19'b0100101110000111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101110000111001) && ({row_reg, col_reg}<19'b0100101110000111110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101110000111110) && ({row_reg, col_reg}<19'b0100101110001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101110001000010) && ({row_reg, col_reg}<19'b0100101110001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110001000100) && ({row_reg, col_reg}<19'b0100101110001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101110001001000) && ({row_reg, col_reg}<19'b0100101110001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100101110001001101) && ({row_reg, col_reg}<19'b0100101110001010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101110001010001) && ({row_reg, col_reg}<19'b0100101110001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110001010101) && ({row_reg, col_reg}<19'b0100101110001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100101110001010111) && ({row_reg, col_reg}<19'b0100101110001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110001100010) && ({row_reg, col_reg}<19'b0100101110001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101110001100100) && ({row_reg, col_reg}<19'b0100110000000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110000000100110) && ({row_reg, col_reg}<19'b0100110000000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000000101001) && ({row_reg, col_reg}<19'b0100110000000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000000110011) && ({row_reg, col_reg}<19'b0100110000000110101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110000000110101) && ({row_reg, col_reg}<19'b0100110000000111001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110000000111001) && ({row_reg, col_reg}<19'b0100110000000111110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110000000111110) && ({row_reg, col_reg}<19'b0100110000001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110000001000010) && ({row_reg, col_reg}<19'b0100110000001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000001000100) && ({row_reg, col_reg}<19'b0100110000001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110000001001000) && ({row_reg, col_reg}<19'b0100110000001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110000001001101) && ({row_reg, col_reg}<19'b0100110000001010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110000001010001) && ({row_reg, col_reg}<19'b0100110000001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000001010101) && ({row_reg, col_reg}<19'b0100110000001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110000001010111) && ({row_reg, col_reg}<19'b0100110000001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000001100010) && ({row_reg, col_reg}<19'b0100110000001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110000001100100) && ({row_reg, col_reg}<19'b0100110010000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110010000101001) && ({row_reg, col_reg}<19'b0100110010000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110010000110001) && ({row_reg, col_reg}<19'b0100110010000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010000110101) && ({row_reg, col_reg}<19'b0100110010000111010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110010000111010) && ({row_reg, col_reg}<19'b0100110010000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010000111100) && ({row_reg, col_reg}<19'b0100110010001000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110010001000000) && ({row_reg, col_reg}<19'b0100110010001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110010001000110) && ({row_reg, col_reg}<19'b0100110010001001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110010001001010) && ({row_reg, col_reg}<19'b0100110010001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010001001101) && ({row_reg, col_reg}<19'b0100110010001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110010001010001) && ({row_reg, col_reg}<19'b0100110010001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110010001010101) && ({row_reg, col_reg}<19'b0100110010001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110010001010111) && ({row_reg, col_reg}<19'b0100110010001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010001100000) && ({row_reg, col_reg}<19'b0100110010001100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110010001100010) && ({row_reg, col_reg}<19'b0100110100000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110100000101001) && ({row_reg, col_reg}<19'b0100110100000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110100000110001) && ({row_reg, col_reg}<19'b0100110100000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110100000110101) && ({row_reg, col_reg}<19'b0100110100000111010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110100000111010) && ({row_reg, col_reg}<19'b0100110100000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110100000111100) && ({row_reg, col_reg}<19'b0100110100001000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110100001000000) && ({row_reg, col_reg}<19'b0100110100001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110100001000110) && ({row_reg, col_reg}<19'b0100110100001001010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110100001001010) && ({row_reg, col_reg}<19'b0100110100001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110100001001101) && ({row_reg, col_reg}<19'b0100110100001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110100001010001) && ({row_reg, col_reg}<19'b0100110100001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100110100001010101) && ({row_reg, col_reg}<19'b0100110100001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110100001010111) && ({row_reg, col_reg}<19'b0100110100001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110100001100000) && ({row_reg, col_reg}<19'b0100110100001100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110100001100010) && ({row_reg, col_reg}<19'b0100110110000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110110000110001) && ({row_reg, col_reg}<19'b0100110110000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110110000110011) && ({row_reg, col_reg}<19'b0100110110000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110110000111110) && ({row_reg, col_reg}<19'b0100110110001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110110001001000) && ({row_reg, col_reg}<19'b0100110110001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110110001001111) && ({row_reg, col_reg}<19'b0100110110001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100110110001010101) && ({row_reg, col_reg}<19'b0100110110001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110110001100010) && ({row_reg, col_reg}<19'b0100110110001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110110001100100) && ({row_reg, col_reg}<19'b0100111000000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111000000110001) && ({row_reg, col_reg}<19'b0100111000000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111000000110011) && ({row_reg, col_reg}<19'b0100111000000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111000000111110) && ({row_reg, col_reg}<19'b0100111000001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100111000001001000) && ({row_reg, col_reg}<19'b0100111000001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111000001001111) && ({row_reg, col_reg}<19'b0100111000001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100111000001010101) && ({row_reg, col_reg}<19'b0100111000001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111000001100010) && ({row_reg, col_reg}<19'b0100111000001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111000001100100) && ({row_reg, col_reg}<19'b0100111010000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111010000110011) && ({row_reg, col_reg}<19'b0100111010000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111010000110101) && ({row_reg, col_reg}<19'b0100111010001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111010001000010) && ({row_reg, col_reg}<19'b0100111010001000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100111010001000110) && ({row_reg, col_reg}<19'b0100111010001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111010001100100) && ({row_reg, col_reg}<19'b0100111010001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111010001101000) && ({row_reg, col_reg}<19'b0100111100000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111100000110011) && ({row_reg, col_reg}<19'b0100111100000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111100000110101) && ({row_reg, col_reg}<19'b0100111100001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111100001000010) && ({row_reg, col_reg}<19'b0100111100001000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100111100001000110) && ({row_reg, col_reg}<19'b0100111100001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111100001100100) && ({row_reg, col_reg}<19'b0100111100001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111100001101000) && ({row_reg, col_reg}<19'b0100111110000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111110000110011) && ({row_reg, col_reg}<19'b0100111110000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111110000110101) && ({row_reg, col_reg}<19'b0100111110001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111110001101000) && ({row_reg, col_reg}<19'b0100111110001101010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111110001101010) && ({row_reg, col_reg}<19'b0101000000000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000000000110011) && ({row_reg, col_reg}<19'b0101000000000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000000000110101) && ({row_reg, col_reg}<19'b0101000000001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000000001101000) && ({row_reg, col_reg}<19'b0101000000001101010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000000001101010) && ({row_reg, col_reg}<19'b0101000010000110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000010000110101) && ({row_reg, col_reg}<19'b0101000010000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000010000111110) && ({row_reg, col_reg}<19'b0101000010001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000010001100100) && ({row_reg, col_reg}<19'b0101000010001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000010001101000) && ({row_reg, col_reg}<19'b0101000100000110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000100000110101) && ({row_reg, col_reg}<19'b0101000100000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000100000111110) && ({row_reg, col_reg}<19'b0101000100001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000100001100100) && ({row_reg, col_reg}<19'b0101000100001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000100001101000) && ({row_reg, col_reg}<19'b0101000110000111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000110000111110) && ({row_reg, col_reg}<19'b0101000110001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000110001000010) && ({row_reg, col_reg}<19'b0101000110001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101000110001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000110001001011) && ({row_reg, col_reg}<19'b0101000110001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000110001011010) && ({row_reg, col_reg}<19'b0101000110001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000110001011100) && ({row_reg, col_reg}<19'b0101000110001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000110001100000) && ({row_reg, col_reg}<19'b0101000110001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000110001100100) && ({row_reg, col_reg}<19'b0101001000000111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001000000111110) && ({row_reg, col_reg}<19'b0101001000001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001000001000010) && ({row_reg, col_reg}<19'b0101001000001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101001000001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001000001001011) && ({row_reg, col_reg}<19'b0101001000001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001000001011010) && ({row_reg, col_reg}<19'b0101001000001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001000001011100) && ({row_reg, col_reg}<19'b0101001000001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001000001100000) && ({row_reg, col_reg}<19'b0101001000001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001000001100100) && ({row_reg, col_reg}<19'b0101001010001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001010001000010) && ({row_reg, col_reg}<19'b0101001010001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001010001000100) && ({row_reg, col_reg}<19'b0101001010001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001010001001000) && ({row_reg, col_reg}<19'b0101001010001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0101001010001001010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001010001001011) && ({row_reg, col_reg}<19'b0101001010001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001010001001111) && ({row_reg, col_reg}<19'b0101001010001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001010001010111) && ({row_reg, col_reg}<19'b0101001010001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001010001011010) && ({row_reg, col_reg}<19'b0101001010001011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001010001011100) && ({row_reg, col_reg}<19'b0101001010001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001010001100000) && ({row_reg, col_reg}<19'b0101001100001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001100001000010) && ({row_reg, col_reg}<19'b0101001100001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001100001000100) && ({row_reg, col_reg}<19'b0101001100001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001100001001000) && ({row_reg, col_reg}<19'b0101001100001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0101001100001001010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001100001001011) && ({row_reg, col_reg}<19'b0101001100001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001100001001111) && ({row_reg, col_reg}<19'b0101001100001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001100001010111) && ({row_reg, col_reg}<19'b0101001100001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001100001011010) && ({row_reg, col_reg}<19'b0101001100001011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001100001011100) && ({row_reg, col_reg}<19'b0101001100001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001100001100000) && ({row_reg, col_reg}<19'b0101001110001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001110001000100) && ({row_reg, col_reg}<19'b0101001110001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001110001001000) && ({row_reg, col_reg}<19'b0101001110001001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001110001001111) && ({row_reg, col_reg}<19'b0101001110001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001110001010111) && ({row_reg, col_reg}<19'b0101010000001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101010000001000100) && ({row_reg, col_reg}<19'b0101010000001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101010000001001000) && ({row_reg, col_reg}<19'b0101010000001001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101010000001001111) && ({row_reg, col_reg}<19'b0101010000001010111)) color_data = 12'b000000000000;



















































































































































































































		if(({row_reg, col_reg}>=19'b0101010000001010111) && ({row_reg, col_reg}<19'b1011110110111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011110110111000110) && ({row_reg, col_reg}<19'b1011110110111010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011110110111010010) && ({row_reg, col_reg}<19'b1011111000111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111000111000110) && ({row_reg, col_reg}<19'b1011111000111010010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111000111010010) && ({row_reg, col_reg}<19'b1011111010111000001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111010111000001) && ({row_reg, col_reg}<19'b1011111010111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111010111000110) && ({row_reg, col_reg}<19'b1011111010111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1011111010111010010) && ({row_reg, col_reg}<19'b1011111010111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111010111010100) && ({row_reg, col_reg}<19'b1011111100111000001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111100111000001) && ({row_reg, col_reg}<19'b1011111100111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111100111000110) && ({row_reg, col_reg}<19'b1011111100111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1011111100111010010) && ({row_reg, col_reg}<19'b1011111100111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111100111010100) && ({row_reg, col_reg}<19'b1011111110110110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111110110110100) && ({row_reg, col_reg}<19'b1011111110110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111110110111101) && ({row_reg, col_reg}<19'b1011111110110111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111110110111111) && ({row_reg, col_reg}<19'b1011111110111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111110111000001) && ({row_reg, col_reg}<19'b1011111110111010100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1011111110111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111110111010101) && ({row_reg, col_reg}<19'b1100000000110110100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000110110100) && ({row_reg, col_reg}<19'b1100000000110111101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000110111101) && ({row_reg, col_reg}<19'b1100000000110111111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000110111111) && ({row_reg, col_reg}<19'b1100000000111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000111000001) && ({row_reg, col_reg}<19'b1100000000111010100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100000000111010100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000000111010101) && ({row_reg, col_reg}<19'b1100000010110110000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010110110000) && ({row_reg, col_reg}<19'b1100000010110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010110110100) && ({row_reg, col_reg}<19'b1100000010110111101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000010110111101) && ({row_reg, col_reg}<19'b1100000010110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010110111111) && ({row_reg, col_reg}<19'b1100000010111000011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100000010111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010111000100) && ({row_reg, col_reg}<19'b1100000010111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000010111010101) && ({row_reg, col_reg}<19'b1100000010111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010111010111) && ({row_reg, col_reg}<19'b1100000010111011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010111011011) && ({row_reg, col_reg}<19'b1100000010111011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000010111011101) && ({row_reg, col_reg}<19'b1100000100110110000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100110110000) && ({row_reg, col_reg}<19'b1100000100110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100110110100) && ({row_reg, col_reg}<19'b1100000100110111101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100110111101) && ({row_reg, col_reg}<19'b1100000100110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100110111111) && ({row_reg, col_reg}<19'b1100000100111000011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100000100111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100111000100) && ({row_reg, col_reg}<19'b1100000100111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100111010101) && ({row_reg, col_reg}<19'b1100000100111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100111010111) && ({row_reg, col_reg}<19'b1100000100111011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100111011011) && ({row_reg, col_reg}<19'b1100000100111011101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000100111011101) && ({row_reg, col_reg}<19'b1100000110000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110000101001) && ({row_reg, col_reg}<19'b1100000110000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110000110011) && ({row_reg, col_reg}<19'b1100000110110101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110110101100) && ({row_reg, col_reg}<19'b1100000110110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110110110000) && ({row_reg, col_reg}<19'b1100000110110111101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110110111101) && ({row_reg, col_reg}<19'b1100000110110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110110111111) && ({row_reg, col_reg}<19'b1100000110111000001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111000001) && ({row_reg, col_reg}<19'b1100000110111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100000110111000011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111000100) && ({row_reg, col_reg}<19'b1100000110111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111000110) && ({row_reg, col_reg}<19'b1100000110111010000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111010000) && ({row_reg, col_reg}<19'b1100000110111010010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100000110111010010) && ({row_reg, col_reg}<19'b1100000110111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111010101) && ({row_reg, col_reg}<19'b1100000110111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111010111) && ({row_reg, col_reg}<19'b1100000110111011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110111011001) && ({row_reg, col_reg}<19'b1100000110111011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111011011) && ({row_reg, col_reg}<19'b1100000110111011101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111011101) && ({row_reg, col_reg}<19'b1100000110111011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111011111) && ({row_reg, col_reg}<19'b1100000110111100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100000110111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000110111100110) && ({row_reg, col_reg}<19'b1100001000000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001000000101001) && ({row_reg, col_reg}<19'b1100001000000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000000110011) && ({row_reg, col_reg}<19'b1100001000110101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001000110101100) && ({row_reg, col_reg}<19'b1100001000110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000110110000) && ({row_reg, col_reg}<19'b1100001000110111101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000110111101) && ({row_reg, col_reg}<19'b1100001000110111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000110111111) && ({row_reg, col_reg}<19'b1100001000111000001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111000001) && ({row_reg, col_reg}<19'b1100001000111000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100001000111000011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111000100) && ({row_reg, col_reg}<19'b1100001000111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111000110) && ({row_reg, col_reg}<19'b1100001000111010000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111010000) && ({row_reg, col_reg}<19'b1100001000111010010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100001000111010010) && ({row_reg, col_reg}<19'b1100001000111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111010101) && ({row_reg, col_reg}<19'b1100001000111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111010111) && ({row_reg, col_reg}<19'b1100001000111011001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001000111011001) && ({row_reg, col_reg}<19'b1100001000111011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111011011) && ({row_reg, col_reg}<19'b1100001000111011101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111011101) && ({row_reg, col_reg}<19'b1100001000111011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111011111) && ({row_reg, col_reg}<19'b1100001000111100101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001000111100101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001000111100110) && ({row_reg, col_reg}<19'b1100001010000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001010000100110) && ({row_reg, col_reg}<19'b1100001010000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010000101001) && ({row_reg, col_reg}<19'b1100001010000110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010000110011) && ({row_reg, col_reg}<19'b1100001010000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010000110101) && ({row_reg, col_reg}<19'b1100001010000111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001010000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010000111010) && ({row_reg, col_reg}<19'b1100001010110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001010110101010) && ({row_reg, col_reg}<19'b1100001010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010110101100) && ({row_reg, col_reg}<19'b1100001010110111111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010110111111) && ({row_reg, col_reg}<19'b1100001010111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111000001) && ({row_reg, col_reg}<19'b1100001010111000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111000100) && ({row_reg, col_reg}<19'b1100001010111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111000110) && ({row_reg, col_reg}<19'b1100001010111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111010010) && ({row_reg, col_reg}<19'b1100001010111010100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100001010111010100) && ({row_reg, col_reg}<19'b1100001010111010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111010111) && ({row_reg, col_reg}<19'b1100001010111011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111011001) && ({row_reg, col_reg}<19'b1100001010111011111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111011111) && ({row_reg, col_reg}<19'b1100001010111100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111100001) && ({row_reg, col_reg}<19'b1100001010111100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001010111100011) && ({row_reg, col_reg}<19'b1100001010111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100001010111100101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111100110) && ({row_reg, col_reg}<19'b1100001010111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001010111101000) && ({row_reg, col_reg}<19'b1100001100000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001100000100110) && ({row_reg, col_reg}<19'b1100001100000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100000101001) && ({row_reg, col_reg}<19'b1100001100000110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100000110011) && ({row_reg, col_reg}<19'b1100001100000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100000110101) && ({row_reg, col_reg}<19'b1100001100000111001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001100000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100000111010) && ({row_reg, col_reg}<19'b1100001100110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001100110101010) && ({row_reg, col_reg}<19'b1100001100110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100110101100) && ({row_reg, col_reg}<19'b1100001100110111111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100110111111) && ({row_reg, col_reg}<19'b1100001100111000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100111000001) && ({row_reg, col_reg}<19'b1100001100111000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111000100) && ({row_reg, col_reg}<19'b1100001100111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100111000110) && ({row_reg, col_reg}<19'b1100001100111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111010010) && ({row_reg, col_reg}<19'b1100001100111010100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100001100111010100) && ({row_reg, col_reg}<19'b1100001100111010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111010111) && ({row_reg, col_reg}<19'b1100001100111011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100111011001) && ({row_reg, col_reg}<19'b1100001100111011111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111011111) && ({row_reg, col_reg}<19'b1100001100111100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100111100001) && ({row_reg, col_reg}<19'b1100001100111100011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001100111100011) && ({row_reg, col_reg}<19'b1100001100111100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100001100111100101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111100110) && ({row_reg, col_reg}<19'b1100001100111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001100111101000) && ({row_reg, col_reg}<19'b1100001110000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001110000100010) && ({row_reg, col_reg}<19'b1100001110000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110000100110) && ({row_reg, col_reg}<19'b1100001110000110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110000110011) && ({row_reg, col_reg}<19'b1100001110000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110000110101) && ({row_reg, col_reg}<19'b1100001110000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001110000110111) && ({row_reg, col_reg}<19'b1100001110000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100001110000111001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110000111010) && ({row_reg, col_reg}<19'b1100001110000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110000111100) && ({row_reg, col_reg}<19'b1100001110110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001110110101010) && ({row_reg, col_reg}<19'b1100001110110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110110101100) && ({row_reg, col_reg}<19'b1100001110111000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110111000100) && ({row_reg, col_reg}<19'b1100001110111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110111000110) && ({row_reg, col_reg}<19'b1100001110111100001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110111100001) && ({row_reg, col_reg}<19'b1100001110111100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110111100011) && ({row_reg, col_reg}<19'b1100001110111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110111100110) && ({row_reg, col_reg}<19'b1100001110111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001110111101000) && ({row_reg, col_reg}<19'b1100010000000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010000000100010) && ({row_reg, col_reg}<19'b1100010000000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000000100110) && ({row_reg, col_reg}<19'b1100010000000110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000000110011) && ({row_reg, col_reg}<19'b1100010000000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000000110101) && ({row_reg, col_reg}<19'b1100010000000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010000000110111) && ({row_reg, col_reg}<19'b1100010000000111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100010000000111001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000000111010) && ({row_reg, col_reg}<19'b1100010000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000000111100) && ({row_reg, col_reg}<19'b1100010000110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010000110101010) && ({row_reg, col_reg}<19'b1100010000110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000110101100) && ({row_reg, col_reg}<19'b1100010000111000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000111000100) && ({row_reg, col_reg}<19'b1100010000111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000111000110) && ({row_reg, col_reg}<19'b1100010000111100001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000111100001) && ({row_reg, col_reg}<19'b1100010000111100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000111100011) && ({row_reg, col_reg}<19'b1100010000111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000111100110) && ({row_reg, col_reg}<19'b1100010000111101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010000111101000) && ({row_reg, col_reg}<19'b1100010010000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010010000100000) && ({row_reg, col_reg}<19'b1100010010000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010000100010) && ({row_reg, col_reg}<19'b1100010010000110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010000110101) && ({row_reg, col_reg}<19'b1100010010000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010000110111) && ({row_reg, col_reg}<19'b1100010010000111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010000111010) && ({row_reg, col_reg}<19'b1100010010000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010000111100) && ({row_reg, col_reg}<19'b1100010010110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010010110101010) && ({row_reg, col_reg}<19'b1100010010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010110101100) && ({row_reg, col_reg}<19'b1100010010110111001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010110111001) && ({row_reg, col_reg}<19'b1100010010110111011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010010110111011) && ({row_reg, col_reg}<19'b1100010010111000110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010111000110) && ({row_reg, col_reg}<19'b1100010010111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010111001000) && ({row_reg, col_reg}<19'b1100010010111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010111100110) && ({row_reg, col_reg}<19'b1100010010111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010111101000) && ({row_reg, col_reg}<19'b1100010010111101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010010111101100) && ({row_reg, col_reg}<19'b1100010010111101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010010111101110) && ({row_reg, col_reg}<19'b1100010100000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010100000100000) && ({row_reg, col_reg}<19'b1100010100000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100000100010) && ({row_reg, col_reg}<19'b1100010100000110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100000110101) && ({row_reg, col_reg}<19'b1100010100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100000110111) && ({row_reg, col_reg}<19'b1100010100000111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100000111010) && ({row_reg, col_reg}<19'b1100010100000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100000111100) && ({row_reg, col_reg}<19'b1100010100110101010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010100110101010) && ({row_reg, col_reg}<19'b1100010100110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100110101100) && ({row_reg, col_reg}<19'b1100010100110111001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100110111001) && ({row_reg, col_reg}<19'b1100010100110111011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010100110111011) && ({row_reg, col_reg}<19'b1100010100111000110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100111000110) && ({row_reg, col_reg}<19'b1100010100111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100111001000) && ({row_reg, col_reg}<19'b1100010100111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100111100110) && ({row_reg, col_reg}<19'b1100010100111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100111101000) && ({row_reg, col_reg}<19'b1100010100111101100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010100111101100) && ({row_reg, col_reg}<19'b1100010100111101110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010100111101110) && ({row_reg, col_reg}<19'b1100010110000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010110000100000) && ({row_reg, col_reg}<19'b1100010110000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110000100010) && ({row_reg, col_reg}<19'b1100010110000111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110000111010) && ({row_reg, col_reg}<19'b1100010110000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110000111100) && ({row_reg, col_reg}<19'b1100010110110101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010110110101000) && ({row_reg, col_reg}<19'b1100010110110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110110101010) && ({row_reg, col_reg}<19'b1100010110110111011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110110111011) && ({row_reg, col_reg}<19'b1100010110110111101)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010110110111101) && ({row_reg, col_reg}<19'b1100010110111000110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110111000110) && ({row_reg, col_reg}<19'b1100010110111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110111001000) && ({row_reg, col_reg}<19'b1100010110111101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110111101000) && ({row_reg, col_reg}<19'b1100010110111101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110111101100) && ({row_reg, col_reg}<19'b1100010110111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110111101110) && ({row_reg, col_reg}<19'b1100010110111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010110111110000) && ({row_reg, col_reg}<19'b1100011000000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011000000100000) && ({row_reg, col_reg}<19'b1100011000000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000000100010) && ({row_reg, col_reg}<19'b1100011000000111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000000111010) && ({row_reg, col_reg}<19'b1100011000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000000111100) && ({row_reg, col_reg}<19'b1100011000110101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011000110101000) && ({row_reg, col_reg}<19'b1100011000110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000110101010) && ({row_reg, col_reg}<19'b1100011000110111011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000110111011) && ({row_reg, col_reg}<19'b1100011000110111101)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011000110111101) && ({row_reg, col_reg}<19'b1100011000111000110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000111000110) && ({row_reg, col_reg}<19'b1100011000111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000111001000) && ({row_reg, col_reg}<19'b1100011000111101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000111101000) && ({row_reg, col_reg}<19'b1100011000111101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000111101100) && ({row_reg, col_reg}<19'b1100011000111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000111101110) && ({row_reg, col_reg}<19'b1100011000111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011000111110000) && ({row_reg, col_reg}<19'b1100011010000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011010000100000) && ({row_reg, col_reg}<19'b1100011010000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010000100010) && ({row_reg, col_reg}<19'b1100011010000101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010000101111) && ({row_reg, col_reg}<19'b1100011010000110001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011010000110001) && ({row_reg, col_reg}<19'b1100011010000111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010000111100) && ({row_reg, col_reg}<19'b1100011010000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010000111110) && ({row_reg, col_reg}<19'b1100011010110100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011010110100110) && ({row_reg, col_reg}<19'b1100011010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010110101000) && ({row_reg, col_reg}<19'b1100011010110101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010110101110) && ({row_reg, col_reg}<19'b1100011010110110100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011010110110100) && ({row_reg, col_reg}<19'b1100011010111001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010111001000) && ({row_reg, col_reg}<19'b1100011010111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010111001010) && ({row_reg, col_reg}<19'b1100011010111001100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011010111001100) && ({row_reg, col_reg}<19'b1100011010111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010111110000) && ({row_reg, col_reg}<19'b1100011010111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011010111110010) && ({row_reg, col_reg}<19'b1100011100000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011100000100000) && ({row_reg, col_reg}<19'b1100011100000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100000100010) && ({row_reg, col_reg}<19'b1100011100000101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100000101111) && ({row_reg, col_reg}<19'b1100011100000110001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011100000110001) && ({row_reg, col_reg}<19'b1100011100000111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100000111100) && ({row_reg, col_reg}<19'b1100011100000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100000111110) && ({row_reg, col_reg}<19'b1100011100110100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011100110100110) && ({row_reg, col_reg}<19'b1100011100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100110101000) && ({row_reg, col_reg}<19'b1100011100110101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100110101110) && ({row_reg, col_reg}<19'b1100011100110110100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011100110110100) && ({row_reg, col_reg}<19'b1100011100111001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100111001000) && ({row_reg, col_reg}<19'b1100011100111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100111001010) && ({row_reg, col_reg}<19'b1100011100111001100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011100111001100) && ({row_reg, col_reg}<19'b1100011100111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100111110000) && ({row_reg, col_reg}<19'b1100011100111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011100111110010) && ({row_reg, col_reg}<19'b1100011110000011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110000011110) && ({row_reg, col_reg}<19'b1100011110000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110000100000) && ({row_reg, col_reg}<19'b1100011110000110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110000110001) && ({row_reg, col_reg}<19'b1100011110000110011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011110000110011) && ({row_reg, col_reg}<19'b1100011110000111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110000111100) && ({row_reg, col_reg}<19'b1100011110000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110000111110) && ({row_reg, col_reg}<19'b1100011110110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110110100100) && ({row_reg, col_reg}<19'b1100011110110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110110100110) && ({row_reg, col_reg}<19'b1100011110110101100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110110101100) && ({row_reg, col_reg}<19'b1100011110110101110)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011110110101110) && ({row_reg, col_reg}<19'b1100011110111001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110111001000) && ({row_reg, col_reg}<19'b1100011110111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110111001010) && ({row_reg, col_reg}<19'b1100011110111001100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110111001100) && ({row_reg, col_reg}<19'b1100011110111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110111001110) && ({row_reg, col_reg}<19'b1100011110111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110111110000) && ({row_reg, col_reg}<19'b1100011110111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011110111110010) && ({row_reg, col_reg}<19'b1100100000000011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000000011110) && ({row_reg, col_reg}<19'b1100100000000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000000100000) && ({row_reg, col_reg}<19'b1100100000000110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000000110001) && ({row_reg, col_reg}<19'b1100100000000110011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100000000110011) && ({row_reg, col_reg}<19'b1100100000000111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000000111100) && ({row_reg, col_reg}<19'b1100100000000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000000111110) && ({row_reg, col_reg}<19'b1100100000110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000110100100) && ({row_reg, col_reg}<19'b1100100000110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000110100110) && ({row_reg, col_reg}<19'b1100100000110101100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000110101100) && ({row_reg, col_reg}<19'b1100100000110101110)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100000110101110) && ({row_reg, col_reg}<19'b1100100000111001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000111001000) && ({row_reg, col_reg}<19'b1100100000111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000111001010) && ({row_reg, col_reg}<19'b1100100000111001100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000111001100) && ({row_reg, col_reg}<19'b1100100000111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000111001110) && ({row_reg, col_reg}<19'b1100100000111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000111110000) && ({row_reg, col_reg}<19'b1100100000111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100000111110010) && ({row_reg, col_reg}<19'b1100100010000011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100010000011110) && ({row_reg, col_reg}<19'b1100100010000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010000100000) && ({row_reg, col_reg}<19'b1100100010000110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010000110001) && ({row_reg, col_reg}<19'b1100100010000110011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100010000110011) && ({row_reg, col_reg}<19'b1100100010000111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010000111100) && ({row_reg, col_reg}<19'b1100100010000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010000111110) && ({row_reg, col_reg}<19'b1100100010110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100010110100100) && ({row_reg, col_reg}<19'b1100100010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010110100110) && ({row_reg, col_reg}<19'b1100100010110101100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010110101100) && ({row_reg, col_reg}<19'b1100100010110101110)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100010110101110) && ({row_reg, col_reg}<19'b1100100010111001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010111001000) && ({row_reg, col_reg}<19'b1100100010111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010111001010) && ({row_reg, col_reg}<19'b1100100010111001100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010111001100) && ({row_reg, col_reg}<19'b1100100010111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010111001110) && ({row_reg, col_reg}<19'b1100100010111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010111110000) && ({row_reg, col_reg}<19'b1100100010111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100010111110010) && ({row_reg, col_reg}<19'b1100100100000011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100100000011100) && ({row_reg, col_reg}<19'b1100100100000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100000011110) && ({row_reg, col_reg}<19'b1100100100000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100000100100) && ({row_reg, col_reg}<19'b1100100100000101001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100100000101001) && ({row_reg, col_reg}<19'b1100100100000111110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100000111110) && ({row_reg, col_reg}<19'b1100100100001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100001000000) && ({row_reg, col_reg}<19'b1100100100110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100100110011111) && ({row_reg, col_reg}<19'b1100100100110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100110100100) && ({row_reg, col_reg}<19'b1100100100111001010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100111001010) && ({row_reg, col_reg}<19'b1100100100111001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100111001100) && ({row_reg, col_reg}<19'b1100100100111001110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100111001110) && ({row_reg, col_reg}<19'b1100100100111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100111010000) && ({row_reg, col_reg}<19'b1100100100111101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100111101000) && ({row_reg, col_reg}<19'b1100100100111101010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100100111101010) && ({row_reg, col_reg}<19'b1100100100111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100111110000) && ({row_reg, col_reg}<19'b1100100100111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100100111110010) && ({row_reg, col_reg}<19'b1100100110000011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100110000011100) && ({row_reg, col_reg}<19'b1100100110000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110000011110) && ({row_reg, col_reg}<19'b1100100110000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110000100100) && ({row_reg, col_reg}<19'b1100100110000101001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100110000101001) && ({row_reg, col_reg}<19'b1100100110000111110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110000111110) && ({row_reg, col_reg}<19'b1100100110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110001000000) && ({row_reg, col_reg}<19'b1100100110110011111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100110110011111) && ({row_reg, col_reg}<19'b1100100110110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110110100100) && ({row_reg, col_reg}<19'b1100100110111001010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110111001010) && ({row_reg, col_reg}<19'b1100100110111001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110111001100) && ({row_reg, col_reg}<19'b1100100110111001110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110111001110) && ({row_reg, col_reg}<19'b1100100110111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110111010000) && ({row_reg, col_reg}<19'b1100100110111101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110111101000) && ({row_reg, col_reg}<19'b1100100110111101010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100110111101010) && ({row_reg, col_reg}<19'b1100100110111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110111110000) && ({row_reg, col_reg}<19'b1100100110111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100110111110010) && ({row_reg, col_reg}<19'b1100101000000011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101000000011010) && ({row_reg, col_reg}<19'b1100101000000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000000011100) && ({row_reg, col_reg}<19'b1100101000000100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000000100010) && ({row_reg, col_reg}<19'b1100101000000100100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101000000100100) && ({row_reg, col_reg}<19'b1100101000000111110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000000111110) && ({row_reg, col_reg}<19'b1100101000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000001000000) && ({row_reg, col_reg}<19'b1100101000001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101000001000010) && ({row_reg, col_reg}<19'b1100101000001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000001000100) && ({row_reg, col_reg}<19'b1100101000110011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101000110011101) && ({row_reg, col_reg}<19'b1100101000110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000110011111) && ({row_reg, col_reg}<19'b1100101000111001110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000111001110) && ({row_reg, col_reg}<19'b1100101000111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000111010000) && ({row_reg, col_reg}<19'b1100101000111010100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100101000111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000111010101) && ({row_reg, col_reg}<19'b1100101000111101010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000111101010) && ({row_reg, col_reg}<19'b1100101000111101100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101000111101100) && ({row_reg, col_reg}<19'b1100101000111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000111110000) && ({row_reg, col_reg}<19'b1100101000111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101000111110010) && ({row_reg, col_reg}<19'b1100101010000011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101010000011010) && ({row_reg, col_reg}<19'b1100101010000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010000011100) && ({row_reg, col_reg}<19'b1100101010000100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010000100010) && ({row_reg, col_reg}<19'b1100101010000100100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101010000100100) && ({row_reg, col_reg}<19'b1100101010000111110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010000111110) && ({row_reg, col_reg}<19'b1100101010001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010001000000) && ({row_reg, col_reg}<19'b1100101010001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101010001000010) && ({row_reg, col_reg}<19'b1100101010001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010001000100) && ({row_reg, col_reg}<19'b1100101010110011101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101010110011101) && ({row_reg, col_reg}<19'b1100101010110011111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010110011111) && ({row_reg, col_reg}<19'b1100101010111001110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010111001110) && ({row_reg, col_reg}<19'b1100101010111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010111010000) && ({row_reg, col_reg}<19'b1100101010111010100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100101010111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010111010101) && ({row_reg, col_reg}<19'b1100101010111101010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010111101010) && ({row_reg, col_reg}<19'b1100101010111101100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101010111101100) && ({row_reg, col_reg}<19'b1100101010111110000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010111110000) && ({row_reg, col_reg}<19'b1100101010111110010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101010111110010) && ({row_reg, col_reg}<19'b1100101100000010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101100000010101) && ({row_reg, col_reg}<19'b1100101100000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100000011010) && ({row_reg, col_reg}<19'b1100101100001000000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100001000000) && ({row_reg, col_reg}<19'b1100101100001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100001000010) && ({row_reg, col_reg}<19'b1100101100001000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100001000100) && ({row_reg, col_reg}<19'b1100101100001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100001000110) && ({row_reg, col_reg}<19'b1100101100110011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101100110011011) && ({row_reg, col_reg}<19'b1100101100110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100110011101) && ({row_reg, col_reg}<19'b1100101100111001110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100111001110) && ({row_reg, col_reg}<19'b1100101100111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100111010000) && ({row_reg, col_reg}<19'b1100101100111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100111010010) && ({row_reg, col_reg}<19'b1100101100111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100101100111010100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100111010101) && ({row_reg, col_reg}<19'b1100101100111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100111010111) && ({row_reg, col_reg}<19'b1100101100111011011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101100111011011) && ({row_reg, col_reg}<19'b1100101100111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100111101110) && ({row_reg, col_reg}<19'b1100101100111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101100111110000) && ({row_reg, col_reg}<19'b1100101110000010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101110000010101) && ({row_reg, col_reg}<19'b1100101110000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110000011010) && ({row_reg, col_reg}<19'b1100101110001000000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110001000000) && ({row_reg, col_reg}<19'b1100101110001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110001000010) && ({row_reg, col_reg}<19'b1100101110001000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110001000100) && ({row_reg, col_reg}<19'b1100101110001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110001000110) && ({row_reg, col_reg}<19'b1100101110110011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101110110011011) && ({row_reg, col_reg}<19'b1100101110110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110110011101) && ({row_reg, col_reg}<19'b1100101110111001110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110111001110) && ({row_reg, col_reg}<19'b1100101110111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110111010000) && ({row_reg, col_reg}<19'b1100101110111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110111010010) && ({row_reg, col_reg}<19'b1100101110111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100101110111010100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110111010101) && ({row_reg, col_reg}<19'b1100101110111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110111010111) && ({row_reg, col_reg}<19'b1100101110111011011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101110111011011) && ({row_reg, col_reg}<19'b1100101110111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110111101110) && ({row_reg, col_reg}<19'b1100101110111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101110111110000) && ({row_reg, col_reg}<19'b1100110000000010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110000000010011) && ({row_reg, col_reg}<19'b1100110000000010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000000010101) && ({row_reg, col_reg}<19'b1100110000001000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000001000100) && ({row_reg, col_reg}<19'b1100110000001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000001000110) && ({row_reg, col_reg}<19'b1100110000001001010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100110000001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000001001011) && ({row_reg, col_reg}<19'b1100110000110011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110000110011011) && ({row_reg, col_reg}<19'b1100110000110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000110011101) && ({row_reg, col_reg}<19'b1100110000111010000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000111010000) && ({row_reg, col_reg}<19'b1100110000111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000111010010) && ({row_reg, col_reg}<19'b1100110000111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000111010101) && ({row_reg, col_reg}<19'b1100110000111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000111010111) && ({row_reg, col_reg}<19'b1100110000111011011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000111011011) && ({row_reg, col_reg}<19'b1100110000111011101)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110000111011101) && ({row_reg, col_reg}<19'b1100110000111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000111101110) && ({row_reg, col_reg}<19'b1100110000111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110000111110000) && ({row_reg, col_reg}<19'b1100110010000010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110010000010011) && ({row_reg, col_reg}<19'b1100110010000010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010000010101) && ({row_reg, col_reg}<19'b1100110010001000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010001000100) && ({row_reg, col_reg}<19'b1100110010001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010001000110) && ({row_reg, col_reg}<19'b1100110010001001010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100110010001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010001001011) && ({row_reg, col_reg}<19'b1100110010110011011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110010110011011) && ({row_reg, col_reg}<19'b1100110010110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010110011101) && ({row_reg, col_reg}<19'b1100110010111010000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010111010000) && ({row_reg, col_reg}<19'b1100110010111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010111010010) && ({row_reg, col_reg}<19'b1100110010111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010111010101) && ({row_reg, col_reg}<19'b1100110010111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010111010111) && ({row_reg, col_reg}<19'b1100110010111011011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010111011011) && ({row_reg, col_reg}<19'b1100110010111011101)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110010111011101) && ({row_reg, col_reg}<19'b1100110010111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010111101110) && ({row_reg, col_reg}<19'b1100110010111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110010111110000) && ({row_reg, col_reg}<19'b1100110100000010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110100000010001) && ({row_reg, col_reg}<19'b1100110100000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100000010011) && ({row_reg, col_reg}<19'b1100110100001000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100001000100) && ({row_reg, col_reg}<19'b1100110100001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100001000110) && ({row_reg, col_reg}<19'b1100110100001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110100001001000) && ({row_reg, col_reg}<19'b1100110100001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100110100001001010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100001001011) && ({row_reg, col_reg}<19'b1100110100001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100001001101) && ({row_reg, col_reg}<19'b1100110100110010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110100110010111) && ({row_reg, col_reg}<19'b1100110100110011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100110011011) && ({row_reg, col_reg}<19'b1100110100111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100111010101) && ({row_reg, col_reg}<19'b1100110100111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100111010111) && ({row_reg, col_reg}<19'b1100110100111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100111101110) && ({row_reg, col_reg}<19'b1100110100111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110100111110000) && ({row_reg, col_reg}<19'b1100110110000010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110110000010001) && ({row_reg, col_reg}<19'b1100110110000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110000010011) && ({row_reg, col_reg}<19'b1100110110001000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110001000100) && ({row_reg, col_reg}<19'b1100110110001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110001000110) && ({row_reg, col_reg}<19'b1100110110001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110110001001000) && ({row_reg, col_reg}<19'b1100110110001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100110110001001010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110001001011) && ({row_reg, col_reg}<19'b1100110110001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110001001101) && ({row_reg, col_reg}<19'b1100110110110010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110110110010111) && ({row_reg, col_reg}<19'b1100110110110011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110110011011) && ({row_reg, col_reg}<19'b1100110110111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110111010101) && ({row_reg, col_reg}<19'b1100110110111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110111010111) && ({row_reg, col_reg}<19'b1100110110111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110111101110) && ({row_reg, col_reg}<19'b1100110110111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110110111110000) && ({row_reg, col_reg}<19'b1100111000000010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111000000010001) && ({row_reg, col_reg}<19'b1100111000000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000000010011) && ({row_reg, col_reg}<19'b1100111000001000110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000001000110) && ({row_reg, col_reg}<19'b1100111000001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000001001000) && ({row_reg, col_reg}<19'b1100111000001001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000001001011) && ({row_reg, col_reg}<19'b1100111000001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000001001101) && ({row_reg, col_reg}<19'b1100111000110010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111000110010101) && ({row_reg, col_reg}<19'b1100111000110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000110010111) && ({row_reg, col_reg}<19'b1100111000111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000111010101) && ({row_reg, col_reg}<19'b1100111000111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000111010111) && ({row_reg, col_reg}<19'b1100111000111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000111101110) && ({row_reg, col_reg}<19'b1100111000111110000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100111000111110000) && ({row_reg, col_reg}<19'b1100111010000010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111010000010001) && ({row_reg, col_reg}<19'b1100111010000010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010000010011) && ({row_reg, col_reg}<19'b1100111010001000110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010001000110) && ({row_reg, col_reg}<19'b1100111010001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010001001000) && ({row_reg, col_reg}<19'b1100111010001001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010001001011) && ({row_reg, col_reg}<19'b1100111010001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010001001101) && ({row_reg, col_reg}<19'b1100111010110010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111010110010101) && ({row_reg, col_reg}<19'b1100111010110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010110010111) && ({row_reg, col_reg}<19'b1100111010111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010111010101) && ({row_reg, col_reg}<19'b1100111010111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010111010111) && ({row_reg, col_reg}<19'b1100111010111101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010111101110) && ({row_reg, col_reg}<19'b1100111010111110000)) color_data = 12'b000000000000;



































































		if(({row_reg, col_reg}>=19'b1100111010111110000) && ({row_reg, col_reg}<=19'b1110111111001111111)) color_data = 12'b011110001110;
	end
endmodule