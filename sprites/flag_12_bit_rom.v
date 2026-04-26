module flag_rom
	(
		input wire clk,
		input wire [7:0] row,
		input wire [4:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [7:0] row_reg;
	reg [4:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin




















		if(({row_reg, col_reg}>=13'b0000000000000) && ({row_reg, col_reg}<13'b0001010001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001010001110) && ({row_reg, col_reg}<13'b0001010010100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001010010100) && ({row_reg, col_reg}<13'b0001010101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0001010101101)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0001010101110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=13'b0001010101111) && ({row_reg, col_reg}<13'b0001010110101)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001010110101) && ({row_reg, col_reg}<13'b0001011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0001011001100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0001011001101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=13'b0001011001110) && ({row_reg, col_reg}<13'b0001011010110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001011010110) && ({row_reg, col_reg}<13'b0001011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0001011101100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0001011101101)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=13'b0001011101110) && ({row_reg, col_reg}<13'b0001011110110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001011110110) && ({row_reg, col_reg}<13'b0001100001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001100001100) && ({row_reg, col_reg}<13'b0001100010110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001100010110) && ({row_reg, col_reg}<13'b0001100101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001100101100) && ({row_reg, col_reg}<13'b0001100110110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001100110110) && ({row_reg, col_reg}<13'b0001101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001101001100) && ({row_reg, col_reg}<13'b0001101010110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001101010110) && ({row_reg, col_reg}<13'b0001101101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001101101101) && ({row_reg, col_reg}<13'b0001101110101)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001101110101) && ({row_reg, col_reg}<13'b0001110001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001110001110) && ({row_reg, col_reg}<13'b0001110010100)) color_data = 12'b010010100001;


		if(({row_reg, col_reg}>=13'b0001110010100) && ({row_reg, col_reg}<13'b0001111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0001111001111) && ({row_reg, col_reg}<13'b0001111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0001111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001111010011) && ({row_reg, col_reg}<13'b0001111100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0001111100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0001111100001) && ({row_reg, col_reg}<13'b0001111101111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0001111101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0001111110000) && ({row_reg, col_reg}<13'b0001111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0001111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0001111110011) && ({row_reg, col_reg}<13'b0010000000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010000000001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010000000010) && ({row_reg, col_reg}<13'b0010000001001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=13'b0010000001001) && ({row_reg, col_reg}<13'b0010000001110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010000001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010000001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010000010000) && ({row_reg, col_reg}<13'b0010000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010000010011) && ({row_reg, col_reg}<13'b0010000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010000100010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010000100011) && ({row_reg, col_reg}<13'b0010000101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=13'b0010000101000) && ({row_reg, col_reg}<13'b0010000101010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010000101010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==13'b0010000101011)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010000101100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010000101101) && ({row_reg, col_reg}<13'b0010000101111)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010000101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010000110000) && ({row_reg, col_reg}<13'b0010000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010000110011) && ({row_reg, col_reg}<13'b0010001000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010001000011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010001000100) && ({row_reg, col_reg}<13'b0010001001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010001001000)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=13'b0010001001001) && ({row_reg, col_reg}<13'b0010001001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==13'b0010001001011)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=13'b0010001001100) && ({row_reg, col_reg}<13'b0010001001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==13'b0010001001110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010001001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010001010000) && ({row_reg, col_reg}<13'b0010001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010001010011) && ({row_reg, col_reg}<13'b0010001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010001100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010001100101) && ({row_reg, col_reg}<13'b0010001101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010001101000)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010001101001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010001101010) && ({row_reg, col_reg}<13'b0010001101101)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010001101101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==13'b0010001101110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010001101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010001110000) && ({row_reg, col_reg}<13'b0010001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010001110011) && ({row_reg, col_reg}<13'b0010010000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010010000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010010000110) && ({row_reg, col_reg}<13'b0010010001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=13'b0010010001000) && ({row_reg, col_reg}<13'b0010010001011)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010010001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010010001100) && ({row_reg, col_reg}<13'b0010010001111)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010010001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010010010000) && ({row_reg, col_reg}<13'b0010010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010010010011) && ({row_reg, col_reg}<13'b0010010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010010100110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==13'b0010010100111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=13'b0010010101000) && ({row_reg, col_reg}<13'b0010010101111)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}==13'b0010010101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010010110000) && ({row_reg, col_reg}<13'b0010010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010010110011) && ({row_reg, col_reg}<13'b0010011000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010011000111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010011001000) && ({row_reg, col_reg}<13'b0010011001010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=13'b0010011001010) && ({row_reg, col_reg}<13'b0010011001101)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=13'b0010011001101) && ({row_reg, col_reg}<13'b0010011001111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010011001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010011010000) && ({row_reg, col_reg}<13'b0010011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010011010011) && ({row_reg, col_reg}<13'b0010011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010011101000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010011101001) && ({row_reg, col_reg}<13'b0010011101111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010011101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010011110000) && ({row_reg, col_reg}<13'b0010011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010011110011) && ({row_reg, col_reg}<13'b0010100001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010100001001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010100001010) && ({row_reg, col_reg}<13'b0010100001111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010100001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010100010000) && ({row_reg, col_reg}<13'b0010100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010100010011) && ({row_reg, col_reg}<13'b0010100101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010100101010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010100101011) && ({row_reg, col_reg}<13'b0010100101111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010100101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010100110000) && ({row_reg, col_reg}<13'b0010100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010100110011) && ({row_reg, col_reg}<13'b0010101001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010101001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010101001100) && ({row_reg, col_reg}<13'b0010101001111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010101001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010101010000) && ({row_reg, col_reg}<13'b0010101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010101010011) && ({row_reg, col_reg}<13'b0010101101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010101101100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010101101101) && ({row_reg, col_reg}<13'b0010101101111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010101101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010101110000) && ({row_reg, col_reg}<13'b0010101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010101110011) && ({row_reg, col_reg}<13'b0010110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010110001101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==13'b0010110001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==13'b0010110001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010110010000) && ({row_reg, col_reg}<13'b0010110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010110010011) && ({row_reg, col_reg}<13'b0010110101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0010110101110) && ({row_reg, col_reg}<13'b0010110110000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010110110000) && ({row_reg, col_reg}<13'b0010110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010110110011) && ({row_reg, col_reg}<13'b0010111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==13'b0010111001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=13'b0010111010000) && ({row_reg, col_reg}<13'b0010111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010111010011) && ({row_reg, col_reg}<13'b0010111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0010111101111) && ({row_reg, col_reg}<13'b0010111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0010111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0010111110011) && ({row_reg, col_reg}<13'b0011000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011000001111) && ({row_reg, col_reg}<13'b0011000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011000010011) && ({row_reg, col_reg}<13'b0011000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011000101111) && ({row_reg, col_reg}<13'b0011000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011000110011) && ({row_reg, col_reg}<13'b0011001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011001001111) && ({row_reg, col_reg}<13'b0011001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011001010011) && ({row_reg, col_reg}<13'b0011001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011001101111) && ({row_reg, col_reg}<13'b0011001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011001110011) && ({row_reg, col_reg}<13'b0011010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011010001111) && ({row_reg, col_reg}<13'b0011010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011010010011) && ({row_reg, col_reg}<13'b0011010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011010101111) && ({row_reg, col_reg}<13'b0011010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011010110011) && ({row_reg, col_reg}<13'b0011011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011011001111) && ({row_reg, col_reg}<13'b0011011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011011010011) && ({row_reg, col_reg}<13'b0011011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011011101111) && ({row_reg, col_reg}<13'b0011011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011011110011) && ({row_reg, col_reg}<13'b0011100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011100001111) && ({row_reg, col_reg}<13'b0011100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011100010011) && ({row_reg, col_reg}<13'b0011100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011100101111) && ({row_reg, col_reg}<13'b0011100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011100110011) && ({row_reg, col_reg}<13'b0011101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011101001111) && ({row_reg, col_reg}<13'b0011101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011101010011) && ({row_reg, col_reg}<13'b0011101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011101101111) && ({row_reg, col_reg}<13'b0011101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011101110011) && ({row_reg, col_reg}<13'b0011110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011110001111) && ({row_reg, col_reg}<13'b0011110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011110010011) && ({row_reg, col_reg}<13'b0011110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011110101111) && ({row_reg, col_reg}<13'b0011110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011110110011) && ({row_reg, col_reg}<13'b0011111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011111001111) && ({row_reg, col_reg}<13'b0011111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011111010011) && ({row_reg, col_reg}<13'b0011111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0011111101111) && ({row_reg, col_reg}<13'b0011111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0011111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0011111110011) && ({row_reg, col_reg}<13'b0100000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100000001111) && ({row_reg, col_reg}<13'b0100000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100000010011) && ({row_reg, col_reg}<13'b0100000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100000101111) && ({row_reg, col_reg}<13'b0100000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100000110011) && ({row_reg, col_reg}<13'b0100001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100001001111) && ({row_reg, col_reg}<13'b0100001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100001010011) && ({row_reg, col_reg}<13'b0100001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100001101111) && ({row_reg, col_reg}<13'b0100001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100001110011) && ({row_reg, col_reg}<13'b0100010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100010001111) && ({row_reg, col_reg}<13'b0100010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100010010011) && ({row_reg, col_reg}<13'b0100010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100010101111) && ({row_reg, col_reg}<13'b0100010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100010110011) && ({row_reg, col_reg}<13'b0100011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100011001111) && ({row_reg, col_reg}<13'b0100011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100011010011) && ({row_reg, col_reg}<13'b0100011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100011101111) && ({row_reg, col_reg}<13'b0100011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100011110011) && ({row_reg, col_reg}<13'b0100100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100100001111) && ({row_reg, col_reg}<13'b0100100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100100010011) && ({row_reg, col_reg}<13'b0100100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100100101111) && ({row_reg, col_reg}<13'b0100100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100100110011) && ({row_reg, col_reg}<13'b0100101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100101001111) && ({row_reg, col_reg}<13'b0100101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100101010011) && ({row_reg, col_reg}<13'b0100101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100101101111) && ({row_reg, col_reg}<13'b0100101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100101110011) && ({row_reg, col_reg}<13'b0100110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100110001111) && ({row_reg, col_reg}<13'b0100110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100110010011) && ({row_reg, col_reg}<13'b0100110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100110101111) && ({row_reg, col_reg}<13'b0100110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100110110011) && ({row_reg, col_reg}<13'b0100111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100111001111) && ({row_reg, col_reg}<13'b0100111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100111010011) && ({row_reg, col_reg}<13'b0100111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0100111101111) && ({row_reg, col_reg}<13'b0100111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0100111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0100111110011) && ({row_reg, col_reg}<13'b0101000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101000001111) && ({row_reg, col_reg}<13'b0101000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101000010011) && ({row_reg, col_reg}<13'b0101000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101000101111) && ({row_reg, col_reg}<13'b0101000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101000110011) && ({row_reg, col_reg}<13'b0101001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101001001111) && ({row_reg, col_reg}<13'b0101001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101001010011) && ({row_reg, col_reg}<13'b0101001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101001101111) && ({row_reg, col_reg}<13'b0101001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101001110011) && ({row_reg, col_reg}<13'b0101010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101010001111) && ({row_reg, col_reg}<13'b0101010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101010010011) && ({row_reg, col_reg}<13'b0101010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101010101111) && ({row_reg, col_reg}<13'b0101010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101010110011) && ({row_reg, col_reg}<13'b0101011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101011001111) && ({row_reg, col_reg}<13'b0101011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101011010011) && ({row_reg, col_reg}<13'b0101011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101011101111) && ({row_reg, col_reg}<13'b0101011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101011110011) && ({row_reg, col_reg}<13'b0101100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101100001111) && ({row_reg, col_reg}<13'b0101100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101100010011) && ({row_reg, col_reg}<13'b0101100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101100101111) && ({row_reg, col_reg}<13'b0101100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101100110011) && ({row_reg, col_reg}<13'b0101101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101101001111) && ({row_reg, col_reg}<13'b0101101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101101010011) && ({row_reg, col_reg}<13'b0101101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101101101111) && ({row_reg, col_reg}<13'b0101101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101101110011) && ({row_reg, col_reg}<13'b0101110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101110001111) && ({row_reg, col_reg}<13'b0101110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101110010011) && ({row_reg, col_reg}<13'b0101110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101110101111) && ({row_reg, col_reg}<13'b0101110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101110110011) && ({row_reg, col_reg}<13'b0101111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101111001111) && ({row_reg, col_reg}<13'b0101111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101111010011) && ({row_reg, col_reg}<13'b0101111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0101111101111) && ({row_reg, col_reg}<13'b0101111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0101111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0101111110011) && ({row_reg, col_reg}<13'b0110000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110000001111) && ({row_reg, col_reg}<13'b0110000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110000010011) && ({row_reg, col_reg}<13'b0110000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110000101111) && ({row_reg, col_reg}<13'b0110000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110000110011) && ({row_reg, col_reg}<13'b0110001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110001001111) && ({row_reg, col_reg}<13'b0110001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110001010011) && ({row_reg, col_reg}<13'b0110001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110001101111) && ({row_reg, col_reg}<13'b0110001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110001110011) && ({row_reg, col_reg}<13'b0110010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110010001111) && ({row_reg, col_reg}<13'b0110010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110010010011) && ({row_reg, col_reg}<13'b0110010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110010101111) && ({row_reg, col_reg}<13'b0110010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110010110011) && ({row_reg, col_reg}<13'b0110011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110011001111) && ({row_reg, col_reg}<13'b0110011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110011010011) && ({row_reg, col_reg}<13'b0110011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110011101111) && ({row_reg, col_reg}<13'b0110011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110011110011) && ({row_reg, col_reg}<13'b0110100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110100001111) && ({row_reg, col_reg}<13'b0110100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110100010011) && ({row_reg, col_reg}<13'b0110100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110100101111) && ({row_reg, col_reg}<13'b0110100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110100110011) && ({row_reg, col_reg}<13'b0110101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110101001111) && ({row_reg, col_reg}<13'b0110101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110101010011) && ({row_reg, col_reg}<13'b0110101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110101101111) && ({row_reg, col_reg}<13'b0110101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110101110011) && ({row_reg, col_reg}<13'b0110110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110110001111) && ({row_reg, col_reg}<13'b0110110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110110010011) && ({row_reg, col_reg}<13'b0110110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110110101111) && ({row_reg, col_reg}<13'b0110110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110110110011) && ({row_reg, col_reg}<13'b0110111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110111001111) && ({row_reg, col_reg}<13'b0110111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110111010011) && ({row_reg, col_reg}<13'b0110111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0110111101111) && ({row_reg, col_reg}<13'b0110111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0110111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0110111110011) && ({row_reg, col_reg}<13'b0111000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111000001111) && ({row_reg, col_reg}<13'b0111000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111000010011) && ({row_reg, col_reg}<13'b0111000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111000101111) && ({row_reg, col_reg}<13'b0111000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111000110011) && ({row_reg, col_reg}<13'b0111001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111001001111) && ({row_reg, col_reg}<13'b0111001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111001010011) && ({row_reg, col_reg}<13'b0111001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111001101111) && ({row_reg, col_reg}<13'b0111001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111001110011) && ({row_reg, col_reg}<13'b0111010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111010001111) && ({row_reg, col_reg}<13'b0111010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111010010011) && ({row_reg, col_reg}<13'b0111010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111010101111) && ({row_reg, col_reg}<13'b0111010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111010110011) && ({row_reg, col_reg}<13'b0111011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111011001111) && ({row_reg, col_reg}<13'b0111011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111011010011) && ({row_reg, col_reg}<13'b0111011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111011101111) && ({row_reg, col_reg}<13'b0111011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111011110011) && ({row_reg, col_reg}<13'b0111100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111100001111) && ({row_reg, col_reg}<13'b0111100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111100010011) && ({row_reg, col_reg}<13'b0111100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111100101111) && ({row_reg, col_reg}<13'b0111100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111100110011) && ({row_reg, col_reg}<13'b0111101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111101001111) && ({row_reg, col_reg}<13'b0111101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111101010011) && ({row_reg, col_reg}<13'b0111101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111101101111) && ({row_reg, col_reg}<13'b0111101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111101110011) && ({row_reg, col_reg}<13'b0111110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111110001111) && ({row_reg, col_reg}<13'b0111110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111110010011) && ({row_reg, col_reg}<13'b0111110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111110101111) && ({row_reg, col_reg}<13'b0111110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111110110011) && ({row_reg, col_reg}<13'b0111111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111111001111) && ({row_reg, col_reg}<13'b0111111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111111010011) && ({row_reg, col_reg}<13'b0111111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b0111111101111) && ({row_reg, col_reg}<13'b0111111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b0111111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b0111111110011) && ({row_reg, col_reg}<13'b1000000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000000001111) && ({row_reg, col_reg}<13'b1000000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000000010011) && ({row_reg, col_reg}<13'b1000000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000000101111) && ({row_reg, col_reg}<13'b1000000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000000110011) && ({row_reg, col_reg}<13'b1000001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000001001111) && ({row_reg, col_reg}<13'b1000001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000001010011) && ({row_reg, col_reg}<13'b1000001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000001101111) && ({row_reg, col_reg}<13'b1000001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000001110011) && ({row_reg, col_reg}<13'b1000010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000010001111) && ({row_reg, col_reg}<13'b1000010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000010010011) && ({row_reg, col_reg}<13'b1000010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000010101111) && ({row_reg, col_reg}<13'b1000010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000010110011) && ({row_reg, col_reg}<13'b1000011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000011001111) && ({row_reg, col_reg}<13'b1000011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000011010011) && ({row_reg, col_reg}<13'b1000011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000011101111) && ({row_reg, col_reg}<13'b1000011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000011110011) && ({row_reg, col_reg}<13'b1000100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000100001111) && ({row_reg, col_reg}<13'b1000100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000100010011) && ({row_reg, col_reg}<13'b1000100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000100101111) && ({row_reg, col_reg}<13'b1000100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000100110011) && ({row_reg, col_reg}<13'b1000101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000101001111) && ({row_reg, col_reg}<13'b1000101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000101010011) && ({row_reg, col_reg}<13'b1000101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000101101111) && ({row_reg, col_reg}<13'b1000101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000101110011) && ({row_reg, col_reg}<13'b1000110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000110001111) && ({row_reg, col_reg}<13'b1000110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000110010011) && ({row_reg, col_reg}<13'b1000110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000110101111) && ({row_reg, col_reg}<13'b1000110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000110110011) && ({row_reg, col_reg}<13'b1000111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000111001111) && ({row_reg, col_reg}<13'b1000111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000111010011) && ({row_reg, col_reg}<13'b1000111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1000111101111) && ({row_reg, col_reg}<13'b1000111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1000111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1000111110011) && ({row_reg, col_reg}<13'b1001000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001000001111) && ({row_reg, col_reg}<13'b1001000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001000010011) && ({row_reg, col_reg}<13'b1001000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001000101111) && ({row_reg, col_reg}<13'b1001000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001000110011) && ({row_reg, col_reg}<13'b1001001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001001001111) && ({row_reg, col_reg}<13'b1001001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001001010011) && ({row_reg, col_reg}<13'b1001001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001001101111) && ({row_reg, col_reg}<13'b1001001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001001110011) && ({row_reg, col_reg}<13'b1001010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001010001111) && ({row_reg, col_reg}<13'b1001010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001010010011) && ({row_reg, col_reg}<13'b1001010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001010101111) && ({row_reg, col_reg}<13'b1001010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001010110011) && ({row_reg, col_reg}<13'b1001011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001011001111) && ({row_reg, col_reg}<13'b1001011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001011010011) && ({row_reg, col_reg}<13'b1001011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001011101111) && ({row_reg, col_reg}<13'b1001011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001011110011) && ({row_reg, col_reg}<13'b1001100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001100001111) && ({row_reg, col_reg}<13'b1001100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001100010011) && ({row_reg, col_reg}<13'b1001100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001100101111) && ({row_reg, col_reg}<13'b1001100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001100110011) && ({row_reg, col_reg}<13'b1001101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001101001111) && ({row_reg, col_reg}<13'b1001101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001101010011) && ({row_reg, col_reg}<13'b1001101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001101101111) && ({row_reg, col_reg}<13'b1001101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001101110011) && ({row_reg, col_reg}<13'b1001110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001110001111) && ({row_reg, col_reg}<13'b1001110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001110010011) && ({row_reg, col_reg}<13'b1001110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001110101111) && ({row_reg, col_reg}<13'b1001110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001110110011) && ({row_reg, col_reg}<13'b1001111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001111001111) && ({row_reg, col_reg}<13'b1001111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001111010011) && ({row_reg, col_reg}<13'b1001111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1001111101111) && ({row_reg, col_reg}<13'b1001111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1001111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1001111110011) && ({row_reg, col_reg}<13'b1010000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010000001111) && ({row_reg, col_reg}<13'b1010000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010000010011) && ({row_reg, col_reg}<13'b1010000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010000101111) && ({row_reg, col_reg}<13'b1010000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010000110011) && ({row_reg, col_reg}<13'b1010001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010001001111) && ({row_reg, col_reg}<13'b1010001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010001010011) && ({row_reg, col_reg}<13'b1010001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010001101111) && ({row_reg, col_reg}<13'b1010001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010001110011) && ({row_reg, col_reg}<13'b1010010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010010001111) && ({row_reg, col_reg}<13'b1010010010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010010010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010010010011) && ({row_reg, col_reg}<13'b1010010101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010010101111) && ({row_reg, col_reg}<13'b1010010110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010010110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010010110011) && ({row_reg, col_reg}<13'b1010011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010011001111) && ({row_reg, col_reg}<13'b1010011010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010011010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010011010011) && ({row_reg, col_reg}<13'b1010011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010011101111) && ({row_reg, col_reg}<13'b1010011110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010011110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010011110011) && ({row_reg, col_reg}<13'b1010100001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010100001111) && ({row_reg, col_reg}<13'b1010100010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010100010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010100010011) && ({row_reg, col_reg}<13'b1010100101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010100101111) && ({row_reg, col_reg}<13'b1010100110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010100110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010100110011) && ({row_reg, col_reg}<13'b1010101001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010101001111) && ({row_reg, col_reg}<13'b1010101010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010101010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010101010011) && ({row_reg, col_reg}<13'b1010101101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010101101111) && ({row_reg, col_reg}<13'b1010101110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010101110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010101110011) && ({row_reg, col_reg}<13'b1010110001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010110001111) && ({row_reg, col_reg}<13'b1010110010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010110010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010110010011) && ({row_reg, col_reg}<13'b1010110101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010110101111) && ({row_reg, col_reg}<13'b1010110110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010110110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010110110011) && ({row_reg, col_reg}<13'b1010111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010111001111) && ({row_reg, col_reg}<13'b1010111010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010111010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010111010011) && ({row_reg, col_reg}<13'b1010111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1010111101111) && ({row_reg, col_reg}<13'b1010111110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1010111110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1010111110011) && ({row_reg, col_reg}<13'b1011000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1011000001111) && ({row_reg, col_reg}<13'b1011000010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1011000010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1011000010011) && ({row_reg, col_reg}<13'b1011000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1011000101111) && ({row_reg, col_reg}<13'b1011000110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1011000110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1011000110011) && ({row_reg, col_reg}<13'b1011001001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1011001001111) && ({row_reg, col_reg}<13'b1011001010010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1011001010010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1011001010011) && ({row_reg, col_reg}<13'b1011001101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=13'b1011001101111) && ({row_reg, col_reg}<13'b1011001110010)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}==13'b1011001110010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=13'b1011001110011) && ({row_reg, col_reg}<=13'b1011001110111)) color_data = 12'b000000000000;
	end
endmodule