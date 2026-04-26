module new_background1_sky_nofloor_rom
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

























		if(({row_reg, col_reg}>=19'b0000000000000000000) && ({row_reg, col_reg}<19'b0000110011001001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110011001001001) && ({row_reg, col_reg}<19'b0000110011001010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110011001010001) && ({row_reg, col_reg}<19'b0000110101001001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110101001001001) && ({row_reg, col_reg}<19'b0000110101001010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110101001010001) && ({row_reg, col_reg}<19'b0000110111001001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000110111001001001) && ({row_reg, col_reg}<19'b0000110111001010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000110111001010001) && ({row_reg, col_reg}<19'b0000111001001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0000111001001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111001001001001) && ({row_reg, col_reg}<19'b0000111001001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111001001010001) && ({row_reg, col_reg}<19'b0000111001001010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111001001010011) && ({row_reg, col_reg}<19'b0000111011001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0000111011001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111011001001001) && ({row_reg, col_reg}<19'b0000111011001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111011001010001) && ({row_reg, col_reg}<19'b0000111011001010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111011001010011) && ({row_reg, col_reg}<19'b0000111101000111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111101000111110) && ({row_reg, col_reg}<19'b0000111101001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111101001000100) && ({row_reg, col_reg}<19'b0000111101001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111101001000110) && ({row_reg, col_reg}<19'b0000111101001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111101001001000) && ({row_reg, col_reg}<19'b0000111101001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111101001010011) && ({row_reg, col_reg}<19'b0000111101001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111101001010111) && ({row_reg, col_reg}<19'b0000111111000111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111111000111110) && ({row_reg, col_reg}<19'b0000111111001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111111001000100) && ({row_reg, col_reg}<19'b0000111111001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0000111111001000110) && ({row_reg, col_reg}<19'b0000111111001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0000111111001001000) && ({row_reg, col_reg}<19'b0000111111001010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0000111111001010011) && ({row_reg, col_reg}<19'b0000111111001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0000111111001010111) && ({row_reg, col_reg}<19'b0001000001000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000001000111100) && ({row_reg, col_reg}<19'b0001000001000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000001000111110) && ({row_reg, col_reg}<19'b0001000001001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000001001000010) && ({row_reg, col_reg}<19'b0001000001001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000001001000100) && ({row_reg, col_reg}<19'b0001000001001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000001001000110) && ({row_reg, col_reg}<19'b0001000001001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000001001001000) && ({row_reg, col_reg}<19'b0001000001001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000001001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001000001001011000) && ({row_reg, col_reg}<19'b0001000011000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000011000111100) && ({row_reg, col_reg}<19'b0001000011000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000011000111110) && ({row_reg, col_reg}<19'b0001000011001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000011001000010) && ({row_reg, col_reg}<19'b0001000011001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000011001000100) && ({row_reg, col_reg}<19'b0001000011001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000011001000110) && ({row_reg, col_reg}<19'b0001000011001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000011001001000) && ({row_reg, col_reg}<19'b0001000011001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000011001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001000011001011000) && ({row_reg, col_reg}<19'b0001000101000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000101000111100) && ({row_reg, col_reg}<19'b0001000101000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000101000111110) && ({row_reg, col_reg}<19'b0001000101001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000101001000100) && ({row_reg, col_reg}<19'b0001000101001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000101001000110) && ({row_reg, col_reg}<19'b0001000101001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000101001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000101001001001) && ({row_reg, col_reg}<19'b0001000101001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000101001001011) && ({row_reg, col_reg}<19'b0001000101001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000101001001101) && ({row_reg, col_reg}<19'b0001000101001010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000101001010001) && ({row_reg, col_reg}<19'b0001000101001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000101001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001000101001011000) && ({row_reg, col_reg}<19'b0001000111000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001000111000111100) && ({row_reg, col_reg}<19'b0001000111000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000111000111110) && ({row_reg, col_reg}<19'b0001000111001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000111001000100) && ({row_reg, col_reg}<19'b0001000111001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001000111001000110) && ({row_reg, col_reg}<19'b0001000111001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000111001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000111001001001) && ({row_reg, col_reg}<19'b0001000111001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001000111001001011) && ({row_reg, col_reg}<19'b0001000111001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001000111001001101) && ({row_reg, col_reg}<19'b0001000111001010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001000111001010001) && ({row_reg, col_reg}<19'b0001000111001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001000111001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001000111001011000) && ({row_reg, col_reg}<19'b0001001001000111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001001000111010) && ({row_reg, col_reg}<19'b0001001001000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001001000111110) && ({row_reg, col_reg}<19'b0001001001001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001001001000110) && ({row_reg, col_reg}<19'b0001001001001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0001001001001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001001001001001) && ({row_reg, col_reg}<19'b0001001001001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001001001001101) && ({row_reg, col_reg}<19'b0001001001001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001001001010001) && ({row_reg, col_reg}<19'b0001001001001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001001001010011) && ({row_reg, col_reg}<19'b0001001001001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001001001001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001001001001011000) && ({row_reg, col_reg}<19'b0001001011000111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001011000111010) && ({row_reg, col_reg}<19'b0001001011000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001011000111110) && ({row_reg, col_reg}<19'b0001001011001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001011001000110) && ({row_reg, col_reg}<19'b0001001011001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0001001011001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001011001001001) && ({row_reg, col_reg}<19'b0001001011001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001011001001101) && ({row_reg, col_reg}<19'b0001001011001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001011001010001) && ({row_reg, col_reg}<19'b0001001011001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001001011001010011) && ({row_reg, col_reg}<19'b0001001011001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001001011001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001001011001011000) && ({row_reg, col_reg}<19'b0001001101000111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001101000111010) && ({row_reg, col_reg}<19'b0001001101000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001101000111100) && ({row_reg, col_reg}<19'b0001001101001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001101001010001) && ({row_reg, col_reg}<19'b0001001101001010011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001101001010011) && ({row_reg, col_reg}<19'b0001001101001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001001101001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001001101001011000) && ({row_reg, col_reg}<19'b0001001111000111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001001111000111010) && ({row_reg, col_reg}<19'b0001001111000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001001111000111100) && ({row_reg, col_reg}<19'b0001001111001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001001111001010001) && ({row_reg, col_reg}<19'b0001001111001010011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001001111001010011) && ({row_reg, col_reg}<19'b0001001111001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001001111001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001001111001011000) && ({row_reg, col_reg}<19'b0001010001000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010001000101111) && ({row_reg, col_reg}<19'b0001010001000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010001000110001) && ({row_reg, col_reg}<19'b0001010001000111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010001000111010) && ({row_reg, col_reg}<19'b0001010001000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010001000111100) && ({row_reg, col_reg}<19'b0001010001001011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010001001011000) && ({row_reg, col_reg}<19'b0001010001001011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010001001011010) && ({row_reg, col_reg}<19'b0001010011000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010011000101111) && ({row_reg, col_reg}<19'b0001010011000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010011000110001) && ({row_reg, col_reg}<19'b0001010011000111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010011000111010) && ({row_reg, col_reg}<19'b0001010011000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010011000111100) && ({row_reg, col_reg}<19'b0001010011001011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010011001011000) && ({row_reg, col_reg}<19'b0001010011001011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010011001011010) && ({row_reg, col_reg}<19'b0001010101000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010101000101101) && ({row_reg, col_reg}<19'b0001010101000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010101000101111) && ({row_reg, col_reg}<19'b0001010101000110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010101000110001) && ({row_reg, col_reg}<19'b0001010101000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010101000110011) && ({row_reg, col_reg}<19'b0001010101000111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010101000111000) && ({row_reg, col_reg}<19'b0001010101000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010101000111010) && ({row_reg, col_reg}<19'b0001010101001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010101001011010) && ({row_reg, col_reg}<19'b0001010101001011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010101001011100) && ({row_reg, col_reg}<19'b0001010111000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010111000101101) && ({row_reg, col_reg}<19'b0001010111000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010111000101111) && ({row_reg, col_reg}<19'b0001010111000110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010111000110001) && ({row_reg, col_reg}<19'b0001010111000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010111000110011) && ({row_reg, col_reg}<19'b0001010111000111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001010111000111000) && ({row_reg, col_reg}<19'b0001010111000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001010111000111010) && ({row_reg, col_reg}<19'b0001010111001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001010111001011010) && ({row_reg, col_reg}<19'b0001010111001011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001010111001011100) && ({row_reg, col_reg}<19'b0001011001000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011001000101101) && ({row_reg, col_reg}<19'b0001011001000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011001000101111) && ({row_reg, col_reg}<19'b0001011001000110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011001000110001) && ({row_reg, col_reg}<19'b0001011001000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011001000110011) && ({row_reg, col_reg}<19'b0001011001000111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011001000111000) && ({row_reg, col_reg}<19'b0001011001000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011001000111010) && ({row_reg, col_reg}<19'b0001011001001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011001001011010) && ({row_reg, col_reg}<19'b0001011001001011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011001001011100) && ({row_reg, col_reg}<19'b0001011011000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011011000101101) && ({row_reg, col_reg}<19'b0001011011000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011011000101111) && ({row_reg, col_reg}<19'b0001011011000110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011011000110001) && ({row_reg, col_reg}<19'b0001011011000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011011000110011) && ({row_reg, col_reg}<19'b0001011011000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001011011000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011011000111000) && ({row_reg, col_reg}<19'b0001011011001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011011001011100) && ({row_reg, col_reg}<19'b0001011011001011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011011001011110) && ({row_reg, col_reg}<19'b0001011101000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011101000101101) && ({row_reg, col_reg}<19'b0001011101000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011101000101111) && ({row_reg, col_reg}<19'b0001011101000110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011101000110001) && ({row_reg, col_reg}<19'b0001011101000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011101000110011) && ({row_reg, col_reg}<19'b0001011101000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001011101000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011101000111000) && ({row_reg, col_reg}<19'b0001011101001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011101001011100) && ({row_reg, col_reg}<19'b0001011101001011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011101001011110) && ({row_reg, col_reg}<19'b0001011111000101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001011111000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011111000101001) && ({row_reg, col_reg}<19'b0001011111000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001011111000101101) && ({row_reg, col_reg}<19'b0001011111000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011111000101111) && ({row_reg, col_reg}<19'b0001011111000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011111000110011) && ({row_reg, col_reg}<19'b0001011111000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011111000110101) && ({row_reg, col_reg}<19'b0001011111000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001011111000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001011111000111000) && ({row_reg, col_reg}<19'b0001011111001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001011111001011110) && ({row_reg, col_reg}<19'b0001011111001100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001011111001100010) && ({row_reg, col_reg}<19'b0001100001000101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001100001000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100001000101001) && ({row_reg, col_reg}<19'b0001100001000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100001000101101) && ({row_reg, col_reg}<19'b0001100001000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100001000101111) && ({row_reg, col_reg}<19'b0001100001000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100001000110011) && ({row_reg, col_reg}<19'b0001100001000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100001000110101) && ({row_reg, col_reg}<19'b0001100001000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001100001000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100001000111000) && ({row_reg, col_reg}<19'b0001100001001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100001001011110) && ({row_reg, col_reg}<19'b0001100001001100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100001001100010) && ({row_reg, col_reg}<19'b0001100010011011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100010011011010) && ({row_reg, col_reg}<19'b0001100010011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100010011100010) && ({row_reg, col_reg}<19'b0001100011000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100011000100110) && ({row_reg, col_reg}<19'b0001100011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0001100011000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100011000101001) && ({row_reg, col_reg}<19'b0001100011000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100011000101011) && ({row_reg, col_reg}<19'b0001100011000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100011000101101) && ({row_reg, col_reg}<19'b0001100011000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100011000101111) && ({row_reg, col_reg}<19'b0001100011000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100011000110101) && ({row_reg, col_reg}<19'b0001100011000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100011000110111) && ({row_reg, col_reg}<19'b0001100011001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100011001100010) && ({row_reg, col_reg}<19'b0001100011001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100011001100100) && ({row_reg, col_reg}<19'b0001100100011011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100100011011010) && ({row_reg, col_reg}<19'b0001100100011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100100011100010) && ({row_reg, col_reg}<19'b0001100101000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100101000100110) && ({row_reg, col_reg}<19'b0001100101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0001100101000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100101000101001) && ({row_reg, col_reg}<19'b0001100101000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100101000101011) && ({row_reg, col_reg}<19'b0001100101000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100101000101101) && ({row_reg, col_reg}<19'b0001100101000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100101000101111) && ({row_reg, col_reg}<19'b0001100101000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100101000110101) && ({row_reg, col_reg}<19'b0001100101000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100101000110111) && ({row_reg, col_reg}<19'b0001100101001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100101001100010) && ({row_reg, col_reg}<19'b0001100101001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100101001100100) && ({row_reg, col_reg}<19'b0001100110011011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100110011011000) && ({row_reg, col_reg}<19'b0001100110011011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100110011011010) && ({row_reg, col_reg}<19'b0001100110011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100110011100010) && ({row_reg, col_reg}<19'b0001100110011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100110011100100) && ({row_reg, col_reg}<19'b0001100111000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001100111000100100) && ({row_reg, col_reg}<19'b0001100111000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100111000100110) && ({row_reg, col_reg}<19'b0001100111000101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100111000101011) && ({row_reg, col_reg}<19'b0001100111000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001100111000101101) && ({row_reg, col_reg}<19'b0001100111001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001100111001100100) && ({row_reg, col_reg}<19'b0001100111001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001100111001100110) && ({row_reg, col_reg}<19'b0001101000011011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101000011011000) && ({row_reg, col_reg}<19'b0001101000011011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101000011011010) && ({row_reg, col_reg}<19'b0001101000011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101000011100010) && ({row_reg, col_reg}<19'b0001101000011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101000011100100) && ({row_reg, col_reg}<19'b0001101001000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101001000100100) && ({row_reg, col_reg}<19'b0001101001000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101001000100110) && ({row_reg, col_reg}<19'b0001101001000101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101001000101011) && ({row_reg, col_reg}<19'b0001101001000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101001000101101) && ({row_reg, col_reg}<19'b0001101001001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101001001100100) && ({row_reg, col_reg}<19'b0001101001001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001101001001100110) && ({row_reg, col_reg}<19'b0001101010011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101010011010101) && ({row_reg, col_reg}<19'b0001101010011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101010011011000) && ({row_reg, col_reg}<19'b0001101010011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101010011100100) && ({row_reg, col_reg}<19'b0001101010011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101010011100110) && ({row_reg, col_reg}<19'b0001101010011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101010011101000) && ({row_reg, col_reg}<19'b0001101010011101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101010011101101) && ({row_reg, col_reg}<19'b0001101011000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101011000100010) && ({row_reg, col_reg}<19'b0001101011000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101011000100100) && ({row_reg, col_reg}<19'b0001101011001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101011001100110) && ({row_reg, col_reg}<19'b0001101011001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001101011001101000) && ({row_reg, col_reg}<19'b0001101100011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101100011010101) && ({row_reg, col_reg}<19'b0001101100011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101100011011000) && ({row_reg, col_reg}<19'b0001101100011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101100011100100) && ({row_reg, col_reg}<19'b0001101100011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101100011100110) && ({row_reg, col_reg}<19'b0001101100011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101100011101000) && ({row_reg, col_reg}<19'b0001101100011101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101100011101101) && ({row_reg, col_reg}<19'b0001101101000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101101000100010) && ({row_reg, col_reg}<19'b0001101101000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101101000100100) && ({row_reg, col_reg}<19'b0001101101001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101101001100110) && ({row_reg, col_reg}<19'b0001101101001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001101101001101000) && ({row_reg, col_reg}<19'b0001101110011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101110011010011) && ({row_reg, col_reg}<19'b0001101110011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101110011010101) && ({row_reg, col_reg}<19'b0001101110011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101110011100100) && ({row_reg, col_reg}<19'b0001101110011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101110011100110) && ({row_reg, col_reg}<19'b0001101110011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001101110011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101110011101001) && ({row_reg, col_reg}<19'b0001101110011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001101110011101101) && ({row_reg, col_reg}<19'b0001101110011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101110011101111) && ({row_reg, col_reg}<19'b0001101111000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001101111000100010) && ({row_reg, col_reg}<19'b0001101111000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001101111000100100) && ({row_reg, col_reg}<19'b0001101111001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001101111001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001101111001101001) && ({row_reg, col_reg}<19'b0001110000011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110000011010011) && ({row_reg, col_reg}<19'b0001110000011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110000011010101) && ({row_reg, col_reg}<19'b0001110000011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110000011100100) && ({row_reg, col_reg}<19'b0001110000011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110000011100110) && ({row_reg, col_reg}<19'b0001110000011101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0001110000011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110000011101001) && ({row_reg, col_reg}<19'b0001110000011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110000011101101) && ({row_reg, col_reg}<19'b0001110000011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110000011101111) && ({row_reg, col_reg}<19'b0001110001000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110001000100010) && ({row_reg, col_reg}<19'b0001110001000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110001000100100) && ({row_reg, col_reg}<19'b0001110001001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001110001001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001110001001101001) && ({row_reg, col_reg}<19'b0001110010011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110010011010011) && ({row_reg, col_reg}<19'b0001110010011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110010011010101) && ({row_reg, col_reg}<19'b0001110010011011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110010011011010) && ({row_reg, col_reg}<19'b0001110010011011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110010011011110) && ({row_reg, col_reg}<19'b0001110010011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110010011100000) && ({row_reg, col_reg}<19'b0001110010011100010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110010011100010) && ({row_reg, col_reg}<19'b0001110010011100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110010011100100) && ({row_reg, col_reg}<19'b0001110010011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110010011100110) && ({row_reg, col_reg}<19'b0001110010011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110010011101000) && ({row_reg, col_reg}<19'b0001110010011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110010011101101) && ({row_reg, col_reg}<19'b0001110010011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110010011101111) && ({row_reg, col_reg}<19'b0001110011000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110011000100010) && ({row_reg, col_reg}<19'b0001110011000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110011000100100) && ({row_reg, col_reg}<19'b0001110011000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110011000111010) && ({row_reg, col_reg}<19'b0001110011000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110011000111100) && ({row_reg, col_reg}<19'b0001110011001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001110011001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001110011001101001) && ({row_reg, col_reg}<19'b0001110100011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110100011010011) && ({row_reg, col_reg}<19'b0001110100011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110100011010101) && ({row_reg, col_reg}<19'b0001110100011011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110100011011010) && ({row_reg, col_reg}<19'b0001110100011011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110100011011110) && ({row_reg, col_reg}<19'b0001110100011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110100011100000) && ({row_reg, col_reg}<19'b0001110100011100010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110100011100010) && ({row_reg, col_reg}<19'b0001110100011100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110100011100100) && ({row_reg, col_reg}<19'b0001110100011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110100011100110) && ({row_reg, col_reg}<19'b0001110100011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110100011101000) && ({row_reg, col_reg}<19'b0001110100011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110100011101101) && ({row_reg, col_reg}<19'b0001110100011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110100011101111) && ({row_reg, col_reg}<19'b0001110101000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110101000100010) && ({row_reg, col_reg}<19'b0001110101000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110101000100100) && ({row_reg, col_reg}<19'b0001110101000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110101000111010) && ({row_reg, col_reg}<19'b0001110101000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110101000111100) && ({row_reg, col_reg}<19'b0001110101001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0001110101001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001110101001101001) && ({row_reg, col_reg}<19'b0001110110011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110110011010011) && ({row_reg, col_reg}<19'b0001110110011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110110011010101) && ({row_reg, col_reg}<19'b0001110110011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110110011011000) && ({row_reg, col_reg}<19'b0001110110011011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110110011011010) && ({row_reg, col_reg}<19'b0001110110011011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110110011011110) && ({row_reg, col_reg}<19'b0001110110011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110110011100010) && ({row_reg, col_reg}<19'b0001110110011100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110110011100100) && ({row_reg, col_reg}<19'b0001110110011100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110110011100110) && ({row_reg, col_reg}<19'b0001110110011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110110011101101) && ({row_reg, col_reg}<19'b0001110110011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110110011110001) && ({row_reg, col_reg}<19'b0001110111000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001110111000100010) && ({row_reg, col_reg}<19'b0001110111000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001110111000100100) && ({row_reg, col_reg}<19'b0001110111000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110111000111010) && ({row_reg, col_reg}<19'b0001110111000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001110111000111100) && ({row_reg, col_reg}<19'b0001110111000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110111000111110) && ({row_reg, col_reg}<19'b0001110111001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110111001001101) && ({row_reg, col_reg}<19'b0001110111001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110111001001111) && ({row_reg, col_reg}<19'b0001110111001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110111001010111) && ({row_reg, col_reg}<19'b0001110111001011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001110111001011010) && ({row_reg, col_reg}<19'b0001110111001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001110111001100110) && ({row_reg, col_reg}<19'b0001110111001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001110111001101000) && ({row_reg, col_reg}<19'b0001111000011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111000011010011) && ({row_reg, col_reg}<19'b0001111000011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111000011010101) && ({row_reg, col_reg}<19'b0001111000011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111000011011000) && ({row_reg, col_reg}<19'b0001111000011011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111000011011010) && ({row_reg, col_reg}<19'b0001111000011011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111000011011110) && ({row_reg, col_reg}<19'b0001111000011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111000011100010) && ({row_reg, col_reg}<19'b0001111000011100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111000011100100) && ({row_reg, col_reg}<19'b0001111000011100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111000011100110) && ({row_reg, col_reg}<19'b0001111000011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111000011101101) && ({row_reg, col_reg}<19'b0001111000011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111000011110001) && ({row_reg, col_reg}<19'b0001111001000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111001000100010) && ({row_reg, col_reg}<19'b0001111001000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111001000100100) && ({row_reg, col_reg}<19'b0001111001000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111001000111010) && ({row_reg, col_reg}<19'b0001111001000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111001000111100) && ({row_reg, col_reg}<19'b0001111001000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111001000111110) && ({row_reg, col_reg}<19'b0001111001001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111001001001101) && ({row_reg, col_reg}<19'b0001111001001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111001001001111) && ({row_reg, col_reg}<19'b0001111001001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111001001010111) && ({row_reg, col_reg}<19'b0001111001001011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111001001011010) && ({row_reg, col_reg}<19'b0001111001001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111001001100110) && ({row_reg, col_reg}<19'b0001111001001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001111001001101000) && ({row_reg, col_reg}<19'b0001111010011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111010011010011) && ({row_reg, col_reg}<19'b0001111010011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111010011010101) && ({row_reg, col_reg}<19'b0001111010011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010011011000) && ({row_reg, col_reg}<19'b0001111010011011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010011011010) && ({row_reg, col_reg}<19'b0001111010011011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111010011011110) && ({row_reg, col_reg}<19'b0001111010011100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010011100010) && ({row_reg, col_reg}<19'b0001111010011100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111010011100100) && ({row_reg, col_reg}<19'b0001111010011100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111010011100110) && ({row_reg, col_reg}<19'b0001111010011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111010011101101) && ({row_reg, col_reg}<19'b0001111010011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111010011110001) && ({row_reg, col_reg}<19'b0001111011000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111011000100010) && ({row_reg, col_reg}<19'b0001111011000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111011000100100) && ({row_reg, col_reg}<19'b0001111011000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111011000111010) && ({row_reg, col_reg}<19'b0001111011000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111011000111100) && ({row_reg, col_reg}<19'b0001111011000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111011000111110) && ({row_reg, col_reg}<19'b0001111011001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111011001001101) && ({row_reg, col_reg}<19'b0001111011001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111011001001111) && ({row_reg, col_reg}<19'b0001111011001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111011001010111) && ({row_reg, col_reg}<19'b0001111011001011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111011001011010) && ({row_reg, col_reg}<19'b0001111011001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111011001100110) && ({row_reg, col_reg}<19'b0001111011001101000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001111011001101000) && ({row_reg, col_reg}<19'b0001111100011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111100011010011) && ({row_reg, col_reg}<19'b0001111100011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111100011010101) && ({row_reg, col_reg}<19'b0001111100011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100011011000) && ({row_reg, col_reg}<19'b0001111100011011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111100011011010) && ({row_reg, col_reg}<19'b0001111100011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111100011101111) && ({row_reg, col_reg}<19'b0001111100011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111100011110001) && ({row_reg, col_reg}<19'b0001111101000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111101000100100) && ({row_reg, col_reg}<19'b0001111101000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111101000100110) && ({row_reg, col_reg}<19'b0001111101000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111101000111010) && ({row_reg, col_reg}<19'b0001111101000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111101000111100) && ({row_reg, col_reg}<19'b0001111101000111110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111101000111110) && ({row_reg, col_reg}<19'b0001111101001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111101001000010) && ({row_reg, col_reg}<19'b0001111101001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111101001001011) && ({row_reg, col_reg}<19'b0001111101001001101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111101001001101) && ({row_reg, col_reg}<19'b0001111101001001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111101001001111) && ({row_reg, col_reg}<19'b0001111101001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111101001010011) && ({row_reg, col_reg}<19'b0001111101001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111101001010101) && ({row_reg, col_reg}<19'b0001111101001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111101001010111) && ({row_reg, col_reg}<19'b0001111101001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111101001011010) && ({row_reg, col_reg}<19'b0001111101001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111101001100100) && ({row_reg, col_reg}<19'b0001111101001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001111101001100110) && ({row_reg, col_reg}<19'b0001111110011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111110011010011) && ({row_reg, col_reg}<19'b0001111110011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111110011010101) && ({row_reg, col_reg}<19'b0001111110011011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110011011000) && ({row_reg, col_reg}<19'b0001111110011011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111110011011010) && ({row_reg, col_reg}<19'b0001111110011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111110011101111) && ({row_reg, col_reg}<19'b0001111110011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111110011110001) && ({row_reg, col_reg}<19'b0001111111000100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0001111111000100100) && ({row_reg, col_reg}<19'b0001111111000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0001111111000100110) && ({row_reg, col_reg}<19'b0001111111000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111111000111010) && ({row_reg, col_reg}<19'b0001111111000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111111000111100) && ({row_reg, col_reg}<19'b0001111111000111110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111111000111110) && ({row_reg, col_reg}<19'b0001111111001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111111001000010) && ({row_reg, col_reg}<19'b0001111111001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111111001001011) && ({row_reg, col_reg}<19'b0001111111001001101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111111001001101) && ({row_reg, col_reg}<19'b0001111111001001111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111111001001111) && ({row_reg, col_reg}<19'b0001111111001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111111001010011) && ({row_reg, col_reg}<19'b0001111111001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111111001010101) && ({row_reg, col_reg}<19'b0001111111001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0001111111001010111) && ({row_reg, col_reg}<19'b0001111111001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0001111111001011010) && ({row_reg, col_reg}<19'b0001111111001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0001111111001100100) && ({row_reg, col_reg}<19'b0001111111001100110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0001111111001100110) && ({row_reg, col_reg}<19'b0010000000011010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000000011010001) && ({row_reg, col_reg}<19'b0010000000011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000000011010011) && ({row_reg, col_reg}<19'b0010000000011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000000011101111) && ({row_reg, col_reg}<19'b0010000000011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000000011110001) && ({row_reg, col_reg}<19'b0010000000011111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000000011111010) && ({row_reg, col_reg}<19'b0010000000011111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000000011111100) && ({row_reg, col_reg}<19'b0010000001000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000001000100110) && ({row_reg, col_reg}<19'b0010000001000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000001000101000) && ({row_reg, col_reg}<19'b0010000001000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000001000110011) && ({row_reg, col_reg}<19'b0010000001000110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000001000110101) && ({row_reg, col_reg}<19'b0010000001000111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000001000111000) && ({row_reg, col_reg}<19'b0010000001000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000001000111100) && ({row_reg, col_reg}<19'b0010000001001000010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000001001000010) && ({row_reg, col_reg}<19'b0010000001001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000001001000110) && ({row_reg, col_reg}<19'b0010000001001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000001001001000) && ({row_reg, col_reg}<19'b0010000001001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000001001001011) && ({row_reg, col_reg}<19'b0010000001001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000001001010001) && ({row_reg, col_reg}<19'b0010000001001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000001001010101) && ({row_reg, col_reg}<19'b0010000001001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000001001010111) && ({row_reg, col_reg}<19'b0010000001001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000001001100000) && ({row_reg, col_reg}<19'b0010000001001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010000001001100100) && ({row_reg, col_reg}<19'b0010000010011010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000010011010001) && ({row_reg, col_reg}<19'b0010000010011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000010011010011) && ({row_reg, col_reg}<19'b0010000010011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000010011101111) && ({row_reg, col_reg}<19'b0010000010011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000010011110001) && ({row_reg, col_reg}<19'b0010000010011111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000010011111010) && ({row_reg, col_reg}<19'b0010000010011111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000010011111100) && ({row_reg, col_reg}<19'b0010000011000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000011000100110) && ({row_reg, col_reg}<19'b0010000011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000011000101000) && ({row_reg, col_reg}<19'b0010000011000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000011000110011) && ({row_reg, col_reg}<19'b0010000011000110101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000011000110101) && ({row_reg, col_reg}<19'b0010000011000111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000011000111000) && ({row_reg, col_reg}<19'b0010000011000111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000011000111100) && ({row_reg, col_reg}<19'b0010000011001000010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000011001000010) && ({row_reg, col_reg}<19'b0010000011001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000011001000110) && ({row_reg, col_reg}<19'b0010000011001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000011001001000) && ({row_reg, col_reg}<19'b0010000011001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000011001001011) && ({row_reg, col_reg}<19'b0010000011001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000011001010001) && ({row_reg, col_reg}<19'b0010000011001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000011001010101) && ({row_reg, col_reg}<19'b0010000011001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000011001010111) && ({row_reg, col_reg}<19'b0010000011001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000011001100000) && ({row_reg, col_reg}<19'b0010000011001100100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010000011001100100) && ({row_reg, col_reg}<19'b0010000100011001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000100011001111) && ({row_reg, col_reg}<19'b0010000100011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000100011010001) && ({row_reg, col_reg}<19'b0010000100011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000100011110001) && ({row_reg, col_reg}<19'b0010000100011110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000100011110011) && ({row_reg, col_reg}<19'b0010000100011111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000100011111000) && ({row_reg, col_reg}<19'b0010000100011111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000100011111010) && ({row_reg, col_reg}<19'b0010000100011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000100011111100) && ({row_reg, col_reg}<19'b0010000100011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000100011111110) && ({row_reg, col_reg}<19'b0010000101000101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010000101000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000101000101001) && ({row_reg, col_reg}<19'b0010000101000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000101000110011) && ({row_reg, col_reg}<19'b0010000101000110101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000101000110101) && ({row_reg, col_reg}<19'b0010000101000111000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000101000111000) && ({row_reg, col_reg}<19'b0010000101000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000101000111100) && ({row_reg, col_reg}<19'b0010000101001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000101001000000) && ({row_reg, col_reg}<19'b0010000101001000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000101001000100) && ({row_reg, col_reg}<19'b0010000101001001001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000101001001001) && ({row_reg, col_reg}<19'b0010000101001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000101001001101) && ({row_reg, col_reg}<19'b0010000101001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000101001001111) && ({row_reg, col_reg}<19'b0010000101001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000101001010101) && ({row_reg, col_reg}<19'b0010000101001011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000101001011000) && ({row_reg, col_reg}<19'b0010000101001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010000101001100000) && ({row_reg, col_reg}<19'b0010000110011001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000110011001111) && ({row_reg, col_reg}<19'b0010000110011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000110011010001) && ({row_reg, col_reg}<19'b0010000110011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110011110001) && ({row_reg, col_reg}<19'b0010000110011110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000110011110011) && ({row_reg, col_reg}<19'b0010000110011111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010000110011111000) && ({row_reg, col_reg}<19'b0010000110011111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000110011111010) && ({row_reg, col_reg}<19'b0010000110011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000110011111100) && ({row_reg, col_reg}<19'b0010000110011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000110011111110) && ({row_reg, col_reg}<19'b0010000111000101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010000111000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010000111000101001) && ({row_reg, col_reg}<19'b0010000111000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000111000110011) && ({row_reg, col_reg}<19'b0010000111000110101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000111000110101) && ({row_reg, col_reg}<19'b0010000111000111000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000111000111000) && ({row_reg, col_reg}<19'b0010000111000111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000111000111100) && ({row_reg, col_reg}<19'b0010000111001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000111001000000) && ({row_reg, col_reg}<19'b0010000111001000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000111001000100) && ({row_reg, col_reg}<19'b0010000111001001001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010000111001001001) && ({row_reg, col_reg}<19'b0010000111001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000111001001101) && ({row_reg, col_reg}<19'b0010000111001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000111001001111) && ({row_reg, col_reg}<19'b0010000111001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010000111001010101) && ({row_reg, col_reg}<19'b0010000111001011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010000111001011000) && ({row_reg, col_reg}<19'b0010000111001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010000111001100000) && ({row_reg, col_reg}<19'b0010001000011001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001000011001101) && ({row_reg, col_reg}<19'b0010001000011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001000011001111) && ({row_reg, col_reg}<19'b0010001000011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000011110011) && ({row_reg, col_reg}<19'b0010001000011110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001000011110101) && ({row_reg, col_reg}<19'b0010001000011111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001000011111000) && ({row_reg, col_reg}<19'b0010001000011111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001000011111010) && ({row_reg, col_reg}<19'b0010001000011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001000011111100) && ({row_reg, col_reg}<19'b0010001000011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001000011111110) && ({row_reg, col_reg}<19'b0010001001000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001001000100110) && ({row_reg, col_reg}<19'b0010001001000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001001000101000) && ({row_reg, col_reg}<19'b0010001001000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001001000110101) && ({row_reg, col_reg}<19'b0010001001000111010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001001000111010) && ({row_reg, col_reg}<19'b0010001001001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001001001000010) && ({row_reg, col_reg}<19'b0010001001001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001001001001011) && ({row_reg, col_reg}<19'b0010001001001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010001001001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001001001011000) && ({row_reg, col_reg}<19'b0010001010011001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001010011001101) && ({row_reg, col_reg}<19'b0010001010011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001010011001111) && ({row_reg, col_reg}<19'b0010001010011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001010011110011) && ({row_reg, col_reg}<19'b0010001010011110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001010011110101) && ({row_reg, col_reg}<19'b0010001010011111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001010011111000) && ({row_reg, col_reg}<19'b0010001010011111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001010011111010) && ({row_reg, col_reg}<19'b0010001010011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001010011111100) && ({row_reg, col_reg}<19'b0010001010011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001010011111110) && ({row_reg, col_reg}<19'b0010001011000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001011000100110) && ({row_reg, col_reg}<19'b0010001011000101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001011000101000) && ({row_reg, col_reg}<19'b0010001011000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001011000110101) && ({row_reg, col_reg}<19'b0010001011000111010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001011000111010) && ({row_reg, col_reg}<19'b0010001011001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001011001000010) && ({row_reg, col_reg}<19'b0010001011001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001011001001011) && ({row_reg, col_reg}<19'b0010001011001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010001011001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001011001011000) && ({row_reg, col_reg}<19'b0010001100011001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001100011001001) && ({row_reg, col_reg}<19'b0010001100011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100011001101) && ({row_reg, col_reg}<19'b0010001100011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001100011110011) && ({row_reg, col_reg}<19'b0010001100011110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100011110101) && ({row_reg, col_reg}<19'b0010001100011110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010001100011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100011111000) && ({row_reg, col_reg}<19'b0010001100011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001100011111100) && ({row_reg, col_reg}<19'b0010001100011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100011111110) && ({row_reg, col_reg}<19'b0010001100100000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001100100000010) && ({row_reg, col_reg}<19'b0010001100100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001100100000100) && ({row_reg, col_reg}<19'b0010001101000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001101000100010) && ({row_reg, col_reg}<19'b0010001101000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001101000100110) && ({row_reg, col_reg}<19'b0010001101001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001101001000100) && ({row_reg, col_reg}<19'b0010001101001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001101001001000) && ({row_reg, col_reg}<19'b0010001101001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001101001010101) && ({row_reg, col_reg}<19'b0010001101001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001101001010111) && ({row_reg, col_reg}<19'b0010001110011001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001110011001001) && ({row_reg, col_reg}<19'b0010001110011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110011001101) && ({row_reg, col_reg}<19'b0010001110011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001110011110011) && ({row_reg, col_reg}<19'b0010001110011110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110011110101) && ({row_reg, col_reg}<19'b0010001110011110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010001110011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110011111000) && ({row_reg, col_reg}<19'b0010001110011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001110011111100) && ({row_reg, col_reg}<19'b0010001110011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110011111110) && ({row_reg, col_reg}<19'b0010001110100000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001110100000010) && ({row_reg, col_reg}<19'b0010001110100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001110100000100) && ({row_reg, col_reg}<19'b0010001111000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010001111000100010) && ({row_reg, col_reg}<19'b0010001111000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010001111000100110) && ({row_reg, col_reg}<19'b0010001111001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001111001000100) && ({row_reg, col_reg}<19'b0010001111001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010001111001001000) && ({row_reg, col_reg}<19'b0010001111001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010001111001010101) && ({row_reg, col_reg}<19'b0010001111001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010001111001010111) && ({row_reg, col_reg}<19'b0010010000011001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010010000011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000011001001) && ({row_reg, col_reg}<19'b0010010000011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010000011110101) && ({row_reg, col_reg}<19'b0010010000011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000011110111) && ({row_reg, col_reg}<19'b0010010000011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010000011111100) && ({row_reg, col_reg}<19'b0010010000011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000011111110) && ({row_reg, col_reg}<19'b0010010000100000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010000100000000) && ({row_reg, col_reg}<19'b0010010000100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000100000010) && ({row_reg, col_reg}<19'b0010010000100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010000100000100) && ({row_reg, col_reg}<19'b0010010000100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010000100000110) && ({row_reg, col_reg}<19'b0010010001000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010001000100000) && ({row_reg, col_reg}<19'b0010010001000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010001000100010) && ({row_reg, col_reg}<19'b0010010001001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010001001010101) && ({row_reg, col_reg}<19'b0010010001001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010010001001010111) && ({row_reg, col_reg}<19'b0010010010011001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0010010010011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010011001001) && ({row_reg, col_reg}<19'b0010010010011110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010010011110101) && ({row_reg, col_reg}<19'b0010010010011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010011110111) && ({row_reg, col_reg}<19'b0010010010011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010010011111100) && ({row_reg, col_reg}<19'b0010010010011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010011111110) && ({row_reg, col_reg}<19'b0010010010100000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010010100000000) && ({row_reg, col_reg}<19'b0010010010100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010100000010) && ({row_reg, col_reg}<19'b0010010010100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010010100000100) && ({row_reg, col_reg}<19'b0010010010100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010010100000110) && ({row_reg, col_reg}<19'b0010010011000100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010011000100000) && ({row_reg, col_reg}<19'b0010010011000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010011000100010) && ({row_reg, col_reg}<19'b0010010011001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010011001010101) && ({row_reg, col_reg}<19'b0010010011001010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010010011001010111) && ({row_reg, col_reg}<19'b0010010100011000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010100011000110) && ({row_reg, col_reg}<19'b0010010100011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010100011001000) && ({row_reg, col_reg}<19'b0010010100011111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010100011111110) && ({row_reg, col_reg}<19'b0010010100100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010100100000000) && ({row_reg, col_reg}<19'b0010010100100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010100100000110) && ({row_reg, col_reg}<19'b0010010100100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010100100001000) && ({row_reg, col_reg}<19'b0010010101000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010101000100010) && ({row_reg, col_reg}<19'b0010010101000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010101000100110) && ({row_reg, col_reg}<19'b0010010101001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010101001001011) && ({row_reg, col_reg}<19'b0010010101001010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010010101001010101) && ({row_reg, col_reg}<19'b0010010110011000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010110011000110) && ({row_reg, col_reg}<19'b0010010110011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010110011001000) && ({row_reg, col_reg}<19'b0010010110011111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010110011111110) && ({row_reg, col_reg}<19'b0010010110100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010110100000000) && ({row_reg, col_reg}<19'b0010010110100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010110100000110) && ({row_reg, col_reg}<19'b0010010110100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010110100001000) && ({row_reg, col_reg}<19'b0010010111000100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010010111000100010) && ({row_reg, col_reg}<19'b0010010111000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010010111000100110) && ({row_reg, col_reg}<19'b0010010111001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010010111001001011) && ({row_reg, col_reg}<19'b0010010111001010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010010111001010101) && ({row_reg, col_reg}<19'b0010011000011000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011000011000100) && ({row_reg, col_reg}<19'b0010011000011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011000011000110) && ({row_reg, col_reg}<19'b0010011000100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010011000100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011000100001001) && ({row_reg, col_reg}<19'b0010011001000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011001000100110) && ({row_reg, col_reg}<19'b0010011001000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011001000101001) && ({row_reg, col_reg}<19'b0010011001000101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011001000101101) && ({row_reg, col_reg}<19'b0010011001000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011001000101111) && ({row_reg, col_reg}<19'b0010011001000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011001000111110) && ({row_reg, col_reg}<19'b0010011001001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011001001000000) && ({row_reg, col_reg}<19'b0010011001001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011001001001000) && ({row_reg, col_reg}<19'b0010011001001001011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011001001001011) && ({row_reg, col_reg}<19'b0010011010011000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011010011000100) && ({row_reg, col_reg}<19'b0010011010011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011010011000110) && ({row_reg, col_reg}<19'b0010011010100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010011010100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011010100001001) && ({row_reg, col_reg}<19'b0010011011000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011011000100110) && ({row_reg, col_reg}<19'b0010011011000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011011000101001) && ({row_reg, col_reg}<19'b0010011011000101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011011000101101) && ({row_reg, col_reg}<19'b0010011011000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011011000101111) && ({row_reg, col_reg}<19'b0010011011000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011011000111110) && ({row_reg, col_reg}<19'b0010011011001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011011001000000) && ({row_reg, col_reg}<19'b0010011011001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011011001001000) && ({row_reg, col_reg}<19'b0010011011001001011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011011001001011) && ({row_reg, col_reg}<19'b0010011100011000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011100011000100) && ({row_reg, col_reg}<19'b0010011100011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011100011000110) && ({row_reg, col_reg}<19'b0010011100100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010011100100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011100100001001) && ({row_reg, col_reg}<19'b0010011101000100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011101000100110) && ({row_reg, col_reg}<19'b0010011101000101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011101000101001) && ({row_reg, col_reg}<19'b0010011101000101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011101000101101) && ({row_reg, col_reg}<19'b0010011101000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011101000101111) && ({row_reg, col_reg}<19'b0010011101000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011101000111110) && ({row_reg, col_reg}<19'b0010011101001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011101001000000) && ({row_reg, col_reg}<19'b0010011101001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011101001001000) && ({row_reg, col_reg}<19'b0010011101001001011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011101001001011) && ({row_reg, col_reg}<19'b0010011110011000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011110011000010) && ({row_reg, col_reg}<19'b0010011110011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011110011000100) && ({row_reg, col_reg}<19'b0010011110100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010011110100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011110100001001) && ({row_reg, col_reg}<19'b0010011111000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011111000101001) && ({row_reg, col_reg}<19'b0010011111000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011111000101101) && ({row_reg, col_reg}<19'b0010011111000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011111000101111) && ({row_reg, col_reg}<19'b0010011111000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011111000110011) && ({row_reg, col_reg}<19'b0010011111000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011111000111010) && ({row_reg, col_reg}<19'b0010011111000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011111000111110) && ({row_reg, col_reg}<19'b0010011111001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010011111001000000) && ({row_reg, col_reg}<19'b0010011111001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010011111001000010) && ({row_reg, col_reg}<19'b0010011111001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010011111001000110) && ({row_reg, col_reg}<19'b0010011111001001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010011111001001000) && ({row_reg, col_reg}<19'b0010100000011000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100000011000010) && ({row_reg, col_reg}<19'b0010100000011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100000011000100) && ({row_reg, col_reg}<19'b0010100000100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010100000100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100000100001001) && ({row_reg, col_reg}<19'b0010100001000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100001000101001) && ({row_reg, col_reg}<19'b0010100001000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100001000101101) && ({row_reg, col_reg}<19'b0010100001000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100001000101111) && ({row_reg, col_reg}<19'b0010100001000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100001000110011) && ({row_reg, col_reg}<19'b0010100001000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100001000111010) && ({row_reg, col_reg}<19'b0010100001000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100001000111110) && ({row_reg, col_reg}<19'b0010100001001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100001001000000) && ({row_reg, col_reg}<19'b0010100001001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100001001000010) && ({row_reg, col_reg}<19'b0010100001001000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100001001000110) && ({row_reg, col_reg}<19'b0010100001001001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100001001001000) && ({row_reg, col_reg}<19'b0010100010011000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100010011000010) && ({row_reg, col_reg}<19'b0010100010011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100010011000100) && ({row_reg, col_reg}<19'b0010100010011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100010011101111) && ({row_reg, col_reg}<19'b0010100010011110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010100010011110001) && ({row_reg, col_reg}<19'b0010100010100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010100010100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100010100001001) && ({row_reg, col_reg}<19'b0010100011000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100011000110011) && ({row_reg, col_reg}<19'b0010100011000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100011000111010) && ({row_reg, col_reg}<19'b0010100011001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100011001000010) && ({row_reg, col_reg}<19'b0010100011001000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100011001000110) && ({row_reg, col_reg}<19'b0010100100011000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100100011000010) && ({row_reg, col_reg}<19'b0010100100011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100100011000100) && ({row_reg, col_reg}<19'b0010100100011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100100011101111) && ({row_reg, col_reg}<19'b0010100100011110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010100100011110001) && ({row_reg, col_reg}<19'b0010100100100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010100100100001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100100100001001) && ({row_reg, col_reg}<19'b0010100101000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100101000110011) && ({row_reg, col_reg}<19'b0010100101000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100101000111010) && ({row_reg, col_reg}<19'b0010100101001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100101001000010) && ({row_reg, col_reg}<19'b0010100101001000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100101001000110) && ({row_reg, col_reg}<19'b0010100110011000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010100110011000100) && ({row_reg, col_reg}<19'b0010100110011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010100110011000110) && ({row_reg, col_reg}<19'b0010100110011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100110011010001) && ({row_reg, col_reg}<19'b0010100110011010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010100110011010101) && ({row_reg, col_reg}<19'b0010100110011011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100110011011100) && ({row_reg, col_reg}<19'b0010100110011011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010100110011011110) && ({row_reg, col_reg}<19'b0010100110011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010100110011101101) && ({row_reg, col_reg}<19'b0010100110011101111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010100110011101111) && ({row_reg, col_reg}<19'b0010100110011110001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010100110011110001) && ({row_reg, col_reg}<19'b0010100110100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010100110100001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010100110100001001) && ({row_reg, col_reg}<19'b0010101000011000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010101000011000100) && ({row_reg, col_reg}<19'b0010101000011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010101000011000110) && ({row_reg, col_reg}<19'b0010101000011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101000011010001) && ({row_reg, col_reg}<19'b0010101000011010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101000011010101) && ({row_reg, col_reg}<19'b0010101000011011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101000011011100) && ({row_reg, col_reg}<19'b0010101000011011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101000011011110) && ({row_reg, col_reg}<19'b0010101000011101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101000011101101) && ({row_reg, col_reg}<19'b0010101000011101111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101000011101111) && ({row_reg, col_reg}<19'b0010101000011110001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101000011110001) && ({row_reg, col_reg}<19'b0010101000100001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010101000100001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010101000100001001) && ({row_reg, col_reg}<19'b0010101010011000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010101010011000110) && ({row_reg, col_reg}<19'b0010101010011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010101010011001000) && ({row_reg, col_reg}<19'b0010101010011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101010011010001) && ({row_reg, col_reg}<19'b0010101010011010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101010011010101) && ({row_reg, col_reg}<19'b0010101010011010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0010101010011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101010011011000) && ({row_reg, col_reg}<19'b0010101010011011100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101010011011100) && ({row_reg, col_reg}<19'b0010101010011011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101010011011110) && ({row_reg, col_reg}<19'b0010101010011100000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101010011100000) && ({row_reg, col_reg}<19'b0010101010011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101010011101001) && ({row_reg, col_reg}<19'b0010101010011101101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101010011101101) && ({row_reg, col_reg}<19'b0010101010011101111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101010011101111) && ({row_reg, col_reg}<19'b0010101010011110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101010011110001) && ({row_reg, col_reg}<19'b0010101010100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101010100000110) && ({row_reg, col_reg}<19'b0010101010100001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010101010100001000) && ({row_reg, col_reg}<19'b0010101100011000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010101100011000110) && ({row_reg, col_reg}<19'b0010101100011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010101100011001000) && ({row_reg, col_reg}<19'b0010101100011010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101100011010001) && ({row_reg, col_reg}<19'b0010101100011010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101100011010101) && ({row_reg, col_reg}<19'b0010101100011010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0010101100011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101100011011000) && ({row_reg, col_reg}<19'b0010101100011011100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101100011011100) && ({row_reg, col_reg}<19'b0010101100011011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101100011011110) && ({row_reg, col_reg}<19'b0010101100011100000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101100011100000) && ({row_reg, col_reg}<19'b0010101100011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101100011101001) && ({row_reg, col_reg}<19'b0010101100011101101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101100011101101) && ({row_reg, col_reg}<19'b0010101100011101111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101100011101111) && ({row_reg, col_reg}<19'b0010101100011110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101100011110001) && ({row_reg, col_reg}<19'b0010101100100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101100100000110) && ({row_reg, col_reg}<19'b0010101100100001000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010101100100001000) && ({row_reg, col_reg}<19'b0010101110011001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010101110011001000) && ({row_reg, col_reg}<19'b0010101110011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010101110011001011) && ({row_reg, col_reg}<19'b0010101110011010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101110011010101) && ({row_reg, col_reg}<19'b0010101110011010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101110011010111) && ({row_reg, col_reg}<19'b0010101110011011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101110011011010) && ({row_reg, col_reg}<19'b0010101110011100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101110011100000) && ({row_reg, col_reg}<19'b0010101110011100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101110011100100) && ({row_reg, col_reg}<19'b0010101110011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101110011100110) && ({row_reg, col_reg}<19'b0010101110011101001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101110011101001) && ({row_reg, col_reg}<19'b0010101110011101111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010101110011101111) && ({row_reg, col_reg}<19'b0010101110011110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101110011110011) && ({row_reg, col_reg}<19'b0010101110011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010101110011110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010101110011111000) && ({row_reg, col_reg}<19'b0010101110100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010101110100000100) && ({row_reg, col_reg}<19'b0010101110100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010101110100000110) && ({row_reg, col_reg}<19'b0010110000011001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010110000011001000) && ({row_reg, col_reg}<19'b0010110000011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010110000011001011) && ({row_reg, col_reg}<19'b0010110000011010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110000011010101) && ({row_reg, col_reg}<19'b0010110000011010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110000011010111) && ({row_reg, col_reg}<19'b0010110000011011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110000011011010) && ({row_reg, col_reg}<19'b0010110000011100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110000011100000) && ({row_reg, col_reg}<19'b0010110000011100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110000011100100) && ({row_reg, col_reg}<19'b0010110000011100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110000011100110) && ({row_reg, col_reg}<19'b0010110000011101001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110000011101001) && ({row_reg, col_reg}<19'b0010110000011101111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110000011101111) && ({row_reg, col_reg}<19'b0010110000011110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110000011110011) && ({row_reg, col_reg}<19'b0010110000011110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0010110000011110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110000011111000) && ({row_reg, col_reg}<19'b0010110000100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110000100000100) && ({row_reg, col_reg}<19'b0010110000100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010110000100000110) && ({row_reg, col_reg}<19'b0010110010011001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010110010011001011) && ({row_reg, col_reg}<19'b0010110010011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010110010011010011) && ({row_reg, col_reg}<19'b0010110010011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110010011010111) && ({row_reg, col_reg}<19'b0010110010011011100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110010011011100) && ({row_reg, col_reg}<19'b0010110010011011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110010011011110) && ({row_reg, col_reg}<19'b0010110010011100010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110010011100010) && ({row_reg, col_reg}<19'b0010110010011101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110010011101000) && ({row_reg, col_reg}<19'b0010110010011101011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110010011101011) && ({row_reg, col_reg}<19'b0010110010011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110010011101111) && ({row_reg, col_reg}<19'b0010110010011110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110010011110011) && ({row_reg, col_reg}<19'b0010110010011110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0010110010011110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110010011111000) && ({row_reg, col_reg}<19'b0010110010100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110010100000010) && ({row_reg, col_reg}<19'b0010110010100000100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010110010100000100) && ({row_reg, col_reg}<19'b0010110100011001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010110100011001011) && ({row_reg, col_reg}<19'b0010110100011010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010110100011010011) && ({row_reg, col_reg}<19'b0010110100011010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110100011010111) && ({row_reg, col_reg}<19'b0010110100011011100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110100011011100) && ({row_reg, col_reg}<19'b0010110100011011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110100011011110) && ({row_reg, col_reg}<19'b0010110100011100010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110100011100010) && ({row_reg, col_reg}<19'b0010110100011101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0010110100011101000) && ({row_reg, col_reg}<19'b0010110100011101011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110100011101011) && ({row_reg, col_reg}<19'b0010110100011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110100011101111) && ({row_reg, col_reg}<19'b0010110100011110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110100011110011) && ({row_reg, col_reg}<19'b0010110100011110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0010110100011110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110100011111000) && ({row_reg, col_reg}<19'b0010110100100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110100100000010) && ({row_reg, col_reg}<19'b0010110100100000100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010110100100000100) && ({row_reg, col_reg}<19'b0010110110011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010110110011010011) && ({row_reg, col_reg}<19'b0010110110011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010110110011010101) && ({row_reg, col_reg}<19'b0010110110011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110110011100000) && ({row_reg, col_reg}<19'b0010110110011101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110110011101001) && ({row_reg, col_reg}<19'b0010110110011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110110011110001) && ({row_reg, col_reg}<19'b0010110110011110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010110110011110111) && ({row_reg, col_reg}<19'b0010110110100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010110110100000100) && ({row_reg, col_reg}<19'b0010110110100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010110110100000110) && ({row_reg, col_reg}<19'b0010111000011010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111000011010011) && ({row_reg, col_reg}<19'b0010111000011010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111000011010101) && ({row_reg, col_reg}<19'b0010111000011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111000011100000) && ({row_reg, col_reg}<19'b0010111000011101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010111000011101001) && ({row_reg, col_reg}<19'b0010111000011110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111000011110001) && ({row_reg, col_reg}<19'b0010111000011110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010111000011110111) && ({row_reg, col_reg}<19'b0010111000100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111000100000100) && ({row_reg, col_reg}<19'b0010111000100000110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111000100000110) && ({row_reg, col_reg}<19'b0010111010011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111010011010101) && ({row_reg, col_reg}<19'b0010111010011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111010011010111) && ({row_reg, col_reg}<19'b0010111010011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111010011100100) && ({row_reg, col_reg}<19'b0010111010011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010111010011101000) && ({row_reg, col_reg}<19'b0010111010100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111010100000110) && ({row_reg, col_reg}<19'b0010111010100001001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111010100001001) && ({row_reg, col_reg}<19'b0010111100011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111100011010101) && ({row_reg, col_reg}<19'b0010111100011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111100011010111) && ({row_reg, col_reg}<19'b0010111100011100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111100011100100) && ({row_reg, col_reg}<19'b0010111100011101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0010111100011101000) && ({row_reg, col_reg}<19'b0010111100100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111100100000110) && ({row_reg, col_reg}<19'b0010111100100001001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111100100001001) && ({row_reg, col_reg}<19'b0010111110011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111110011010101) && ({row_reg, col_reg}<19'b0010111110011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111110011010111) && ({row_reg, col_reg}<19'b0010111110100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0010111110100001001) && ({row_reg, col_reg}<19'b0010111110100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0010111110100001011) && ({row_reg, col_reg}<19'b0010111110111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0010111110111000110) && ({row_reg, col_reg}<19'b0010111110111001101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0010111110111001101) && ({row_reg, col_reg}<19'b0011000000011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000000011010101) && ({row_reg, col_reg}<19'b0011000000011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000000011010111) && ({row_reg, col_reg}<19'b0011000000100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000000100001001) && ({row_reg, col_reg}<19'b0011000000100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000000100001011) && ({row_reg, col_reg}<19'b0011000000111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000000111000110) && ({row_reg, col_reg}<19'b0011000000111001101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000000111001101) && ({row_reg, col_reg}<19'b0011000010011010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000010011010101) && ({row_reg, col_reg}<19'b0011000010011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000010011010111) && ({row_reg, col_reg}<19'b0011000010100001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000010100001001) && ({row_reg, col_reg}<19'b0011000010100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000010100001011) && ({row_reg, col_reg}<19'b0011000010111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000010111000110) && ({row_reg, col_reg}<19'b0011000010111001101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000010111001101) && ({row_reg, col_reg}<19'b0011000100011010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000100011010111) && ({row_reg, col_reg}<19'b0011000100011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000100011100000) && ({row_reg, col_reg}<19'b0011000100100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000100100000110) && ({row_reg, col_reg}<19'b0011000100100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000100100001001) && ({row_reg, col_reg}<19'b0011000100110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000100110100100) && ({row_reg, col_reg}<19'b0011000100110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000100110101011) && ({row_reg, col_reg}<19'b0011000100111000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000100111000010) && ({row_reg, col_reg}<19'b0011000100111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000100111000110) && ({row_reg, col_reg}<19'b0011000100111001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000100111001101) && ({row_reg, col_reg}<19'b0011000100111001111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000100111001111) && ({row_reg, col_reg}<19'b0011000110011010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000110011010111) && ({row_reg, col_reg}<19'b0011000110011100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000110011100000) && ({row_reg, col_reg}<19'b0011000110100000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000110100000110) && ({row_reg, col_reg}<19'b0011000110100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000110100001001) && ({row_reg, col_reg}<19'b0011000110110100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000110110100100) && ({row_reg, col_reg}<19'b0011000110110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000110110101011) && ({row_reg, col_reg}<19'b0011000110111000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011000110111000010) && ({row_reg, col_reg}<19'b0011000110111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011000110111000110) && ({row_reg, col_reg}<19'b0011000110111001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011000110111001101) && ({row_reg, col_reg}<19'b0011000110111001111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011000110111001111) && ({row_reg, col_reg}<19'b0011001000011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001000011100000) && ({row_reg, col_reg}<19'b0011001000011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000011100100) && ({row_reg, col_reg}<19'b0011001000011101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001000011101011) && ({row_reg, col_reg}<19'b0011001000011101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000011101101) && ({row_reg, col_reg}<19'b0011001000011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001000011111100) && ({row_reg, col_reg}<19'b0011001000011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000011111110) && ({row_reg, col_reg}<19'b0011001000100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001000100000010) && ({row_reg, col_reg}<19'b0011001000100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000100000110) && ({row_reg, col_reg}<19'b0011001000110100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001000110100010) && ({row_reg, col_reg}<19'b0011001000110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000110100100) && ({row_reg, col_reg}<19'b0011001000110101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001000110101011) && ({row_reg, col_reg}<19'b0011001000110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000110101101) && ({row_reg, col_reg}<19'b0011001000110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001000110111110) && ({row_reg, col_reg}<19'b0011001000111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001000111000010) && ({row_reg, col_reg}<19'b0011001000111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001000111001111) && ({row_reg, col_reg}<19'b0011001000111010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001000111010001) && ({row_reg, col_reg}<19'b0011001010011100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001010011100000) && ({row_reg, col_reg}<19'b0011001010011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010011100100) && ({row_reg, col_reg}<19'b0011001010011101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001010011101011) && ({row_reg, col_reg}<19'b0011001010011101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010011101101) && ({row_reg, col_reg}<19'b0011001010011111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001010011111100) && ({row_reg, col_reg}<19'b0011001010011111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010011111110) && ({row_reg, col_reg}<19'b0011001010100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001010100000010) && ({row_reg, col_reg}<19'b0011001010100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010100000110) && ({row_reg, col_reg}<19'b0011001010110100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001010110100010) && ({row_reg, col_reg}<19'b0011001010110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010110100100) && ({row_reg, col_reg}<19'b0011001010110101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001010110101011) && ({row_reg, col_reg}<19'b0011001010110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010110101101) && ({row_reg, col_reg}<19'b0011001010110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001010110111110) && ({row_reg, col_reg}<19'b0011001010111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001010111000010) && ({row_reg, col_reg}<19'b0011001010111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001010111001111) && ({row_reg, col_reg}<19'b0011001010111010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001010111010001) && ({row_reg, col_reg}<19'b0011001100011100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100011100100) && ({row_reg, col_reg}<19'b0011001100011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100011100110) && ({row_reg, col_reg}<19'b0011001100011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001100011101001) && ({row_reg, col_reg}<19'b0011001100011101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100011101011) && ({row_reg, col_reg}<19'b0011001100011101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100011101101) && ({row_reg, col_reg}<19'b0011001100011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100011110001) && ({row_reg, col_reg}<19'b0011001100011111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001100011111000) && ({row_reg, col_reg}<19'b0011001100011111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100011111100) && ({row_reg, col_reg}<19'b0011001100011111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100011111110) && ({row_reg, col_reg}<19'b0011001100100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100100000010) && ({row_reg, col_reg}<19'b0011001100110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100110011110) && ({row_reg, col_reg}<19'b0011001100110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100110100010) && ({row_reg, col_reg}<19'b0011001100110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001100110101101) && ({row_reg, col_reg}<19'b0011001100110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100110101111) && ({row_reg, col_reg}<19'b0011001100110110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100110110001) && ({row_reg, col_reg}<19'b0011001100110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100110110111) && ({row_reg, col_reg}<19'b0011001100110111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001100110111100) && ({row_reg, col_reg}<19'b0011001100110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001100110111110) && ({row_reg, col_reg}<19'b0011001100111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001100111001111) && ({row_reg, col_reg}<19'b0011001100111010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001100111010001) && ({row_reg, col_reg}<19'b0011001110011100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110011100100) && ({row_reg, col_reg}<19'b0011001110011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110011100110) && ({row_reg, col_reg}<19'b0011001110011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001110011101001) && ({row_reg, col_reg}<19'b0011001110011101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110011101011) && ({row_reg, col_reg}<19'b0011001110011101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110011101101) && ({row_reg, col_reg}<19'b0011001110011110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110011110001) && ({row_reg, col_reg}<19'b0011001110011111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001110011111000) && ({row_reg, col_reg}<19'b0011001110011111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110011111100) && ({row_reg, col_reg}<19'b0011001110011111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110011111110) && ({row_reg, col_reg}<19'b0011001110100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110100000010) && ({row_reg, col_reg}<19'b0011001110110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110110011110) && ({row_reg, col_reg}<19'b0011001110110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110110100010) && ({row_reg, col_reg}<19'b0011001110110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001110110101101) && ({row_reg, col_reg}<19'b0011001110110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110110101111) && ({row_reg, col_reg}<19'b0011001110110110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110110110001) && ({row_reg, col_reg}<19'b0011001110110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110110110111) && ({row_reg, col_reg}<19'b0011001110110111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011001110110111100) && ({row_reg, col_reg}<19'b0011001110110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011001110110111110) && ({row_reg, col_reg}<19'b0011001110111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011001110111001111) && ({row_reg, col_reg}<19'b0011001110111010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011001110111010001) && ({row_reg, col_reg}<19'b0011010000011100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010000011100110) && ({row_reg, col_reg}<19'b0011010000011101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000011101001) && ({row_reg, col_reg}<19'b0011010000011110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010000011110001) && ({row_reg, col_reg}<19'b0011010000011111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000011111000) && ({row_reg, col_reg}<19'b0011010000110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010000110011100) && ({row_reg, col_reg}<19'b0011010000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000110011110) && ({row_reg, col_reg}<19'b0011010000110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010000110101101) && ({row_reg, col_reg}<19'b0011010000110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000110101111) && ({row_reg, col_reg}<19'b0011010000110110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010000110110001) && ({row_reg, col_reg}<19'b0011010000110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000110110011) && ({row_reg, col_reg}<19'b0011010000110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011010000110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000110111000) && ({row_reg, col_reg}<19'b0011010000110111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010000110111100) && ({row_reg, col_reg}<19'b0011010000110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010000110111110) && ({row_reg, col_reg}<19'b0011010000111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010000111000110) && ({row_reg, col_reg}<19'b0011010000111001001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011010000111001001) && ({row_reg, col_reg}<19'b0011010000111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010000111010001) && ({row_reg, col_reg}<19'b0011010000111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010000111010011) && ({row_reg, col_reg}<19'b0011010010011100110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010011100110) && ({row_reg, col_reg}<19'b0011010010011101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010011101001) && ({row_reg, col_reg}<19'b0011010010011110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010011110001) && ({row_reg, col_reg}<19'b0011010010011111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010011111000) && ({row_reg, col_reg}<19'b0011010010110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010110011100) && ({row_reg, col_reg}<19'b0011010010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110011110) && ({row_reg, col_reg}<19'b0011010010110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010010110101101) && ({row_reg, col_reg}<19'b0011010010110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110101111) && ({row_reg, col_reg}<19'b0011010010110110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010110110001) && ({row_reg, col_reg}<19'b0011010010110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110110011) && ({row_reg, col_reg}<19'b0011010010110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011010010110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110111000) && ({row_reg, col_reg}<19'b0011010010110111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010010110111100) && ({row_reg, col_reg}<19'b0011010010110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010010110111110) && ({row_reg, col_reg}<19'b0011010010111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010010111000110) && ({row_reg, col_reg}<19'b0011010010111001001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011010010111001001) && ({row_reg, col_reg}<19'b0011010010111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010010111010001) && ({row_reg, col_reg}<19'b0011010010111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010010111010011) && ({row_reg, col_reg}<19'b0011010100110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010100110011100) && ({row_reg, col_reg}<19'b0011010100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010100110011110) && ({row_reg, col_reg}<19'b0011010100110100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010100110100100) && ({row_reg, col_reg}<19'b0011010100110101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0011010100110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010100110101001) && ({row_reg, col_reg}<19'b0011010100110101011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011010100110101011) && ({row_reg, col_reg}<19'b0011010100110101101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011010100110101101) && ({row_reg, col_reg}<19'b0011010100110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010100110101111) && ({row_reg, col_reg}<19'b0011010100110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010100110110001) && ({row_reg, col_reg}<19'b0011010100110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011010100110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010100110111000) && ({row_reg, col_reg}<19'b0011010100110111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010100110111010) && ({row_reg, col_reg}<19'b0011010100110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010100110111100) && ({row_reg, col_reg}<19'b0011010100111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010100111000110) && ({row_reg, col_reg}<19'b0011010100111001001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011010100111001001) && ({row_reg, col_reg}<19'b0011010100111001101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011010100111001101) && ({row_reg, col_reg}<19'b0011010100111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010100111010001) && ({row_reg, col_reg}<19'b0011010100111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010100111010011) && ({row_reg, col_reg}<19'b0011010110110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010110110011100) && ({row_reg, col_reg}<19'b0011010110110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110011110) && ({row_reg, col_reg}<19'b0011010110110100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110110100100) && ({row_reg, col_reg}<19'b0011010110110101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0011010110110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110110101001) && ({row_reg, col_reg}<19'b0011010110110101011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011010110110101011) && ({row_reg, col_reg}<19'b0011010110110101101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011010110110101101) && ({row_reg, col_reg}<19'b0011010110110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110110101111) && ({row_reg, col_reg}<19'b0011010110110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110110001) && ({row_reg, col_reg}<19'b0011010110110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0011010110110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110111000) && ({row_reg, col_reg}<19'b0011010110110111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011010110110111010) && ({row_reg, col_reg}<19'b0011010110110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011010110110111100) && ({row_reg, col_reg}<19'b0011010110111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110111000110) && ({row_reg, col_reg}<19'b0011010110111001001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011010110111001001) && ({row_reg, col_reg}<19'b0011010110111001101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011010110111001101) && ({row_reg, col_reg}<19'b0011010110111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011010110111010001) && ({row_reg, col_reg}<19'b0011010110111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011010110111010011) && ({row_reg, col_reg}<19'b0011011000110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011000110011100) && ({row_reg, col_reg}<19'b0011011000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011000110011110) && ({row_reg, col_reg}<19'b0011011000110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000110100010) && ({row_reg, col_reg}<19'b0011011000110100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011011000110100100) && ({row_reg, col_reg}<19'b0011011000110101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011000110101000) && ({row_reg, col_reg}<19'b0011011000110101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000110101011) && ({row_reg, col_reg}<19'b0011011000110101101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011000110101101) && ({row_reg, col_reg}<19'b0011011000110101111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011011000110101111) && ({row_reg, col_reg}<19'b0011011000110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000110111000) && ({row_reg, col_reg}<19'b0011011000110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011000110111010) && ({row_reg, col_reg}<19'b0011011000111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000111001001) && ({row_reg, col_reg}<19'b0011011000111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011000111001101) && ({row_reg, col_reg}<19'b0011011000111001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011011000111001111) && ({row_reg, col_reg}<19'b0011011000111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011000111010001) && ({row_reg, col_reg}<19'b0011011000111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011000111010011) && ({row_reg, col_reg}<19'b0011011010110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011010110011100) && ({row_reg, col_reg}<19'b0011011010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011010110011110) && ({row_reg, col_reg}<19'b0011011010110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010110100010) && ({row_reg, col_reg}<19'b0011011010110100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011011010110100100) && ({row_reg, col_reg}<19'b0011011010110101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011010110101000) && ({row_reg, col_reg}<19'b0011011010110101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010110101011) && ({row_reg, col_reg}<19'b0011011010110101101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011010110101101) && ({row_reg, col_reg}<19'b0011011010110101111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011011010110101111) && ({row_reg, col_reg}<19'b0011011010110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010110111000) && ({row_reg, col_reg}<19'b0011011010110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011010110111010) && ({row_reg, col_reg}<19'b0011011010111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010111001001) && ({row_reg, col_reg}<19'b0011011010111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011010111001101) && ({row_reg, col_reg}<19'b0011011010111001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011011010111001111) && ({row_reg, col_reg}<19'b0011011010111010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011010111010001) && ({row_reg, col_reg}<19'b0011011010111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011010111010011) && ({row_reg, col_reg}<19'b0011011100110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011100110011100) && ({row_reg, col_reg}<19'b0011011100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011100110011110) && ({row_reg, col_reg}<19'b0011011100110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011100110100010) && ({row_reg, col_reg}<19'b0011011100110100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011100110100100) && ({row_reg, col_reg}<19'b0011011100110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011100110111000) && ({row_reg, col_reg}<19'b0011011100110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011100110111010) && ({row_reg, col_reg}<19'b0011011100111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011100111001011) && ({row_reg, col_reg}<19'b0011011100111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011100111001101) && ({row_reg, col_reg}<19'b0011011100111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011100111010011) && ({row_reg, col_reg}<19'b0011011100111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011100111010101) && ({row_reg, col_reg}<19'b0011011110110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011011110110011100) && ({row_reg, col_reg}<19'b0011011110110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011110110011110) && ({row_reg, col_reg}<19'b0011011110110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011110110100010) && ({row_reg, col_reg}<19'b0011011110110100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011110110100100) && ({row_reg, col_reg}<19'b0011011110110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011110110111000) && ({row_reg, col_reg}<19'b0011011110110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011011110110111010) && ({row_reg, col_reg}<19'b0011011110111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011110111001011) && ({row_reg, col_reg}<19'b0011011110111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011011110111001101) && ({row_reg, col_reg}<19'b0011011110111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011011110111010011) && ({row_reg, col_reg}<19'b0011011110111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011011110111010101) && ({row_reg, col_reg}<19'b0011100000110011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100000110011010) && ({row_reg, col_reg}<19'b0011100000110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100000110011100) && ({row_reg, col_reg}<19'b0011100000110111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100000110111010) && ({row_reg, col_reg}<19'b0011100000110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100000110111100) && ({row_reg, col_reg}<19'b0011100000111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100000111010011) && ({row_reg, col_reg}<19'b0011100000111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100000111010101) && ({row_reg, col_reg}<19'b0011100010110011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100010110011010) && ({row_reg, col_reg}<19'b0011100010110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010110011100) && ({row_reg, col_reg}<19'b0011100010110111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100010110111010) && ({row_reg, col_reg}<19'b0011100010110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100010110111100) && ({row_reg, col_reg}<19'b0011100010111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100010111010011) && ({row_reg, col_reg}<19'b0011100010111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100010111010101) && ({row_reg, col_reg}<19'b0011100100110011010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100100110011010) && ({row_reg, col_reg}<19'b0011100100110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100110011100) && ({row_reg, col_reg}<19'b0011100100110111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100100110111010) && ({row_reg, col_reg}<19'b0011100100110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100100110111100) && ({row_reg, col_reg}<19'b0011100100111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100100111010011) && ({row_reg, col_reg}<19'b0011100100111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100100111010101) && ({row_reg, col_reg}<19'b0011100110110011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011100110110011000) && ({row_reg, col_reg}<19'b0011100110110011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011100110110011010) && ({row_reg, col_reg}<19'b0011100110111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011100110111010101) && ({row_reg, col_reg}<19'b0011100110111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011100110111011000) && ({row_reg, col_reg}<19'b0011101000110011000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101000110011000) && ({row_reg, col_reg}<19'b0011101000110011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101000110011010) && ({row_reg, col_reg}<19'b0011101000111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101000111010101) && ({row_reg, col_reg}<19'b0011101000111011000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101000111011000) && ({row_reg, col_reg}<19'b0011101010110010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011101010110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101010110011000) && ({row_reg, col_reg}<19'b0011101010111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101010111011000) && ({row_reg, col_reg}<19'b0011101010111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101010111011010) && ({row_reg, col_reg}<19'b0011101100110010111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0011101100110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101100110011000) && ({row_reg, col_reg}<19'b0011101100111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101100111011000) && ({row_reg, col_reg}<19'b0011101100111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101100111011010) && ({row_reg, col_reg}<19'b0011101110110010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011101110110010011) && ({row_reg, col_reg}<19'b0011101110110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011101110110010111) && ({row_reg, col_reg}<19'b0011101110111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011101110111011000) && ({row_reg, col_reg}<19'b0011101110111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011101110111011010) && ({row_reg, col_reg}<19'b0011110000110010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110000110010011) && ({row_reg, col_reg}<19'b0011110000110010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110000110010111) && ({row_reg, col_reg}<19'b0011110000111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110000111011000) && ({row_reg, col_reg}<19'b0011110000111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110000111011010) && ({row_reg, col_reg}<19'b0011110010110010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110010110010001) && ({row_reg, col_reg}<19'b0011110010110010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110010110010011) && ({row_reg, col_reg}<19'b0011110010111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110010111011010) && ({row_reg, col_reg}<19'b0011110010111011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110010111011100) && ({row_reg, col_reg}<19'b0011110100110010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110100110010001) && ({row_reg, col_reg}<19'b0011110100110010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110100110010011) && ({row_reg, col_reg}<19'b0011110100111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110100111011010) && ({row_reg, col_reg}<19'b0011110100111011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110100111011100) && ({row_reg, col_reg}<19'b0011110110110001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011110110110001111) && ({row_reg, col_reg}<19'b0011110110110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011110110110010001) && ({row_reg, col_reg}<19'b0011110110111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011110110111011100) && ({row_reg, col_reg}<19'b0011110110111011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011110110111011110) && ({row_reg, col_reg}<19'b0011111000110001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111000110001111) && ({row_reg, col_reg}<19'b0011111000110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111000110010001) && ({row_reg, col_reg}<19'b0011111000111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111000111011100) && ({row_reg, col_reg}<19'b0011111000111011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111000111011110) && ({row_reg, col_reg}<19'b0011111010110001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111010110001101) && ({row_reg, col_reg}<19'b0011111010110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111010110001111) && ({row_reg, col_reg}<19'b0011111010111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010111001011) && ({row_reg, col_reg}<19'b0011111010111010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111010111010001) && ({row_reg, col_reg}<19'b0011111010111011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111010111011110) && ({row_reg, col_reg}<19'b0011111010111100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111010111100000) && ({row_reg, col_reg}<19'b0011111100110001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111100110001101) && ({row_reg, col_reg}<19'b0011111100110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111100110001111) && ({row_reg, col_reg}<19'b0011111100111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100111001011) && ({row_reg, col_reg}<19'b0011111100111010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111100111010001) && ({row_reg, col_reg}<19'b0011111100111011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111100111011110) && ({row_reg, col_reg}<19'b0011111100111100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111100111100000) && ({row_reg, col_reg}<19'b0011111110001010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111110001010011) && ({row_reg, col_reg}<19'b0011111110001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111110001011010) && ({row_reg, col_reg}<19'b0011111110110001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0011111110110001011) && ({row_reg, col_reg}<19'b0011111110110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0011111110110001101) && ({row_reg, col_reg}<19'b0011111110111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110111001001) && ({row_reg, col_reg}<19'b0011111110111001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0011111110111001011) && ({row_reg, col_reg}<19'b0011111110111010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0011111110111010001) && ({row_reg, col_reg}<19'b0011111110111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0011111110111100000) && ({row_reg, col_reg}<19'b0011111110111100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0011111110111100010) && ({row_reg, col_reg}<19'b0100000000001010011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000000001010011) && ({row_reg, col_reg}<19'b0100000000001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000000001011010) && ({row_reg, col_reg}<19'b0100000000110001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000000110001011) && ({row_reg, col_reg}<19'b0100000000110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000000110001101) && ({row_reg, col_reg}<19'b0100000000111001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000111001001) && ({row_reg, col_reg}<19'b0100000000111001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000000111001011) && ({row_reg, col_reg}<19'b0100000000111010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000000111010001) && ({row_reg, col_reg}<19'b0100000000111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000000111100000) && ({row_reg, col_reg}<19'b0100000000111100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000000111100010) && ({row_reg, col_reg}<19'b0100000010001010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000010001010001) && ({row_reg, col_reg}<19'b0100000010001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010001010011) && ({row_reg, col_reg}<19'b0100000010001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010001011010) && ({row_reg, col_reg}<19'b0100000010001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010001011100) && ({row_reg, col_reg}<19'b0100000010110001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000010110001011) && ({row_reg, col_reg}<19'b0100000010110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000010110001101) && ({row_reg, col_reg}<19'b0100000010110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010110111000) && ({row_reg, col_reg}<19'b0100000010110111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000010110111010) && ({row_reg, col_reg}<19'b0100000010111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100000010111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000010111001001) && ({row_reg, col_reg}<19'b0100000010111001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000010111001011) && ({row_reg, col_reg}<19'b0100000010111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000010111001101) && ({row_reg, col_reg}<19'b0100000010111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000010111011100) && ({row_reg, col_reg}<19'b0100000010111100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000010111100000) && ({row_reg, col_reg}<19'b0100000100001010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000100001010001) && ({row_reg, col_reg}<19'b0100000100001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100001010011) && ({row_reg, col_reg}<19'b0100000100001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100001011010) && ({row_reg, col_reg}<19'b0100000100001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100001011100) && ({row_reg, col_reg}<19'b0100000100110001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000100110001011) && ({row_reg, col_reg}<19'b0100000100110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000100110001101) && ({row_reg, col_reg}<19'b0100000100110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100110111000) && ({row_reg, col_reg}<19'b0100000100110111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000100110111010) && ({row_reg, col_reg}<19'b0100000100111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100000100111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100111001001) && ({row_reg, col_reg}<19'b0100000100111001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000100111001011) && ({row_reg, col_reg}<19'b0100000100111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000100111001101) && ({row_reg, col_reg}<19'b0100000100111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000100111011100) && ({row_reg, col_reg}<19'b0100000100111100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000100111100000) && ({row_reg, col_reg}<19'b0100000110001010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000110001010001) && ({row_reg, col_reg}<19'b0100000110001010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110001010011) && ({row_reg, col_reg}<19'b0100000110001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110001011010) && ({row_reg, col_reg}<19'b0100000110001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110001011100) && ({row_reg, col_reg}<19'b0100000110110001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100000110110001011) && ({row_reg, col_reg}<19'b0100000110110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100000110110001101) && ({row_reg, col_reg}<19'b0100000110110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110110111000) && ({row_reg, col_reg}<19'b0100000110110111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000110110111010) && ({row_reg, col_reg}<19'b0100000110111001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100000110111001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110111001001) && ({row_reg, col_reg}<19'b0100000110111001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100000110111001011) && ({row_reg, col_reg}<19'b0100000110111001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100000110111001101) && ({row_reg, col_reg}<19'b0100000110111011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100000110111011100) && ({row_reg, col_reg}<19'b0100000110111100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100000110111100000) && ({row_reg, col_reg}<19'b0100001000001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001000001001000) && ({row_reg, col_reg}<19'b0100001000001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000001001101) && ({row_reg, col_reg}<19'b0100001000001001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001000001001111) && ({row_reg, col_reg}<19'b0100001000001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000001010001) && ({row_reg, col_reg}<19'b0100001000001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000001011100) && ({row_reg, col_reg}<19'b0100001000001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000001100000) && ({row_reg, col_reg}<19'b0100001000110001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001000110001101) && ({row_reg, col_reg}<19'b0100001000110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001000110001111) && ({row_reg, col_reg}<19'b0100001000110011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000110011010) && ({row_reg, col_reg}<19'b0100001000110011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001000110011110) && ({row_reg, col_reg}<19'b0100001000110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000110100110) && ({row_reg, col_reg}<19'b0100001000110101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001000110101000) && ({row_reg, col_reg}<19'b0100001000110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100001000110110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001000110111000) && ({row_reg, col_reg}<19'b0100001000110111010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001000110111010) && ({row_reg, col_reg}<19'b0100001000111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000111000100) && ({row_reg, col_reg}<19'b0100001000111001001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001000111001001) && ({row_reg, col_reg}<19'b0100001000111001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001000111001011) && ({row_reg, col_reg}<19'b0100001000111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001000111011010) && ({row_reg, col_reg}<19'b0100001000111011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001000111011100) && ({row_reg, col_reg}<19'b0100001010001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001010001001000) && ({row_reg, col_reg}<19'b0100001010001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010001001101) && ({row_reg, col_reg}<19'b0100001010001001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001010001001111) && ({row_reg, col_reg}<19'b0100001010001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010001010001) && ({row_reg, col_reg}<19'b0100001010001011100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010001011100) && ({row_reg, col_reg}<19'b0100001010001100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010001100000) && ({row_reg, col_reg}<19'b0100001010110001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001010110001101) && ({row_reg, col_reg}<19'b0100001010110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001010110001111) && ({row_reg, col_reg}<19'b0100001010110011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010110011010) && ({row_reg, col_reg}<19'b0100001010110011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001010110011110) && ({row_reg, col_reg}<19'b0100001010110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010110100110) && ({row_reg, col_reg}<19'b0100001010110101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001010110101000) && ({row_reg, col_reg}<19'b0100001010110110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100001010110110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001010110111000) && ({row_reg, col_reg}<19'b0100001010110111010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001010110111010) && ({row_reg, col_reg}<19'b0100001010111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010111000100) && ({row_reg, col_reg}<19'b0100001010111001001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001010111001001) && ({row_reg, col_reg}<19'b0100001010111001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001010111001011) && ({row_reg, col_reg}<19'b0100001010111011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001010111011010) && ({row_reg, col_reg}<19'b0100001010111011100)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001010111011100) && ({row_reg, col_reg}<19'b0100001100001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100001000110) && ({row_reg, col_reg}<19'b0100001100001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001001000) && ({row_reg, col_reg}<19'b0100001100001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100001001011) && ({row_reg, col_reg}<19'b0100001100001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001001101) && ({row_reg, col_reg}<19'b0100001100001001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100001001111) && ({row_reg, col_reg}<19'b0100001100001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001010001) && ({row_reg, col_reg}<19'b0100001100001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100001100000) && ({row_reg, col_reg}<19'b0100001100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100001100010) && ({row_reg, col_reg}<19'b0100001100110001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001100110001111) && ({row_reg, col_reg}<19'b0100001100110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001100110010001) && ({row_reg, col_reg}<19'b0100001100110011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100110011010) && ({row_reg, col_reg}<19'b0100001100110011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001100110011110) && ({row_reg, col_reg}<19'b0100001100110100000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001100110100000) && ({row_reg, col_reg}<19'b0100001100110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100110100010) && ({row_reg, col_reg}<19'b0100001100110100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001100110100110) && ({row_reg, col_reg}<19'b0100001100110101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}==19'b0100001100110101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001100110101001) && ({row_reg, col_reg}<19'b0100001100110110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100110110011) && ({row_reg, col_reg}<19'b0100001100110110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0100001100110110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001100110111000) && ({row_reg, col_reg}<19'b0100001100110111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001100110111010) && ({row_reg, col_reg}<19'b0100001100111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100111000010) && ({row_reg, col_reg}<19'b0100001100111000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001100111000100) && ({row_reg, col_reg}<19'b0100001100111001001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001100111001001) && ({row_reg, col_reg}<19'b0100001100111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001100111011000) && ({row_reg, col_reg}<19'b0100001100111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001100111011010) && ({row_reg, col_reg}<19'b0100001110001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110001000110) && ({row_reg, col_reg}<19'b0100001110001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001001000) && ({row_reg, col_reg}<19'b0100001110001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110001001011) && ({row_reg, col_reg}<19'b0100001110001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001001101) && ({row_reg, col_reg}<19'b0100001110001001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110001001111) && ({row_reg, col_reg}<19'b0100001110001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001010001) && ({row_reg, col_reg}<19'b0100001110001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110001100000) && ({row_reg, col_reg}<19'b0100001110001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110001100010) && ({row_reg, col_reg}<19'b0100001110110001111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100001110110001111) && ({row_reg, col_reg}<19'b0100001110110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100001110110010001) && ({row_reg, col_reg}<19'b0100001110110011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110110011010) && ({row_reg, col_reg}<19'b0100001110110011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001110110011110) && ({row_reg, col_reg}<19'b0100001110110100000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001110110100000) && ({row_reg, col_reg}<19'b0100001110110100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110110100010) && ({row_reg, col_reg}<19'b0100001110110100110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001110110100110) && ({row_reg, col_reg}<19'b0100001110110101000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}==19'b0100001110110101000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001110110101001) && ({row_reg, col_reg}<19'b0100001110110110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110110110011) && ({row_reg, col_reg}<19'b0100001110110110111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0100001110110110111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001110110111000) && ({row_reg, col_reg}<19'b0100001110110111010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001110110111010) && ({row_reg, col_reg}<19'b0100001110111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110111000010) && ({row_reg, col_reg}<19'b0100001110111000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100001110111000100) && ({row_reg, col_reg}<19'b0100001110111001001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100001110111001001) && ({row_reg, col_reg}<19'b0100001110111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100001110111011000) && ({row_reg, col_reg}<19'b0100001110111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100001110111011010) && ({row_reg, col_reg}<19'b0100010000001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010000001000110) && ({row_reg, col_reg}<19'b0100010000001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001001000) && ({row_reg, col_reg}<19'b0100010000001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001001101) && ({row_reg, col_reg}<19'b0100010000001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001001111) && ({row_reg, col_reg}<19'b0100010000001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001010001) && ({row_reg, col_reg}<19'b0100010000001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000001010011) && ({row_reg, col_reg}<19'b0100010000001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010000001010101) && ({row_reg, col_reg}<19'b0100010000001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001010111) && ({row_reg, col_reg}<19'b0100010000001011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000001011010) && ({row_reg, col_reg}<19'b0100010000001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000001100000) && ({row_reg, col_reg}<19'b0100010000001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000001100010) && ({row_reg, col_reg}<19'b0100010000110010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010000110010001) && ({row_reg, col_reg}<19'b0100010000110010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010000110010101) && ({row_reg, col_reg}<19'b0100010000110011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000110011110) && ({row_reg, col_reg}<19'b0100010000110100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010000110100000) && ({row_reg, col_reg}<19'b0100010000110100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000110100100) && ({row_reg, col_reg}<19'b0100010000110101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010000110101001) && ({row_reg, col_reg}<19'b0100010000110101101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000110101101) && ({row_reg, col_reg}<19'b0100010000110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000110101111) && ({row_reg, col_reg}<19'b0100010000110110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000110110011) && ({row_reg, col_reg}<19'b0100010000110111000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010000110111000) && ({row_reg, col_reg}<19'b0100010000110111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000110111100) && ({row_reg, col_reg}<19'b0100010000111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000111000000) && ({row_reg, col_reg}<19'b0100010000111000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010000111000100) && ({row_reg, col_reg}<19'b0100010000111000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010000111000110) && ({row_reg, col_reg}<19'b0100010000111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010000111011000) && ({row_reg, col_reg}<19'b0100010000111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010000111011010) && ({row_reg, col_reg}<19'b0100010010001000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010010001000110) && ({row_reg, col_reg}<19'b0100010010001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001001000) && ({row_reg, col_reg}<19'b0100010010001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001001101) && ({row_reg, col_reg}<19'b0100010010001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001001111) && ({row_reg, col_reg}<19'b0100010010001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001010001) && ({row_reg, col_reg}<19'b0100010010001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010001010011) && ({row_reg, col_reg}<19'b0100010010001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010010001010101) && ({row_reg, col_reg}<19'b0100010010001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001010111) && ({row_reg, col_reg}<19'b0100010010001011010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010001011010) && ({row_reg, col_reg}<19'b0100010010001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010001100000) && ({row_reg, col_reg}<19'b0100010010001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010001100010) && ({row_reg, col_reg}<19'b0100010010110010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010010110010001) && ({row_reg, col_reg}<19'b0100010010110010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010010110010101) && ({row_reg, col_reg}<19'b0100010010110011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010110011110) && ({row_reg, col_reg}<19'b0100010010110100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010010110100000) && ({row_reg, col_reg}<19'b0100010010110100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010110100100) && ({row_reg, col_reg}<19'b0100010010110101001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010010110101001) && ({row_reg, col_reg}<19'b0100010010110101101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010110101101) && ({row_reg, col_reg}<19'b0100010010110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010110101111) && ({row_reg, col_reg}<19'b0100010010110110011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010110110011) && ({row_reg, col_reg}<19'b0100010010110111000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010010110111000) && ({row_reg, col_reg}<19'b0100010010110111100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010110111100) && ({row_reg, col_reg}<19'b0100010010111000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010111000000) && ({row_reg, col_reg}<19'b0100010010111000100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010010111000100) && ({row_reg, col_reg}<19'b0100010010111000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010010111000110) && ({row_reg, col_reg}<19'b0100010010111011000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010010111011000) && ({row_reg, col_reg}<19'b0100010010111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010010111011010) && ({row_reg, col_reg}<19'b0100010100001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010100001000100) && ({row_reg, col_reg}<19'b0100010100001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100001001000) && ({row_reg, col_reg}<19'b0100010100001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100001001111) && ({row_reg, col_reg}<19'b0100010100001010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010100001010001) && ({row_reg, col_reg}<19'b0100010100001010011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100001010011) && ({row_reg, col_reg}<19'b0100010100001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100001010111) && ({row_reg, col_reg}<19'b0100010100001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100001011010) && ({row_reg, col_reg}<19'b0100010100001011100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010100001011100) && ({row_reg, col_reg}<19'b0100010100001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100001100000) && ({row_reg, col_reg}<19'b0100010100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100001100010) && ({row_reg, col_reg}<19'b0100010100110010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010100110010101) && ({row_reg, col_reg}<19'b0100010100110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010100110011100) && ({row_reg, col_reg}<19'b0100010100110100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100110100000) && ({row_reg, col_reg}<19'b0100010100110100110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100110100110) && ({row_reg, col_reg}<19'b0100010100110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100110101000) && ({row_reg, col_reg}<19'b0100010100110101011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100110101011) && ({row_reg, col_reg}<19'b0100010100110110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010100110110001) && ({row_reg, col_reg}<19'b0100010100110110101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100110110101) && ({row_reg, col_reg}<19'b0100010100110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010100110111000) && ({row_reg, col_reg}<19'b0100010100110111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100110111100) && ({row_reg, col_reg}<19'b0100010100111000000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010100111000000) && ({row_reg, col_reg}<19'b0100010100111000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010100111000100) && ({row_reg, col_reg}<19'b0100010100111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100010100111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010100111011000) && ({row_reg, col_reg}<19'b0100010110001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010110001000100) && ({row_reg, col_reg}<19'b0100010110001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110001001000) && ({row_reg, col_reg}<19'b0100010110001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110001001111) && ({row_reg, col_reg}<19'b0100010110001010001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010110001010001) && ({row_reg, col_reg}<19'b0100010110001010011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110001010011) && ({row_reg, col_reg}<19'b0100010110001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110001010111) && ({row_reg, col_reg}<19'b0100010110001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110001011010) && ({row_reg, col_reg}<19'b0100010110001011100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010110001011100) && ({row_reg, col_reg}<19'b0100010110001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110001100000) && ({row_reg, col_reg}<19'b0100010110001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110001100010) && ({row_reg, col_reg}<19'b0100010110110010101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100010110110010101) && ({row_reg, col_reg}<19'b0100010110110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100010110110011100) && ({row_reg, col_reg}<19'b0100010110110100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110110100000) && ({row_reg, col_reg}<19'b0100010110110100110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110110100110) && ({row_reg, col_reg}<19'b0100010110110101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110110101000) && ({row_reg, col_reg}<19'b0100010110110101011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110110101011) && ({row_reg, col_reg}<19'b0100010110110110001)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010110110110001) && ({row_reg, col_reg}<19'b0100010110110110101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110110110101) && ({row_reg, col_reg}<19'b0100010110110111000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100010110110111000) && ({row_reg, col_reg}<19'b0100010110110111100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110110111100) && ({row_reg, col_reg}<19'b0100010110111000000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100010110111000000) && ({row_reg, col_reg}<19'b0100010110111000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100010110111000100) && ({row_reg, col_reg}<19'b0100010110111010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0100010110111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100010110111011000) && ({row_reg, col_reg}<19'b0100011000001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011000001000100) && ({row_reg, col_reg}<19'b0100011000001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000001000110) && ({row_reg, col_reg}<19'b0100011000001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000001011010) && ({row_reg, col_reg}<19'b0100011000001011100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011000001011100) && ({row_reg, col_reg}<19'b0100011000001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000001100000) && ({row_reg, col_reg}<19'b0100011000001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000001100010) && ({row_reg, col_reg}<19'b0100011000110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011000110011100) && ({row_reg, col_reg}<19'b0100011000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011000110011110) && ({row_reg, col_reg}<19'b0100011000110101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000110101001) && ({row_reg, col_reg}<19'b0100011000110110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011000110110011) && ({row_reg, col_reg}<19'b0100011000110111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000110111010) && ({row_reg, col_reg}<19'b0100011000111000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011000111000000) && ({row_reg, col_reg}<19'b0100011000111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011000111010101) && ({row_reg, col_reg}<19'b0100011000111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011000111010111) && ({row_reg, col_reg}<19'b0100011010001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011010001000100) && ({row_reg, col_reg}<19'b0100011010001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010001000110) && ({row_reg, col_reg}<19'b0100011010001011010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010001011010) && ({row_reg, col_reg}<19'b0100011010001011100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011010001011100) && ({row_reg, col_reg}<19'b0100011010001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010001100000) && ({row_reg, col_reg}<19'b0100011010001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010001100010) && ({row_reg, col_reg}<19'b0100011010110011100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011010110011100) && ({row_reg, col_reg}<19'b0100011010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011010110011110) && ({row_reg, col_reg}<19'b0100011010110101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010110101001) && ({row_reg, col_reg}<19'b0100011010110110011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011010110110011) && ({row_reg, col_reg}<19'b0100011010110111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010110111010) && ({row_reg, col_reg}<19'b0100011010111000000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011010111000000) && ({row_reg, col_reg}<19'b0100011010111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011010111010101) && ({row_reg, col_reg}<19'b0100011010111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011010111010111) && ({row_reg, col_reg}<19'b0100011100000111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100000111000) && ({row_reg, col_reg}<19'b0100011100000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100000111010) && ({row_reg, col_reg}<19'b0100011100001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100001000100) && ({row_reg, col_reg}<19'b0100011100001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100001000110) && ({row_reg, col_reg}<19'b0100011100001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011100001100010) && ({row_reg, col_reg}<19'b0100011100001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100001100100) && ({row_reg, col_reg}<19'b0100011100110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011100110011110) && ({row_reg, col_reg}<19'b0100011100110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011100110100000) && ({row_reg, col_reg}<19'b0100011100110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011100110101101) && ({row_reg, col_reg}<19'b0100011100110110001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011100110110001) && ({row_reg, col_reg}<19'b0100011100111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011100111010101) && ({row_reg, col_reg}<19'b0100011100111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011100111010111) && ({row_reg, col_reg}<19'b0100011110000111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110000111000) && ({row_reg, col_reg}<19'b0100011110000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110000111010) && ({row_reg, col_reg}<19'b0100011110001000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110001000100) && ({row_reg, col_reg}<19'b0100011110001000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110001000110) && ({row_reg, col_reg}<19'b0100011110001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011110001100010) && ({row_reg, col_reg}<19'b0100011110001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110001100100) && ({row_reg, col_reg}<19'b0100011110110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100011110110011110) && ({row_reg, col_reg}<19'b0100011110110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100011110110100000) && ({row_reg, col_reg}<19'b0100011110110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011110110101101) && ({row_reg, col_reg}<19'b0100011110110110001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0100011110110110001) && ({row_reg, col_reg}<19'b0100011110111010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100011110111010101) && ({row_reg, col_reg}<19'b0100011110111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100011110111010111) && ({row_reg, col_reg}<19'b0100100000000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100100000000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000000111000) && ({row_reg, col_reg}<19'b0100100000000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100000000111010) && ({row_reg, col_reg}<19'b0100100000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000000111100) && ({row_reg, col_reg}<19'b0100100000001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100000001000010) && ({row_reg, col_reg}<19'b0100100000001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000001000100) && ({row_reg, col_reg}<19'b0100100000001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100000001100100) && ({row_reg, col_reg}<19'b0100100000001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000001100110) && ({row_reg, col_reg}<19'b0100100000110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100000110011110) && ({row_reg, col_reg}<19'b0100100000110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100000110100000) && ({row_reg, col_reg}<19'b0100100000111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100000111010011) && ({row_reg, col_reg}<19'b0100100000111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100000111010101) && ({row_reg, col_reg}<19'b0100100010000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100100010000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010000111000) && ({row_reg, col_reg}<19'b0100100010000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100010000111010) && ({row_reg, col_reg}<19'b0100100010000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010000111100) && ({row_reg, col_reg}<19'b0100100010001000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100010001000010) && ({row_reg, col_reg}<19'b0100100010001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010001000100) && ({row_reg, col_reg}<19'b0100100010001100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100010001100100) && ({row_reg, col_reg}<19'b0100100010001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010001100110) && ({row_reg, col_reg}<19'b0100100010110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100010110011110) && ({row_reg, col_reg}<19'b0100100010110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100010110100000) && ({row_reg, col_reg}<19'b0100100010111010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100010111010011) && ({row_reg, col_reg}<19'b0100100010111010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100010111010101) && ({row_reg, col_reg}<19'b0100100100000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100100100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100100000111000) && ({row_reg, col_reg}<19'b0100100100000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100000111010) && ({row_reg, col_reg}<19'b0100100100000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100100000111100) && ({row_reg, col_reg}<19'b0100100100001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100100001000000) && ({row_reg, col_reg}<19'b0100100100001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100100001000010) && ({row_reg, col_reg}<19'b0100100100001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100001100110) && ({row_reg, col_reg}<19'b0100100100001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100100001101000) && ({row_reg, col_reg}<19'b0100100100110100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100100110100000) && ({row_reg, col_reg}<19'b0100100100110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100100110101001) && ({row_reg, col_reg}<19'b0100100100111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100100111001111) && ({row_reg, col_reg}<19'b0100100100111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100100111010011) && ({row_reg, col_reg}<19'b0100100110000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100100110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100110000111000) && ({row_reg, col_reg}<19'b0100100110000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110000111010) && ({row_reg, col_reg}<19'b0100100110000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100110000111100) && ({row_reg, col_reg}<19'b0100100110001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100110001000000) && ({row_reg, col_reg}<19'b0100100110001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100110001000010) && ({row_reg, col_reg}<19'b0100100110001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110001100110) && ({row_reg, col_reg}<19'b0100100110001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100110001101000) && ({row_reg, col_reg}<19'b0100100110110100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100100110110100000) && ({row_reg, col_reg}<19'b0100100110110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100100110110101001) && ({row_reg, col_reg}<19'b0100100110111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100100110111001111) && ({row_reg, col_reg}<19'b0100100110111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100100110111010011) && ({row_reg, col_reg}<19'b0100101000000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100101000000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101000000111000) && ({row_reg, col_reg}<19'b0100101000000111010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000000111010) && ({row_reg, col_reg}<19'b0100101000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101000000111100) && ({row_reg, col_reg}<19'b0100101000001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101000001000000) && ({row_reg, col_reg}<19'b0100101000001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101000001000010) && ({row_reg, col_reg}<19'b0100101000001100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000001100110) && ({row_reg, col_reg}<19'b0100101000001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101000001101000) && ({row_reg, col_reg}<19'b0100101000110100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101000110100000) && ({row_reg, col_reg}<19'b0100101000110101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101000110101001) && ({row_reg, col_reg}<19'b0100101000111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101000111001111) && ({row_reg, col_reg}<19'b0100101000111010011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101000111010011) && ({row_reg, col_reg}<19'b0100101010000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101010000110001) && ({row_reg, col_reg}<19'b0100101010000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010000110011) && ({row_reg, col_reg}<19'b0100101010000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100101010000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010000111000) && ({row_reg, col_reg}<19'b0100101010000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010000111100) && ({row_reg, col_reg}<19'b0100101010000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010000111110) && ({row_reg, col_reg}<19'b0100101010001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101010001000000) && ({row_reg, col_reg}<19'b0100101010001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010001000010) && ({row_reg, col_reg}<19'b0100101010001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010001101000) && ({row_reg, col_reg}<19'b0100101010001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010001101011) && ({row_reg, col_reg}<19'b0100101010110101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101010110101001) && ({row_reg, col_reg}<19'b0100101010110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010110101101) && ({row_reg, col_reg}<19'b0100101010110110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010110110101) && ({row_reg, col_reg}<19'b0100101010110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010110110111) && ({row_reg, col_reg}<19'b0100101010111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010111000110) && ({row_reg, col_reg}<19'b0100101010111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101010111001000) && ({row_reg, col_reg}<19'b0100101010111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101010111001011) && ({row_reg, col_reg}<19'b0100101010111001111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101010111001111) && ({row_reg, col_reg}<19'b0100101100000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101100000110001) && ({row_reg, col_reg}<19'b0100101100000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100000110011) && ({row_reg, col_reg}<19'b0100101100000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100101100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100000111000) && ({row_reg, col_reg}<19'b0100101100000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100000111100) && ({row_reg, col_reg}<19'b0100101100000111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100000111110) && ({row_reg, col_reg}<19'b0100101100001000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101100001000000) && ({row_reg, col_reg}<19'b0100101100001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100001000010) && ({row_reg, col_reg}<19'b0100101100001101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100001101000) && ({row_reg, col_reg}<19'b0100101100001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100001101011) && ({row_reg, col_reg}<19'b0100101100110101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101100110101001) && ({row_reg, col_reg}<19'b0100101100110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100110101101) && ({row_reg, col_reg}<19'b0100101100110110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100110110101) && ({row_reg, col_reg}<19'b0100101100110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100110110111) && ({row_reg, col_reg}<19'b0100101100111000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100111000110) && ({row_reg, col_reg}<19'b0100101100111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101100111001000) && ({row_reg, col_reg}<19'b0100101100111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101100111001011) && ({row_reg, col_reg}<19'b0100101100111001111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101100111001111) && ({row_reg, col_reg}<19'b0100101110000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101110000101111) && ({row_reg, col_reg}<19'b0100101110000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110000110001) && ({row_reg, col_reg}<19'b0100101110000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110000110011) && ({row_reg, col_reg}<19'b0100101110000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110000110101) && ({row_reg, col_reg}<19'b0100101110000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100101110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110000111000) && ({row_reg, col_reg}<19'b0100101110000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110000111110) && ({row_reg, col_reg}<19'b0100101110001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110001000000) && ({row_reg, col_reg}<19'b0100101110001101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110001101011) && ({row_reg, col_reg}<19'b0100101110001101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110001101101) && ({row_reg, col_reg}<19'b0100101110110101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101110110101101) && ({row_reg, col_reg}<19'b0100101110110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110110101111) && ({row_reg, col_reg}<19'b0100101110110110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110110110011) && ({row_reg, col_reg}<19'b0100101110110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110110110101) && ({row_reg, col_reg}<19'b0100101110110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101110110110111) && ({row_reg, col_reg}<19'b0100101110110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110110111010) && ({row_reg, col_reg}<19'b0100101110111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100101110111000010) && ({row_reg, col_reg}<19'b0100101110111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100101110111000110) && ({row_reg, col_reg}<19'b0100101110111001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100101110111001000) && ({row_reg, col_reg}<19'b0100101110111001011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100101110111001011) && ({row_reg, col_reg}<19'b0100110000000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110000000101111) && ({row_reg, col_reg}<19'b0100110000000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000000110001) && ({row_reg, col_reg}<19'b0100110000000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000000110011) && ({row_reg, col_reg}<19'b0100110000000110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000000110101) && ({row_reg, col_reg}<19'b0100110000000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b0100110000000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000000111000) && ({row_reg, col_reg}<19'b0100110000000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000000111110) && ({row_reg, col_reg}<19'b0100110000001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000001000000) && ({row_reg, col_reg}<19'b0100110000001101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000001101011) && ({row_reg, col_reg}<19'b0100110000001101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000001101101) && ({row_reg, col_reg}<19'b0100110000110101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110000110101101) && ({row_reg, col_reg}<19'b0100110000110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000110101111) && ({row_reg, col_reg}<19'b0100110000110110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000110110011) && ({row_reg, col_reg}<19'b0100110000110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000110110101) && ({row_reg, col_reg}<19'b0100110000110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110000110110111) && ({row_reg, col_reg}<19'b0100110000110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000110111010) && ({row_reg, col_reg}<19'b0100110000111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110000111000010) && ({row_reg, col_reg}<19'b0100110000111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110000111000110) && ({row_reg, col_reg}<19'b0100110000111001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110000111001000) && ({row_reg, col_reg}<19'b0100110000111001011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110000111001011) && ({row_reg, col_reg}<19'b0100110010000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110010000101101) && ({row_reg, col_reg}<19'b0100110010000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110010000101111) && ({row_reg, col_reg}<19'b0100110010000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010000110101) && ({row_reg, col_reg}<19'b0100110010000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110010000110111) && ({row_reg, col_reg}<19'b0100110010001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110010001101101) && ({row_reg, col_reg}<19'b0100110010001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110010001101111) && ({row_reg, col_reg}<19'b0100110010110101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110010110101111) && ({row_reg, col_reg}<19'b0100110010110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110010110110011) && ({row_reg, col_reg}<19'b0100110010110111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110010110111010) && ({row_reg, col_reg}<19'b0100110010111000010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110010111000010) && ({row_reg, col_reg}<19'b0100110100000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110100000101101) && ({row_reg, col_reg}<19'b0100110100000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110100000101111) && ({row_reg, col_reg}<19'b0100110100000110101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110100000110101) && ({row_reg, col_reg}<19'b0100110100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110100000110111) && ({row_reg, col_reg}<19'b0100110100001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110100001101101) && ({row_reg, col_reg}<19'b0100110100001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110100001101111) && ({row_reg, col_reg}<19'b0100110100110101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110100110101111) && ({row_reg, col_reg}<19'b0100110100110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110100110110011) && ({row_reg, col_reg}<19'b0100110100110111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110100110111010) && ({row_reg, col_reg}<19'b0100110100111000010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110100111000010) && ({row_reg, col_reg}<19'b0100110110000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100110110000101011) && ({row_reg, col_reg}<19'b0100110110000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100110110000101101) && ({row_reg, col_reg}<19'b0100110110001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100110110001101111) && ({row_reg, col_reg}<19'b0100110110001110001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100110110001110001) && ({row_reg, col_reg}<19'b0100111000000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111000000101011) && ({row_reg, col_reg}<19'b0100111000000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111000000101101) && ({row_reg, col_reg}<19'b0100111000001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111000001101111) && ({row_reg, col_reg}<19'b0100111000001110001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111000001110001) && ({row_reg, col_reg}<19'b0100111010000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111010000101011) && ({row_reg, col_reg}<19'b0100111010000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111010000101101) && ({row_reg, col_reg}<19'b0100111010001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111010001110001) && ({row_reg, col_reg}<19'b0100111010001110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111010001110011) && ({row_reg, col_reg}<19'b0100111100000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111100000101011) && ({row_reg, col_reg}<19'b0100111100000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111100000101101) && ({row_reg, col_reg}<19'b0100111100001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111100001110001) && ({row_reg, col_reg}<19'b0100111100001110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111100001110011) && ({row_reg, col_reg}<19'b0100111110000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0100111110000101011) && ({row_reg, col_reg}<19'b0100111110000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0100111110000101101) && ({row_reg, col_reg}<19'b0100111110001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111110001000100) && ({row_reg, col_reg}<19'b0100111110001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0100111110001000110) && ({row_reg, col_reg}<19'b0100111110001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0100111110001110001) && ({row_reg, col_reg}<19'b0100111110001110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0100111110001110011) && ({row_reg, col_reg}<19'b0101000000000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000000000101011) && ({row_reg, col_reg}<19'b0101000000000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000000000101101) && ({row_reg, col_reg}<19'b0101000000001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000000001000100) && ({row_reg, col_reg}<19'b0101000000001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000000001000110) && ({row_reg, col_reg}<19'b0101000000001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000000001110001) && ({row_reg, col_reg}<19'b0101000000001110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000000001110011) && ({row_reg, col_reg}<19'b0101000010000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000010000101011) && ({row_reg, col_reg}<19'b0101000010000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000010000101101) && ({row_reg, col_reg}<19'b0101000010001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000010001000100) && ({row_reg, col_reg}<19'b0101000010001000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101000010001000110) && ({row_reg, col_reg}<19'b0101000010001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000010001001000) && ({row_reg, col_reg}<19'b0101000010001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101000010001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000010001011000) && ({row_reg, col_reg}<19'b0101000010001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000010001100000) && ({row_reg, col_reg}<19'b0101000010001100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000010001100100) && ({row_reg, col_reg}<19'b0101000010001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000010001101111) && ({row_reg, col_reg}<19'b0101000010001110001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000010001110001) && ({row_reg, col_reg}<19'b0101000100000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000100000101011) && ({row_reg, col_reg}<19'b0101000100000101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000100000101101) && ({row_reg, col_reg}<19'b0101000100001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000100001000100) && ({row_reg, col_reg}<19'b0101000100001000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101000100001000110) && ({row_reg, col_reg}<19'b0101000100001001000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000100001001000) && ({row_reg, col_reg}<19'b0101000100001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101000100001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000100001011000) && ({row_reg, col_reg}<19'b0101000100001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000100001100000) && ({row_reg, col_reg}<19'b0101000100001100100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000100001100100) && ({row_reg, col_reg}<19'b0101000100001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000100001101111) && ({row_reg, col_reg}<19'b0101000100001110001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000100001110001) && ({row_reg, col_reg}<19'b0101000110000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101000110000101101) && ({row_reg, col_reg}<19'b0101000110000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101000110000101111) && ({row_reg, col_reg}<19'b0101000110001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000110001000100) && ({row_reg, col_reg}<19'b0101000110001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000110001000110) && ({row_reg, col_reg}<19'b0101000110001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101000110001001000) && ({row_reg, col_reg}<19'b0101000110001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000110001001011) && ({row_reg, col_reg}<19'b0101000110001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000110001010101) && ({row_reg, col_reg}<19'b0101000110001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0101000110001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101000110001011000) && ({row_reg, col_reg}<19'b0101000110001011100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000110001011100) && ({row_reg, col_reg}<19'b0101000110001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000110001011110) && ({row_reg, col_reg}<19'b0101000110001100000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101000110001100000) && ({row_reg, col_reg}<19'b0101000110001100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101000110001100100) && ({row_reg, col_reg}<19'b0101000110001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101000110001101101) && ({row_reg, col_reg}<19'b0101000110001101111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101000110001101111) && ({row_reg, col_reg}<19'b0101001000000101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001000000101101) && ({row_reg, col_reg}<19'b0101001000000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001000000101111) && ({row_reg, col_reg}<19'b0101001000001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001000001000100) && ({row_reg, col_reg}<19'b0101001000001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001000001000110) && ({row_reg, col_reg}<19'b0101001000001001000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001000001001000) && ({row_reg, col_reg}<19'b0101001000001001011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001000001001011) && ({row_reg, col_reg}<19'b0101001000001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001000001010101) && ({row_reg, col_reg}<19'b0101001000001010111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}==19'b0101001000001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001000001011000) && ({row_reg, col_reg}<19'b0101001000001011100)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001000001011100) && ({row_reg, col_reg}<19'b0101001000001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001000001011110) && ({row_reg, col_reg}<19'b0101001000001100000)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001000001100000) && ({row_reg, col_reg}<19'b0101001000001100100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001000001100100) && ({row_reg, col_reg}<19'b0101001000001101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001000001101101) && ({row_reg, col_reg}<19'b0101001000001101111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001000001101111) && ({row_reg, col_reg}<19'b0101001010000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001010000101111) && ({row_reg, col_reg}<19'b0101001010000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001010000110001) && ({row_reg, col_reg}<19'b0101001010000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001010000111100) && ({row_reg, col_reg}<19'b0101001010000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001010000111110) && ({row_reg, col_reg}<19'b0101001010001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001010001000010) && ({row_reg, col_reg}<19'b0101001010001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001010001000110) && ({row_reg, col_reg}<19'b0101001010001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001010001001011) && ({row_reg, col_reg}<19'b0101001010001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001010001001111) && ({row_reg, col_reg}<19'b0101001010001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001010001010001) && ({row_reg, col_reg}<19'b0101001010001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001010001010101) && ({row_reg, col_reg}<19'b0101001010001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001010001011010) && ({row_reg, col_reg}<19'b0101001010001011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001010001011110) && ({row_reg, col_reg}<19'b0101001010001100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001010001100000) && ({row_reg, col_reg}<19'b0101001010001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001010001101001) && ({row_reg, col_reg}<19'b0101001010001101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001010001101101) && ({row_reg, col_reg}<19'b0101001100000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001100000101111) && ({row_reg, col_reg}<19'b0101001100000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001100000110001) && ({row_reg, col_reg}<19'b0101001100000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001100000111100) && ({row_reg, col_reg}<19'b0101001100000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001100000111110) && ({row_reg, col_reg}<19'b0101001100001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001100001000010) && ({row_reg, col_reg}<19'b0101001100001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001100001000110) && ({row_reg, col_reg}<19'b0101001100001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001100001001011) && ({row_reg, col_reg}<19'b0101001100001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001100001001111) && ({row_reg, col_reg}<19'b0101001100001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001100001010001) && ({row_reg, col_reg}<19'b0101001100001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001100001010101) && ({row_reg, col_reg}<19'b0101001100001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001100001011010) && ({row_reg, col_reg}<19'b0101001100001011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001100001011110) && ({row_reg, col_reg}<19'b0101001100001100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001100001100000) && ({row_reg, col_reg}<19'b0101001100001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001100001101001) && ({row_reg, col_reg}<19'b0101001100001101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001100001101101) && ({row_reg, col_reg}<19'b0101001110000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101001110000101111) && ({row_reg, col_reg}<19'b0101001110000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101001110000110001) && ({row_reg, col_reg}<19'b0101001110000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001110000111100) && ({row_reg, col_reg}<19'b0101001110000111110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001110000111110) && ({row_reg, col_reg}<19'b0101001110001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001110001000010) && ({row_reg, col_reg}<19'b0101001110001000110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001110001000110) && ({row_reg, col_reg}<19'b0101001110001001011)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001110001001011) && ({row_reg, col_reg}<19'b0101001110001001111)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001110001001111) && ({row_reg, col_reg}<19'b0101001110001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001110001010001) && ({row_reg, col_reg}<19'b0101001110001010101)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001110001010101) && ({row_reg, col_reg}<19'b0101001110001011010)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001110001011010) && ({row_reg, col_reg}<19'b0101001110001011110)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101001110001011110) && ({row_reg, col_reg}<19'b0101001110001100000)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101001110001100000) && ({row_reg, col_reg}<19'b0101001110001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101001110001101001) && ({row_reg, col_reg}<19'b0101001110001101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101001110001101101) && ({row_reg, col_reg}<19'b0101010000000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101010000000110001) && ({row_reg, col_reg}<19'b0101010000000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101010000000110011) && ({row_reg, col_reg}<19'b0101010000000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010000000111100) && ({row_reg, col_reg}<19'b0101010000000111110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010000000111110) && ({row_reg, col_reg}<19'b0101010000001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101010000001000010) && ({row_reg, col_reg}<19'b0101010000001000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010000001000110) && ({row_reg, col_reg}<19'b0101010000001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010000001001001) && ({row_reg, col_reg}<19'b0101010000001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010000001001101) && ({row_reg, col_reg}<19'b0101010000001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101010000001010011) && ({row_reg, col_reg}<19'b0101010000001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}==19'b0101010000001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010000001011000) && ({row_reg, col_reg}<19'b0101010000001011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010000001011110) && ({row_reg, col_reg}<19'b0101010000001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010000001100010) && ({row_reg, col_reg}<19'b0101010000001101001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101010000001101001) && ({row_reg, col_reg}<19'b0101010010000110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101010010000110001) && ({row_reg, col_reg}<19'b0101010010000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101010010000110011) && ({row_reg, col_reg}<19'b0101010010000111100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010010000111100) && ({row_reg, col_reg}<19'b0101010010000111110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010010000111110) && ({row_reg, col_reg}<19'b0101010010001000010)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101010010001000010) && ({row_reg, col_reg}<19'b0101010010001000110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010010001000110) && ({row_reg, col_reg}<19'b0101010010001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010010001001001) && ({row_reg, col_reg}<19'b0101010010001001101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010010001001101) && ({row_reg, col_reg}<19'b0101010010001010011)) color_data = 12'b011011001111;
		if(({row_reg, col_reg}>=19'b0101010010001010011) && ({row_reg, col_reg}<19'b0101010010001010111)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}==19'b0101010010001010111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010010001011000) && ({row_reg, col_reg}<19'b0101010010001011110)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010010001011110) && ({row_reg, col_reg}<19'b0101010010001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010010001100010) && ({row_reg, col_reg}<19'b0101010010001101001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101010010001101001) && ({row_reg, col_reg}<19'b0101010100000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101010100000101111) && ({row_reg, col_reg}<19'b0101010100000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101010100000110001) && ({row_reg, col_reg}<19'b0101010100000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010100000111110) && ({row_reg, col_reg}<19'b0101010100001000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010100001000100) && ({row_reg, col_reg}<19'b0101010100001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010100001001011) && ({row_reg, col_reg}<19'b0101010100001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010100001010101) && ({row_reg, col_reg}<19'b0101010100001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010100001100000) && ({row_reg, col_reg}<19'b0101010100001100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101010100001100010) && ({row_reg, col_reg}<19'b0101010110000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101010110000101111) && ({row_reg, col_reg}<19'b0101010110000110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101010110000110001) && ({row_reg, col_reg}<19'b0101010110000111110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010110000111110) && ({row_reg, col_reg}<19'b0101010110001000100)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010110001000100) && ({row_reg, col_reg}<19'b0101010110001001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010110001001011) && ({row_reg, col_reg}<19'b0101010110001010101)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101010110001010101) && ({row_reg, col_reg}<19'b0101010110001100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101010110001100000) && ({row_reg, col_reg}<19'b0101010110001100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101010110001100010) && ({row_reg, col_reg}<19'b0101011000000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101011000000101011) && ({row_reg, col_reg}<19'b0101011000000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101011000000101111) && ({row_reg, col_reg}<19'b0101011000001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011000001001101) && ({row_reg, col_reg}<19'b0101011000001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101011000001010001) && ({row_reg, col_reg}<19'b0101011000001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011000001011110) && ({row_reg, col_reg}<19'b0101011000001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101011000001100000) && ({row_reg, col_reg}<19'b0101011010000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101011010000101011) && ({row_reg, col_reg}<19'b0101011010000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101011010000101111) && ({row_reg, col_reg}<19'b0101011010001001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011010001001101) && ({row_reg, col_reg}<19'b0101011010001010001)) color_data = 12'b011010011111;
		if(({row_reg, col_reg}>=19'b0101011010001010001) && ({row_reg, col_reg}<19'b0101011010001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011010001011110) && ({row_reg, col_reg}<19'b0101011010001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101011010001100000) && ({row_reg, col_reg}<19'b0101011100000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101011100000101001) && ({row_reg, col_reg}<19'b0101011100000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101011100000101011) && ({row_reg, col_reg}<19'b0101011100001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011100001011110) && ({row_reg, col_reg}<19'b0101011100001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101011100001100000) && ({row_reg, col_reg}<19'b0101011110000101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101011110000101001) && ({row_reg, col_reg}<19'b0101011110000101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101011110000101011) && ({row_reg, col_reg}<19'b0101011110001011110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101011110001011110) && ({row_reg, col_reg}<19'b0101011110001100000)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101011110001100000) && ({row_reg, col_reg}<19'b0101100000000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101100000000101011) && ({row_reg, col_reg}<19'b0101100000000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100000000101111) && ({row_reg, col_reg}<19'b0101100000001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100000001010101) && ({row_reg, col_reg}<19'b0101100000001011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101100000001011110) && ({row_reg, col_reg}<19'b0101100010000101011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101100010000101011) && ({row_reg, col_reg}<19'b0101100010000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100010000101111) && ({row_reg, col_reg}<19'b0101100010001010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100010001010101) && ({row_reg, col_reg}<19'b0101100010001011110)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101100010001011110) && ({row_reg, col_reg}<19'b0101100100000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101100100000101111) && ({row_reg, col_reg}<19'b0101100100000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100100000110011) && ({row_reg, col_reg}<19'b0101100100000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100100000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100100000111000) && ({row_reg, col_reg}<19'b0101100100001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100100001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100100001001001) && ({row_reg, col_reg}<19'b0101100100001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100100001010001) && ({row_reg, col_reg}<19'b0101100100001010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101100100001010101) && ({row_reg, col_reg}<19'b0101100110000101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101100110000101111) && ({row_reg, col_reg}<19'b0101100110000110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100110000110011) && ({row_reg, col_reg}<19'b0101100110000110111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100110000111000) && ({row_reg, col_reg}<19'b0101100110001001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==19'b0101100110001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101100110001001001) && ({row_reg, col_reg}<19'b0101100110001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101100110001010001) && ({row_reg, col_reg}<19'b0101100110001010101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101100110001010101) && ({row_reg, col_reg}<19'b0101101000000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101000000110011) && ({row_reg, col_reg}<19'b0101101000000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0101101000000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101000000111000) && ({row_reg, col_reg}<19'b0101101000000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101101000000111100) && ({row_reg, col_reg}<19'b0101101000001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000001000100) && ({row_reg, col_reg}<19'b0101101000001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0101101000001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101000001001001) && ({row_reg, col_reg}<19'b0101101000001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101101000001001011) && ({row_reg, col_reg}<19'b0101101000001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101000001001111) && ({row_reg, col_reg}<19'b0101101000001010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101101000001010001) && ({row_reg, col_reg}<19'b0101101010000110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101010000110011) && ({row_reg, col_reg}<19'b0101101010000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0101101010000110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101010000111000) && ({row_reg, col_reg}<19'b0101101010000111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101101010000111100) && ({row_reg, col_reg}<19'b0101101010001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010001000100) && ({row_reg, col_reg}<19'b0101101010001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b0101101010001001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101010001001001) && ({row_reg, col_reg}<19'b0101101010001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101101010001001011) && ({row_reg, col_reg}<19'b0101101010001001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}>=19'b0101101010001001111) && ({row_reg, col_reg}<19'b0101101010001010001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101101010001010001) && ({row_reg, col_reg}<19'b0101101100000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101100000111100) && ({row_reg, col_reg}<19'b0101101100001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101101100001000100) && ({row_reg, col_reg}<19'b0101101100001001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101100001001011) && ({row_reg, col_reg}<19'b0101101100001001111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101101100001001111) && ({row_reg, col_reg}<19'b0101101110000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101110000111100) && ({row_reg, col_reg}<19'b0101101110001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101101110001000100) && ({row_reg, col_reg}<19'b0101101110001001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101101110001001011) && ({row_reg, col_reg}<19'b0101101110001001111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b0101101110001001111) && ({row_reg, col_reg}<19'b0101110000000111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101110000000111100) && ({row_reg, col_reg}<19'b0101110000001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b0101110000001000100) && ({row_reg, col_reg}<19'b0101110000001001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b0101110000001001011) && ({row_reg, col_reg}<19'b0101110000001001111)) color_data = 12'b000000000000;


































































































































































































		if(({row_reg, col_reg}>=19'b0101110000001001111) && ({row_reg, col_reg}<19'b1011110100111001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011110100111001011) && ({row_reg, col_reg}<19'b1011110100111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011110100111010111) && ({row_reg, col_reg}<19'b1011110110111001011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011110110111001011) && ({row_reg, col_reg}<19'b1011110110111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011110110111010111) && ({row_reg, col_reg}<19'b1011111000111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111000111000110) && ({row_reg, col_reg}<19'b1011111000111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111000111001011) && ({row_reg, col_reg}<19'b1011111000111010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1011111000111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111000111011000) && ({row_reg, col_reg}<19'b1011111010111000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111010111000110) && ({row_reg, col_reg}<19'b1011111010111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111010111001011) && ({row_reg, col_reg}<19'b1011111010111010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1011111010111010111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111010111011000) && ({row_reg, col_reg}<19'b1011111100001111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111100001111010) && ({row_reg, col_reg}<19'b1011111100010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111100010000100) && ({row_reg, col_reg}<19'b1011111100110010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111100110010001) && ({row_reg, col_reg}<19'b1011111100110011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111100110011010) && ({row_reg, col_reg}<19'b1011111100111000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111100111000100) && ({row_reg, col_reg}<19'b1011111100111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111100111000110) && ({row_reg, col_reg}<19'b1011111100111011000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1011111100111011000) && ({row_reg, col_reg}<19'b1011111100111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111100111011010) && ({row_reg, col_reg}<19'b1011111110001111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111110001111010) && ({row_reg, col_reg}<19'b1011111110010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111110010000100) && ({row_reg, col_reg}<19'b1011111110110010001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111110110010001) && ({row_reg, col_reg}<19'b1011111110110011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111110110011010) && ({row_reg, col_reg}<19'b1011111110111000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1011111110111000100) && ({row_reg, col_reg}<19'b1011111110111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1011111110111000110) && ({row_reg, col_reg}<19'b1011111110111011000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1011111110111011000) && ({row_reg, col_reg}<19'b1011111110111011010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1011111110111011010) && ({row_reg, col_reg}<19'b1100000000001110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000001110011) && ({row_reg, col_reg}<19'b1100000000001110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000001110101) && ({row_reg, col_reg}<19'b1100000000001111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000001111000) && ({row_reg, col_reg}<19'b1100000000001111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000001111010) && ({row_reg, col_reg}<19'b1100000000010000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000000010000100) && ({row_reg, col_reg}<19'b1100000000010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000010001000) && ({row_reg, col_reg}<19'b1100000000110001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000110001101) && ({row_reg, col_reg}<19'b1100000000110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000110010001) && ({row_reg, col_reg}<19'b1100000000110011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000000110011010) && ({row_reg, col_reg}<19'b1100000000110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000110011100) && ({row_reg, col_reg}<19'b1100000000110100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000110100000) && ({row_reg, col_reg}<19'b1100000000110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000110100010) && ({row_reg, col_reg}<19'b1100000000111000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000111000010) && ({row_reg, col_reg}<19'b1100000000111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000111000100) && ({row_reg, col_reg}<19'b1100000000111011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000000111011010) && ({row_reg, col_reg}<19'b1100000000111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000000111011100) && ({row_reg, col_reg}<19'b1100000000111100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000000111100000) && ({row_reg, col_reg}<19'b1100000000111100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000000111100010) && ({row_reg, col_reg}<19'b1100000010001110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010001110011) && ({row_reg, col_reg}<19'b1100000010001110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010001110101) && ({row_reg, col_reg}<19'b1100000010001111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010001111000) && ({row_reg, col_reg}<19'b1100000010001111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010001111010) && ({row_reg, col_reg}<19'b1100000010010000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000010010000100) && ({row_reg, col_reg}<19'b1100000010010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010010001000) && ({row_reg, col_reg}<19'b1100000010110001101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010110001101) && ({row_reg, col_reg}<19'b1100000010110010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010110010001) && ({row_reg, col_reg}<19'b1100000010110011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000010110011010) && ({row_reg, col_reg}<19'b1100000010110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010110011100) && ({row_reg, col_reg}<19'b1100000010110100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010110100000) && ({row_reg, col_reg}<19'b1100000010110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010110100010) && ({row_reg, col_reg}<19'b1100000010111000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010111000010) && ({row_reg, col_reg}<19'b1100000010111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010111000100) && ({row_reg, col_reg}<19'b1100000010111011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000010111011010) && ({row_reg, col_reg}<19'b1100000010111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000010111011100) && ({row_reg, col_reg}<19'b1100000010111100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000010111100000) && ({row_reg, col_reg}<19'b1100000010111100010)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000010111100010) && ({row_reg, col_reg}<19'b1100000100001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100001110001) && ({row_reg, col_reg}<19'b1100000100001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100001110011) && ({row_reg, col_reg}<19'b1100000100001110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100001110101) && ({row_reg, col_reg}<19'b1100000100001110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100000100001110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100001111000) && ({row_reg, col_reg}<19'b1100000100001111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100001111010) && ({row_reg, col_reg}<19'b1100000100010001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100010001000) && ({row_reg, col_reg}<19'b1100000100010001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100010001011) && ({row_reg, col_reg}<19'b1100000100110001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100110001001) && ({row_reg, col_reg}<19'b1100000100110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100110001101) && ({row_reg, col_reg}<19'b1100000100110011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100110011010) && ({row_reg, col_reg}<19'b1100000100110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100110011100) && ({row_reg, col_reg}<19'b1100000100110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100110011110) && ({row_reg, col_reg}<19'b1100000100110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100110100000) && ({row_reg, col_reg}<19'b1100000100110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100110100010) && ({row_reg, col_reg}<19'b1100000100110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100110100100) && ({row_reg, col_reg}<19'b1100000100111000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100111000000) && ({row_reg, col_reg}<19'b1100000100111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100111000010) && ({row_reg, col_reg}<19'b1100000100111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100111010101) && ({row_reg, col_reg}<19'b1100000100111010111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100000100111010111) && ({row_reg, col_reg}<19'b1100000100111011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100111011010) && ({row_reg, col_reg}<19'b1100000100111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100111011100) && ({row_reg, col_reg}<19'b1100000100111011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100111011110) && ({row_reg, col_reg}<19'b1100000100111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100111100000) && ({row_reg, col_reg}<19'b1100000100111100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000100111100010) && ({row_reg, col_reg}<19'b1100000100111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000100111100100) && ({row_reg, col_reg}<19'b1100000100111101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000100111101001) && ({row_reg, col_reg}<19'b1100000100111101011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000100111101011) && ({row_reg, col_reg}<19'b1100000110001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110001110001) && ({row_reg, col_reg}<19'b1100000110001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110001110011) && ({row_reg, col_reg}<19'b1100000110001110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110001110101) && ({row_reg, col_reg}<19'b1100000110001110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100000110001110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110001111000) && ({row_reg, col_reg}<19'b1100000110001111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110001111010) && ({row_reg, col_reg}<19'b1100000110010001000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110010001000) && ({row_reg, col_reg}<19'b1100000110010001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110010001011) && ({row_reg, col_reg}<19'b1100000110110001001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110110001001) && ({row_reg, col_reg}<19'b1100000110110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110110001101) && ({row_reg, col_reg}<19'b1100000110110011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110110011010) && ({row_reg, col_reg}<19'b1100000110110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110110011100) && ({row_reg, col_reg}<19'b1100000110110011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110110011110) && ({row_reg, col_reg}<19'b1100000110110100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110110100000) && ({row_reg, col_reg}<19'b1100000110110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110110100010) && ({row_reg, col_reg}<19'b1100000110110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110110100100) && ({row_reg, col_reg}<19'b1100000110111000000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110111000000) && ({row_reg, col_reg}<19'b1100000110111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111000010) && ({row_reg, col_reg}<19'b1100000110111010101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111010101) && ({row_reg, col_reg}<19'b1100000110111010111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100000110111010111) && ({row_reg, col_reg}<19'b1100000110111011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111011010) && ({row_reg, col_reg}<19'b1100000110111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111011100) && ({row_reg, col_reg}<19'b1100000110111011110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110111011110) && ({row_reg, col_reg}<19'b1100000110111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111100000) && ({row_reg, col_reg}<19'b1100000110111100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100000110111100010) && ({row_reg, col_reg}<19'b1100000110111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100000110111100100) && ({row_reg, col_reg}<19'b1100000110111101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100000110111101001) && ({row_reg, col_reg}<19'b1100000110111101011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100000110111101011) && ({row_reg, col_reg}<19'b1100001000001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001000001110001) && ({row_reg, col_reg}<19'b1100001000001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000001110011) && ({row_reg, col_reg}<19'b1100001000001110111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100001000001110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000001111000) && ({row_reg, col_reg}<19'b1100001000010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000010001011) && ({row_reg, col_reg}<19'b1100001000010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000010001101) && ({row_reg, col_reg}<19'b1100001000110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000110001001) && ({row_reg, col_reg}<19'b1100001000110011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000110011100) && ({row_reg, col_reg}<19'b1100001000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000110011110) && ({row_reg, col_reg}<19'b1100001000110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000110100010) && ({row_reg, col_reg}<19'b1100001000110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000110100100) && ({row_reg, col_reg}<19'b1100001000110111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001000110111000) && ({row_reg, col_reg}<19'b1100001000110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000110111010) && ({row_reg, col_reg}<19'b1100001000110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001000110111110) && ({row_reg, col_reg}<19'b1100001000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111000000) && ({row_reg, col_reg}<19'b1100001000111010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100001000111010111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100001000111011000) && ({row_reg, col_reg}<19'b1100001000111011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111011100) && ({row_reg, col_reg}<19'b1100001000111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111011110) && ({row_reg, col_reg}<19'b1100001000111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111100100) && ({row_reg, col_reg}<19'b1100001000111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111100110) && ({row_reg, col_reg}<19'b1100001000111101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001000111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001000111101001) && ({row_reg, col_reg}<19'b1100001000111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001000111101011) && ({row_reg, col_reg}<19'b1100001000111101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001000111101101) && ({row_reg, col_reg}<19'b1100001010001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001010001110001) && ({row_reg, col_reg}<19'b1100001010001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010001110011) && ({row_reg, col_reg}<19'b1100001010001110111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100001010001110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010001111000) && ({row_reg, col_reg}<19'b1100001010010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010010001011) && ({row_reg, col_reg}<19'b1100001010010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010010001101) && ({row_reg, col_reg}<19'b1100001010110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010110001001) && ({row_reg, col_reg}<19'b1100001010110011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010110011100) && ({row_reg, col_reg}<19'b1100001010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010110011110) && ({row_reg, col_reg}<19'b1100001010110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010110100010) && ({row_reg, col_reg}<19'b1100001010110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010110100100) && ({row_reg, col_reg}<19'b1100001010110111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001010110111000) && ({row_reg, col_reg}<19'b1100001010110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010110111010) && ({row_reg, col_reg}<19'b1100001010110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001010110111110) && ({row_reg, col_reg}<19'b1100001010111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111000000) && ({row_reg, col_reg}<19'b1100001010111010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100001010111010111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100001010111011000) && ({row_reg, col_reg}<19'b1100001010111011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111011100) && ({row_reg, col_reg}<19'b1100001010111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111011110) && ({row_reg, col_reg}<19'b1100001010111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111100100) && ({row_reg, col_reg}<19'b1100001010111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111100110) && ({row_reg, col_reg}<19'b1100001010111101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001010111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001010111101001) && ({row_reg, col_reg}<19'b1100001010111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001010111101011) && ({row_reg, col_reg}<19'b1100001010111101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001010111101101) && ({row_reg, col_reg}<19'b1100001100001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001100001110001) && ({row_reg, col_reg}<19'b1100001100001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100001110011) && ({row_reg, col_reg}<19'b1100001100010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100010001011) && ({row_reg, col_reg}<19'b1100001100010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100010001101) && ({row_reg, col_reg}<19'b1100001100110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100110001001) && ({row_reg, col_reg}<19'b1100001100110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100110100010) && ({row_reg, col_reg}<19'b1100001100110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100110100100) && ({row_reg, col_reg}<19'b1100001100110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001100110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100110111000) && ({row_reg, col_reg}<19'b1100001100110111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100110111010) && ({row_reg, col_reg}<19'b1100001100110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100110111100) && ({row_reg, col_reg}<19'b1100001100110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001100110111110) && ({row_reg, col_reg}<19'b1100001100111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100111000000) && ({row_reg, col_reg}<19'b1100001100111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111100110) && ({row_reg, col_reg}<19'b1100001100111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001100111101000) && ({row_reg, col_reg}<19'b1100001100111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001100111101011) && ({row_reg, col_reg}<19'b1100001100111101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001100111101101) && ({row_reg, col_reg}<19'b1100001110001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001110001110001) && ({row_reg, col_reg}<19'b1100001110001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110001110011) && ({row_reg, col_reg}<19'b1100001110010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110010001011) && ({row_reg, col_reg}<19'b1100001110010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110010001101) && ({row_reg, col_reg}<19'b1100001110110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001110110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110110001001) && ({row_reg, col_reg}<19'b1100001110110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110110100010) && ({row_reg, col_reg}<19'b1100001110110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110110100100) && ({row_reg, col_reg}<19'b1100001110110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100001110110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110110111000) && ({row_reg, col_reg}<19'b1100001110110111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110110111010) && ({row_reg, col_reg}<19'b1100001110110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110110111100) && ({row_reg, col_reg}<19'b1100001110110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100001110110111110) && ({row_reg, col_reg}<19'b1100001110111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110111000000) && ({row_reg, col_reg}<19'b1100001110111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110111100110) && ({row_reg, col_reg}<19'b1100001110111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100001110111101000) && ({row_reg, col_reg}<19'b1100001110111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100001110111101011) && ({row_reg, col_reg}<19'b1100001110111101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100001110111101101) && ({row_reg, col_reg}<19'b1100010000001110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010000001110001) && ({row_reg, col_reg}<19'b1100010000001110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000001110011) && ({row_reg, col_reg}<19'b1100010000010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000010001011) && ({row_reg, col_reg}<19'b1100010000010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000010001101) && ({row_reg, col_reg}<19'b1100010000110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100010000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000110001001) && ({row_reg, col_reg}<19'b1100010000110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000110100010) && ({row_reg, col_reg}<19'b1100010000110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000110100100) && ({row_reg, col_reg}<19'b1100010000110110111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100010000110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000110111000) && ({row_reg, col_reg}<19'b1100010000110111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000110111010) && ({row_reg, col_reg}<19'b1100010000110111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000110111100) && ({row_reg, col_reg}<19'b1100010000110111110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010000110111110) && ({row_reg, col_reg}<19'b1100010000111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000111000000) && ({row_reg, col_reg}<19'b1100010000111100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000111100110) && ({row_reg, col_reg}<19'b1100010000111101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010000111101000) && ({row_reg, col_reg}<19'b1100010000111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010000111101011) && ({row_reg, col_reg}<19'b1100010000111101101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010000111101101) && ({row_reg, col_reg}<19'b1100010010001101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010010001101111) && ({row_reg, col_reg}<19'b1100010010001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010001110001) && ({row_reg, col_reg}<19'b1100010010001111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010001111100) && ({row_reg, col_reg}<19'b1100010010001111110)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010010001111110) && ({row_reg, col_reg}<19'b1100010010010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010010001011) && ({row_reg, col_reg}<19'b1100010010010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010010001101) && ({row_reg, col_reg}<19'b1100010010110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100010010110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010110001001) && ({row_reg, col_reg}<19'b1100010010110010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100010010110010111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010010110011000) && ({row_reg, col_reg}<19'b1100010010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010110100100) && ({row_reg, col_reg}<19'b1100010010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010110100110) && ({row_reg, col_reg}<19'b1100010010110110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010010110110101) && ({row_reg, col_reg}<19'b1100010010110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010110110111) && ({row_reg, col_reg}<19'b1100010010110111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010110111100) && ({row_reg, col_reg}<19'b1100010010110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010110111110) && ({row_reg, col_reg}<19'b1100010010111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010010111101011) && ({row_reg, col_reg}<19'b1100010010111101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010010111101101) && ({row_reg, col_reg}<19'b1100010010111110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010010111110001) && ({row_reg, col_reg}<19'b1100010010111110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010010111110011) && ({row_reg, col_reg}<19'b1100010100001101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010100001101111) && ({row_reg, col_reg}<19'b1100010100001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100001110001) && ({row_reg, col_reg}<19'b1100010100001111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100001111100) && ({row_reg, col_reg}<19'b1100010100001111110)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010100001111110) && ({row_reg, col_reg}<19'b1100010100010001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100010001011) && ({row_reg, col_reg}<19'b1100010100010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100010001101) && ({row_reg, col_reg}<19'b1100010100110001000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100010100110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100110001001) && ({row_reg, col_reg}<19'b1100010100110010111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100010100110010111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010100110011000) && ({row_reg, col_reg}<19'b1100010100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100110100100) && ({row_reg, col_reg}<19'b1100010100110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100110100110) && ({row_reg, col_reg}<19'b1100010100110110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010100110110101) && ({row_reg, col_reg}<19'b1100010100110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100110110111) && ({row_reg, col_reg}<19'b1100010100110111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100110111100) && ({row_reg, col_reg}<19'b1100010100110111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100110111110) && ({row_reg, col_reg}<19'b1100010100111101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010100111101011) && ({row_reg, col_reg}<19'b1100010100111101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010100111101101) && ({row_reg, col_reg}<19'b1100010100111110001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010100111110001) && ({row_reg, col_reg}<19'b1100010100111110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010100111110011) && ({row_reg, col_reg}<19'b1100010110001101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010110001101111) && ({row_reg, col_reg}<19'b1100010110001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110001110001) && ({row_reg, col_reg}<19'b1100010110001111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110001111010) && ({row_reg, col_reg}<19'b1100010110001111100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010110001111100) && ({row_reg, col_reg}<19'b1100010110010001101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110010001101) && ({row_reg, col_reg}<19'b1100010110010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110010001111) && ({row_reg, col_reg}<19'b1100010110110000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010110110000110) && ({row_reg, col_reg}<19'b1100010110110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110110001000) && ({row_reg, col_reg}<19'b1100010110110011000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110110011000) && ({row_reg, col_reg}<19'b1100010110110011010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100010110110011010) && ({row_reg, col_reg}<19'b1100010110110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110110100100) && ({row_reg, col_reg}<19'b1100010110110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110110100110) && ({row_reg, col_reg}<19'b1100010110110110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100010110110110101) && ({row_reg, col_reg}<19'b1100010110110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110110110111) && ({row_reg, col_reg}<19'b1100010110111101101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110111101101) && ({row_reg, col_reg}<19'b1100010110111110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100010110111110001) && ({row_reg, col_reg}<19'b1100010110111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100010110111110011) && ({row_reg, col_reg}<19'b1100010110111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100010110111110101) && ({row_reg, col_reg}<19'b1100011000001101111)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011000001101111) && ({row_reg, col_reg}<19'b1100011000001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000001110001) && ({row_reg, col_reg}<19'b1100011000001111010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000001111010) && ({row_reg, col_reg}<19'b1100011000001111100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011000001111100) && ({row_reg, col_reg}<19'b1100011000010001101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000010001101) && ({row_reg, col_reg}<19'b1100011000010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000010001111) && ({row_reg, col_reg}<19'b1100011000110000110)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011000110000110) && ({row_reg, col_reg}<19'b1100011000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000110001000) && ({row_reg, col_reg}<19'b1100011000110011000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000110011000) && ({row_reg, col_reg}<19'b1100011000110011010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011000110011010) && ({row_reg, col_reg}<19'b1100011000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000110100100) && ({row_reg, col_reg}<19'b1100011000110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000110100110) && ({row_reg, col_reg}<19'b1100011000110110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011000110110101) && ({row_reg, col_reg}<19'b1100011000110110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000110110111) && ({row_reg, col_reg}<19'b1100011000111101101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000111101101) && ({row_reg, col_reg}<19'b1100011000111110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011000111110001) && ({row_reg, col_reg}<19'b1100011000111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011000111110011) && ({row_reg, col_reg}<19'b1100011000111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011000111110101) && ({row_reg, col_reg}<19'b1100011010001101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011010001101101) && ({row_reg, col_reg}<19'b1100011010001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010001101111) && ({row_reg, col_reg}<19'b1100011010010000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010010000100) && ({row_reg, col_reg}<19'b1100011010010001001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011010010001001) && ({row_reg, col_reg}<19'b1100011010010001111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010010001111) && ({row_reg, col_reg}<19'b1100011010010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010010010001) && ({row_reg, col_reg}<19'b1100011010110000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011010110000100) && ({row_reg, col_reg}<19'b1100011010110000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010110000110) && ({row_reg, col_reg}<19'b1100011010110001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010110001011) && ({row_reg, col_reg}<19'b1100011010110010001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011010110010001) && ({row_reg, col_reg}<19'b1100011010110100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010110100110) && ({row_reg, col_reg}<19'b1100011010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010110101000) && ({row_reg, col_reg}<19'b1100011010110110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011010110110011) && ({row_reg, col_reg}<19'b1100011010110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011010110110101) && ({row_reg, col_reg}<19'b1100011010111001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010111001011) && ({row_reg, col_reg}<19'b1100011010111010001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011010111010001) && ({row_reg, col_reg}<19'b1100011010111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011010111110101) && ({row_reg, col_reg}<19'b1100011010111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011010111110111) && ({row_reg, col_reg}<19'b1100011100001101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011100001101101) && ({row_reg, col_reg}<19'b1100011100001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100001101111) && ({row_reg, col_reg}<19'b1100011100010000100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100010000100) && ({row_reg, col_reg}<19'b1100011100010001001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011100010001001) && ({row_reg, col_reg}<19'b1100011100010001111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100010001111) && ({row_reg, col_reg}<19'b1100011100010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100010010001) && ({row_reg, col_reg}<19'b1100011100110000100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011100110000100) && ({row_reg, col_reg}<19'b1100011100110000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100110000110) && ({row_reg, col_reg}<19'b1100011100110001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100110001011) && ({row_reg, col_reg}<19'b1100011100110010001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011100110010001) && ({row_reg, col_reg}<19'b1100011100110100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100110100110) && ({row_reg, col_reg}<19'b1100011100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100110101000) && ({row_reg, col_reg}<19'b1100011100110110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011100110110011) && ({row_reg, col_reg}<19'b1100011100110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011100110110101) && ({row_reg, col_reg}<19'b1100011100111001011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100111001011) && ({row_reg, col_reg}<19'b1100011100111010001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011100111010001) && ({row_reg, col_reg}<19'b1100011100111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011100111110101) && ({row_reg, col_reg}<19'b1100011100111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011100111110111) && ({row_reg, col_reg}<19'b1100011110001101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110001101001) && ({row_reg, col_reg}<19'b1100011110001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110001101011) && ({row_reg, col_reg}<19'b1100011110001101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110001101101) && ({row_reg, col_reg}<19'b1100011110001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110001101111) && ({row_reg, col_reg}<19'b1100011110010001001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110010001001) && ({row_reg, col_reg}<19'b1100011110010001011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011110010001011) && ({row_reg, col_reg}<19'b1100011110010010001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110010010001) && ({row_reg, col_reg}<19'b1100011110010010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110010010011) && ({row_reg, col_reg}<19'b1100011110110000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110110000010) && ({row_reg, col_reg}<19'b1100011110110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110110000100) && ({row_reg, col_reg}<19'b1100011110110001001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110110001001) && ({row_reg, col_reg}<19'b1100011110110001011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011110110001011) && ({row_reg, col_reg}<19'b1100011110110100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110110100110) && ({row_reg, col_reg}<19'b1100011110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100011110110101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110110101001) && ({row_reg, col_reg}<19'b1100011110110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110110101011) && ({row_reg, col_reg}<19'b1100011110110101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110110101101) && ({row_reg, col_reg}<19'b1100011110110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110110101111) && ({row_reg, col_reg}<19'b1100011110110110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100011110110110011) && ({row_reg, col_reg}<19'b1100011110110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100011110110110101) && ({row_reg, col_reg}<19'b1100011110111001001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110111001001) && ({row_reg, col_reg}<19'b1100011110111001011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100011110111001011) && ({row_reg, col_reg}<19'b1100011110111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100011110111110101) && ({row_reg, col_reg}<19'b1100011110111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100011110111110111) && ({row_reg, col_reg}<19'b1100100000001101001)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000001101001) && ({row_reg, col_reg}<19'b1100100000001101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000001101011) && ({row_reg, col_reg}<19'b1100100000001101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000001101101) && ({row_reg, col_reg}<19'b1100100000001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000001101111) && ({row_reg, col_reg}<19'b1100100000010001001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000010001001) && ({row_reg, col_reg}<19'b1100100000010001011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100000010001011) && ({row_reg, col_reg}<19'b1100100000010010001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000010010001) && ({row_reg, col_reg}<19'b1100100000010010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000010010011) && ({row_reg, col_reg}<19'b1100100000110000010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000110000010) && ({row_reg, col_reg}<19'b1100100000110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000110000100) && ({row_reg, col_reg}<19'b1100100000110001001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000110001001) && ({row_reg, col_reg}<19'b1100100000110001011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100000110001011) && ({row_reg, col_reg}<19'b1100100000110100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000110100110) && ({row_reg, col_reg}<19'b1100100000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==19'b1100100000110101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000110101001) && ({row_reg, col_reg}<19'b1100100000110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000110101011) && ({row_reg, col_reg}<19'b1100100000110101101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000110101101) && ({row_reg, col_reg}<19'b1100100000110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000110101111) && ({row_reg, col_reg}<19'b1100100000110110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100000110110011) && ({row_reg, col_reg}<19'b1100100000110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100000110110101) && ({row_reg, col_reg}<19'b1100100000111001001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000111001001) && ({row_reg, col_reg}<19'b1100100000111001011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100000111001011) && ({row_reg, col_reg}<19'b1100100000111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100000111110101) && ({row_reg, col_reg}<19'b1100100000111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100000111110111) && ({row_reg, col_reg}<19'b1100100010001101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100100010001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010001101001) && ({row_reg, col_reg}<19'b1100100010001101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010001101011) && ({row_reg, col_reg}<19'b1100100010001101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010001101101) && ({row_reg, col_reg}<19'b1100100010010010011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010010010011) && ({row_reg, col_reg}<19'b1100100010010011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010010011000) && ({row_reg, col_reg}<19'b1100100010101111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100010101111100) && ({row_reg, col_reg}<19'b1100100010110000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010110000010) && ({row_reg, col_reg}<19'b1100100010110101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100100010110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010110101001) && ({row_reg, col_reg}<19'b1100100010110101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010110101011) && ({row_reg, col_reg}<19'b1100100010110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010110101101) && ({row_reg, col_reg}<19'b1100100010110101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010110101111) && ({row_reg, col_reg}<19'b1100100010110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100010110110011) && ({row_reg, col_reg}<19'b1100100010111101101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010111101101) && ({row_reg, col_reg}<19'b1100100010111101111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100010111101111) && ({row_reg, col_reg}<19'b1100100010111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100010111110101) && ({row_reg, col_reg}<19'b1100100010111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100010111110111) && ({row_reg, col_reg}<19'b1100100100001101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100100100001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100001101001) && ({row_reg, col_reg}<19'b1100100100001101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100001101011) && ({row_reg, col_reg}<19'b1100100100001101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100001101101) && ({row_reg, col_reg}<19'b1100100100010010011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100010010011) && ({row_reg, col_reg}<19'b1100100100010011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100010011000) && ({row_reg, col_reg}<19'b1100100100101111100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100100101111100) && ({row_reg, col_reg}<19'b1100100100110000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100110000010) && ({row_reg, col_reg}<19'b1100100100110101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100100100110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100110101001) && ({row_reg, col_reg}<19'b1100100100110101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100110101011) && ({row_reg, col_reg}<19'b1100100100110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100110101101) && ({row_reg, col_reg}<19'b1100100100110101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100110101111) && ({row_reg, col_reg}<19'b1100100100110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100100110110011) && ({row_reg, col_reg}<19'b1100100100111101101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100111101101) && ({row_reg, col_reg}<19'b1100100100111101111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100100111101111) && ({row_reg, col_reg}<19'b1100100100111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100100111110101) && ({row_reg, col_reg}<19'b1100100100111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100100111110111) && ({row_reg, col_reg}<19'b1100100110001100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100110001100010) && ({row_reg, col_reg}<19'b1100100110001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110001100100) && ({row_reg, col_reg}<19'b1100100110001101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100100110001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110001101001) && ({row_reg, col_reg}<19'b1100100110010011000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110010011000) && ({row_reg, col_reg}<19'b1100100110010011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110010011010) && ({row_reg, col_reg}<19'b1100100110101111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100100110101111010) && ({row_reg, col_reg}<19'b1100100110101111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110101111100) && ({row_reg, col_reg}<19'b1100100110110101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110110101011) && ({row_reg, col_reg}<19'b1100100110110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110110101101) && ({row_reg, col_reg}<19'b1100100110110110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110110110001) && ({row_reg, col_reg}<19'b1100100110110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100100110110110011) && ({row_reg, col_reg}<19'b1100100110111101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110111101111) && ({row_reg, col_reg}<19'b1100100110111110001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100100110111110001) && ({row_reg, col_reg}<19'b1100100110111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100100110111110101) && ({row_reg, col_reg}<19'b1100100110111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100100110111110111) && ({row_reg, col_reg}<19'b1100101000001100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101000001100010) && ({row_reg, col_reg}<19'b1100101000001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000001100100) && ({row_reg, col_reg}<19'b1100101000001101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100101000001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000001101001) && ({row_reg, col_reg}<19'b1100101000010011000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000010011000) && ({row_reg, col_reg}<19'b1100101000010011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000010011010) && ({row_reg, col_reg}<19'b1100101000101111010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101000101111010) && ({row_reg, col_reg}<19'b1100101000101111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000101111100) && ({row_reg, col_reg}<19'b1100101000110101011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000110101011) && ({row_reg, col_reg}<19'b1100101000110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000110101101) && ({row_reg, col_reg}<19'b1100101000110110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000110110001) && ({row_reg, col_reg}<19'b1100101000110110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101000110110011) && ({row_reg, col_reg}<19'b1100101000111101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000111101111) && ({row_reg, col_reg}<19'b1100101000111110001)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101000111110001) && ({row_reg, col_reg}<19'b1100101000111110101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101000111110101) && ({row_reg, col_reg}<19'b1100101000111110111)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101000111110111) && ({row_reg, col_reg}<19'b1100101010001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101010001100000) && ({row_reg, col_reg}<19'b1100101010001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010001100010) && ({row_reg, col_reg}<19'b1100101010001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010001100100) && ({row_reg, col_reg}<19'b1100101010001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010001100110) && ({row_reg, col_reg}<19'b1100101010001101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100101010001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010001101001) && ({row_reg, col_reg}<19'b1100101010010011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010010011010) && ({row_reg, col_reg}<19'b1100101010010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010010011100) && ({row_reg, col_reg}<19'b1100101010101111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101010101111000) && ({row_reg, col_reg}<19'b1100101010101111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010101111010) && ({row_reg, col_reg}<19'b1100101010110101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010110101000) && ({row_reg, col_reg}<19'b1100101010110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101010110101011) && ({row_reg, col_reg}<19'b1100101010110111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010110111100) && ({row_reg, col_reg}<19'b1100101010111000000)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101010111000000) && ({row_reg, col_reg}<19'b1100101010111011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010111011100) && ({row_reg, col_reg}<19'b1100101010111100000)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101010111100000) && ({row_reg, col_reg}<19'b1100101010111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101010111110011) && ({row_reg, col_reg}<19'b1100101010111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101010111110101) && ({row_reg, col_reg}<19'b1100101100001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101100001100000) && ({row_reg, col_reg}<19'b1100101100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100001100010) && ({row_reg, col_reg}<19'b1100101100001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100001100100) && ({row_reg, col_reg}<19'b1100101100001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100001100110) && ({row_reg, col_reg}<19'b1100101100001101000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}==19'b1100101100001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100001101001) && ({row_reg, col_reg}<19'b1100101100010011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100010011010) && ({row_reg, col_reg}<19'b1100101100010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100010011100) && ({row_reg, col_reg}<19'b1100101100101111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101100101111000) && ({row_reg, col_reg}<19'b1100101100101111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100101111010) && ({row_reg, col_reg}<19'b1100101100110101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100110101000) && ({row_reg, col_reg}<19'b1100101100110101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101100110101011) && ({row_reg, col_reg}<19'b1100101100110111100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100110111100) && ({row_reg, col_reg}<19'b1100101100111000000)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101100111000000) && ({row_reg, col_reg}<19'b1100101100111011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100111011100) && ({row_reg, col_reg}<19'b1100101100111100000)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101100111100000) && ({row_reg, col_reg}<19'b1100101100111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101100111110011) && ({row_reg, col_reg}<19'b1100101100111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101100111110101) && ({row_reg, col_reg}<19'b1100101110001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101110001100000) && ({row_reg, col_reg}<19'b1100101110001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110001100010) && ({row_reg, col_reg}<19'b1100101110001100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110001100110) && ({row_reg, col_reg}<19'b1100101110001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110001101000) && ({row_reg, col_reg}<19'b1100101110010011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110010011010) && ({row_reg, col_reg}<19'b1100101110010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110010011100) && ({row_reg, col_reg}<19'b1100101110101111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100101110101111000) && ({row_reg, col_reg}<19'b1100101110101111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110101111010) && ({row_reg, col_reg}<19'b1100101110110100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110110100110) && ({row_reg, col_reg}<19'b1100101110110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100101110110101000) && ({row_reg, col_reg}<19'b1100101110110111000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110110111000) && ({row_reg, col_reg}<19'b1100101110110111100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101110110111100) && ({row_reg, col_reg}<19'b1100101110111100000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110111100000) && ({row_reg, col_reg}<19'b1100101110111100010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100101110111100010) && ({row_reg, col_reg}<19'b1100101110111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100101110111110011) && ({row_reg, col_reg}<19'b1100101110111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100101110111110101) && ({row_reg, col_reg}<19'b1100110000001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110000001100000) && ({row_reg, col_reg}<19'b1100110000001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000001100010) && ({row_reg, col_reg}<19'b1100110000001100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000001100110) && ({row_reg, col_reg}<19'b1100110000001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000001101000) && ({row_reg, col_reg}<19'b1100110000010011010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000010011010) && ({row_reg, col_reg}<19'b1100110000010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000010011100) && ({row_reg, col_reg}<19'b1100110000101111000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110000101111000) && ({row_reg, col_reg}<19'b1100110000101111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000101111010) && ({row_reg, col_reg}<19'b1100110000110100110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000110100110) && ({row_reg, col_reg}<19'b1100110000110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110000110101000) && ({row_reg, col_reg}<19'b1100110000110111000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000110111000) && ({row_reg, col_reg}<19'b1100110000110111100)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110000110111100) && ({row_reg, col_reg}<19'b1100110000111100000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000111100000) && ({row_reg, col_reg}<19'b1100110000111100010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110000111100010) && ({row_reg, col_reg}<19'b1100110000111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110000111110011) && ({row_reg, col_reg}<19'b1100110000111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110000111110101) && ({row_reg, col_reg}<19'b1100110010001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110010001100000) && ({row_reg, col_reg}<19'b1100110010001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010001100010) && ({row_reg, col_reg}<19'b1100110010010011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010010011100) && ({row_reg, col_reg}<19'b1100110010010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010010100000) && ({row_reg, col_reg}<19'b1100110010101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110010101110101) && ({row_reg, col_reg}<19'b1100110010101111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010101111000) && ({row_reg, col_reg}<19'b1100110010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010110100100) && ({row_reg, col_reg}<19'b1100110010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110010110100110) && ({row_reg, col_reg}<19'b1100110010110111000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010110111000) && ({row_reg, col_reg}<19'b1100110010110111010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110010110111010) && ({row_reg, col_reg}<19'b1100110010111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110010111110011) && ({row_reg, col_reg}<19'b1100110010111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110010111110101) && ({row_reg, col_reg}<19'b1100110100001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110100001100000) && ({row_reg, col_reg}<19'b1100110100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100001100010) && ({row_reg, col_reg}<19'b1100110100010011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100010011100) && ({row_reg, col_reg}<19'b1100110100010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100010100000) && ({row_reg, col_reg}<19'b1100110100101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110100101110101) && ({row_reg, col_reg}<19'b1100110100101111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100101111000) && ({row_reg, col_reg}<19'b1100110100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100110100100) && ({row_reg, col_reg}<19'b1100110100110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110100110100110) && ({row_reg, col_reg}<19'b1100110100110111000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100110111000) && ({row_reg, col_reg}<19'b1100110100110111010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110100110111010) && ({row_reg, col_reg}<19'b1100110100111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110100111110011) && ({row_reg, col_reg}<19'b1100110100111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110100111110101) && ({row_reg, col_reg}<19'b1100110110001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110110001100000) && ({row_reg, col_reg}<19'b1100110110001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110001100010) && ({row_reg, col_reg}<19'b1100110110010011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110010011100) && ({row_reg, col_reg}<19'b1100110110010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110010100000) && ({row_reg, col_reg}<19'b1100110110101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100110110101110101) && ({row_reg, col_reg}<19'b1100110110101111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110101111000) && ({row_reg, col_reg}<19'b1100110110110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110110100100) && ({row_reg, col_reg}<19'b1100110110110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100110110110100110) && ({row_reg, col_reg}<19'b1100110110110111000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110110111000) && ({row_reg, col_reg}<19'b1100110110110111010)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100110110110111010) && ({row_reg, col_reg}<19'b1100110110111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100110110111110011) && ({row_reg, col_reg}<19'b1100110110111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100110110111110101) && ({row_reg, col_reg}<19'b1100111000001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111000001100000) && ({row_reg, col_reg}<19'b1100111000001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000001100010) && ({row_reg, col_reg}<19'b1100111000010100000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000010100000) && ({row_reg, col_reg}<19'b1100111000010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000010100010) && ({row_reg, col_reg}<19'b1100111000101110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111000101110011) && ({row_reg, col_reg}<19'b1100111000101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000101110101) && ({row_reg, col_reg}<19'b1100111000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000110100100) && ({row_reg, col_reg}<19'b1100111000110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111000110100110) && ({row_reg, col_reg}<19'b1100111000110101001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000110101001) && ({row_reg, col_reg}<19'b1100111000110101011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100111000110101011) && ({row_reg, col_reg}<19'b1100111000110110111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100111000110110111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100111000110111000) && ({row_reg, col_reg}<19'b1100111000111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111000111110011) && ({row_reg, col_reg}<19'b1100111000111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100111000111110101) && ({row_reg, col_reg}<19'b1100111010001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111010001100000) && ({row_reg, col_reg}<19'b1100111010001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010001100010) && ({row_reg, col_reg}<19'b1100111010010100000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010010100000) && ({row_reg, col_reg}<19'b1100111010010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010010100010) && ({row_reg, col_reg}<19'b1100111010101110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111010101110011) && ({row_reg, col_reg}<19'b1100111010101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010101110101) && ({row_reg, col_reg}<19'b1100111010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010110100100) && ({row_reg, col_reg}<19'b1100111010110100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111010110100110) && ({row_reg, col_reg}<19'b1100111010110101001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010110101001) && ({row_reg, col_reg}<19'b1100111010110101011)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100111010110101011) && ({row_reg, col_reg}<19'b1100111010110110111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100111010110110111)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100111010110111000) && ({row_reg, col_reg}<19'b1100111010111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111010111110011) && ({row_reg, col_reg}<19'b1100111010111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100111010111110101) && ({row_reg, col_reg}<19'b1100111100001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111100001100000) && ({row_reg, col_reg}<19'b1100111100001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111100001100010) && ({row_reg, col_reg}<19'b1100111100010100000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111100010100000) && ({row_reg, col_reg}<19'b1100111100010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111100010100010) && ({row_reg, col_reg}<19'b1100111100101110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111100101110011) && ({row_reg, col_reg}<19'b1100111100101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111100101110101) && ({row_reg, col_reg}<19'b1100111100110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111100110100010) && ({row_reg, col_reg}<19'b1100111100110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111100110100100) && ({row_reg, col_reg}<19'b1100111100110101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100111100110101000)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100111100110101001) && ({row_reg, col_reg}<19'b1100111100111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111100111110011) && ({row_reg, col_reg}<19'b1100111100111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100111100111110101) && ({row_reg, col_reg}<19'b1100111110001100000)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111110001100000) && ({row_reg, col_reg}<19'b1100111110001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111110001100010) && ({row_reg, col_reg}<19'b1100111110010100000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111110010100000) && ({row_reg, col_reg}<19'b1100111110010100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111110010100010) && ({row_reg, col_reg}<19'b1100111110101110011)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1100111110101110011) && ({row_reg, col_reg}<19'b1100111110101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111110101110101) && ({row_reg, col_reg}<19'b1100111110110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111110110100010) && ({row_reg, col_reg}<19'b1100111110110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1100111110110100100) && ({row_reg, col_reg}<19'b1100111110110101000)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==19'b1100111110110101000)) color_data = 12'b010010000010;
		if(({row_reg, col_reg}>=19'b1100111110110101001) && ({row_reg, col_reg}<19'b1100111110111110011)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1100111110111110011) && ({row_reg, col_reg}<19'b1100111110111110101)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1100111110111110101) && ({row_reg, col_reg}<19'b1101000000001100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000000001100010) && ({row_reg, col_reg}<19'b1101000000001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000000001100100) && ({row_reg, col_reg}<19'b1101000000010011110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000000010011110) && ({row_reg, col_reg}<19'b1101000000010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000000010100000) && ({row_reg, col_reg}<19'b1101000000101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000000101110101) && ({row_reg, col_reg}<19'b1101000000101110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000000101110111) && ({row_reg, col_reg}<19'b1101000000110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000000110100010) && ({row_reg, col_reg}<19'b1101000000110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000000110100100) && ({row_reg, col_reg}<19'b1101000000111110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000000111110001) && ({row_reg, col_reg}<19'b1101000000111110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1101000000111110011) && ({row_reg, col_reg}<19'b1101000010001100010)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000010001100010) && ({row_reg, col_reg}<19'b1101000010001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000010001100100) && ({row_reg, col_reg}<19'b1101000010010011110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000010010011110) && ({row_reg, col_reg}<19'b1101000010010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000010010100000) && ({row_reg, col_reg}<19'b1101000010101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000010101110101) && ({row_reg, col_reg}<19'b1101000010101110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000010101110111) && ({row_reg, col_reg}<19'b1101000010110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000010110100010) && ({row_reg, col_reg}<19'b1101000010110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000010110100100) && ({row_reg, col_reg}<19'b1101000010111110001)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000010111110001) && ({row_reg, col_reg}<19'b1101000010111110011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1101000010111110011) && ({row_reg, col_reg}<19'b1101000100001100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000100001100100) && ({row_reg, col_reg}<19'b1101000100001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000100001100110) && ({row_reg, col_reg}<19'b1101000100010011110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000100010011110) && ({row_reg, col_reg}<19'b1101000100010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000100010100000) && ({row_reg, col_reg}<19'b1101000100101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000100101110101) && ({row_reg, col_reg}<19'b1101000100101110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000100101110111) && ({row_reg, col_reg}<19'b1101000100110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000100110100010) && ({row_reg, col_reg}<19'b1101000100110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000100110100100) && ({row_reg, col_reg}<19'b1101000100111101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000100111101111) && ({row_reg, col_reg}<19'b1101000100111110001)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=19'b1101000100111110001) && ({row_reg, col_reg}<19'b1101000110001100100)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000110001100100) && ({row_reg, col_reg}<19'b1101000110001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000110001100110) && ({row_reg, col_reg}<19'b1101000110010011110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000110010011110) && ({row_reg, col_reg}<19'b1101000110010100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000110010100000) && ({row_reg, col_reg}<19'b1101000110101110101)) color_data = 12'b011110001110;
		if(({row_reg, col_reg}>=19'b1101000110101110101) && ({row_reg, col_reg}<19'b1101000110101110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000110101110111) && ({row_reg, col_reg}<19'b1101000110110100010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000110110100010) && ({row_reg, col_reg}<19'b1101000110110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=19'b1101000110110100100) && ({row_reg, col_reg}<19'b1101000110111101111)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=19'b1101000110111101111) && ({row_reg, col_reg}<19'b1101000110111110001)) color_data = 12'b000000000000;





























































		if(({row_reg, col_reg}>=19'b1101000110111110001) && ({row_reg, col_reg}<=19'b1110111111001111111)) color_data = 12'b011110001110;
	end
endmodule