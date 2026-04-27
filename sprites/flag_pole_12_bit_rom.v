module flag_pole_rom
	(
		input wire clk,
		input wire [8:0] row,
		input wire [5:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [8:0] row_reg;
	reg [5:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin








































		if(({row_reg, col_reg}>=15'b000000000000000) && ({row_reg, col_reg}<15'b000101000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101000011100) && ({row_reg, col_reg}<15'b000101000101000)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101000101000) && ({row_reg, col_reg}<15'b000101001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101001011100) && ({row_reg, col_reg}<15'b000101001101000)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101001101000) && ({row_reg, col_reg}<15'b000101010011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101010011010) && ({row_reg, col_reg}<15'b000101010011100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b000101010011100) && ({row_reg, col_reg}<15'b000101010011110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000101010011110) && ({row_reg, col_reg}<15'b000101010101010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101010101010) && ({row_reg, col_reg}<15'b000101011011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101011011010) && ({row_reg, col_reg}<15'b000101011011100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b000101011011100) && ({row_reg, col_reg}<15'b000101011011110)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000101011011110) && ({row_reg, col_reg}<15'b000101011101010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101011101010) && ({row_reg, col_reg}<15'b000101100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101100011000) && ({row_reg, col_reg}<15'b000101100011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b000101100011010) && ({row_reg, col_reg}<15'b000101100011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000101100011100) && ({row_reg, col_reg}<15'b000101100101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101100101100) && ({row_reg, col_reg}<15'b000101101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101101011000) && ({row_reg, col_reg}<15'b000101101011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b000101101011010) && ({row_reg, col_reg}<15'b000101101011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000101101011100) && ({row_reg, col_reg}<15'b000101101101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101101101100) && ({row_reg, col_reg}<15'b000101110011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101110011000) && ({row_reg, col_reg}<15'b000101110011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b000101110011010) && ({row_reg, col_reg}<15'b000101110011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000101110011100) && ({row_reg, col_reg}<15'b000101110101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101110101100) && ({row_reg, col_reg}<15'b000101111011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000101111011000) && ({row_reg, col_reg}<15'b000101111011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b000101111011010) && ({row_reg, col_reg}<15'b000101111011100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000101111011100) && ({row_reg, col_reg}<15'b000101111101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000101111101100) && ({row_reg, col_reg}<15'b000110000011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110000011000) && ({row_reg, col_reg}<15'b000110000101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110000101100) && ({row_reg, col_reg}<15'b000110001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110001011000) && ({row_reg, col_reg}<15'b000110001101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110001101100) && ({row_reg, col_reg}<15'b000110010011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110010011000) && ({row_reg, col_reg}<15'b000110010101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110010101100) && ({row_reg, col_reg}<15'b000110011011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110011011000) && ({row_reg, col_reg}<15'b000110011101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110011101100) && ({row_reg, col_reg}<15'b000110100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110100011000) && ({row_reg, col_reg}<15'b000110100101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110100101100) && ({row_reg, col_reg}<15'b000110101011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110101011000) && ({row_reg, col_reg}<15'b000110101101100)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110101101100) && ({row_reg, col_reg}<15'b000110110011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110110011010) && ({row_reg, col_reg}<15'b000110110101010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110110101010) && ({row_reg, col_reg}<15'b000110111011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000110111011010) && ({row_reg, col_reg}<15'b000110111101010)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000110111101010) && ({row_reg, col_reg}<15'b000111000011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000111000011100) && ({row_reg, col_reg}<15'b000111000101000)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000111000101000) && ({row_reg, col_reg}<15'b000111001011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000111001011100) && ({row_reg, col_reg}<15'b000111001101000)) color_data = 12'b010010100001;



		if(({row_reg, col_reg}>=15'b000111001101000) && ({row_reg, col_reg}<15'b000111100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000111100011110) && ({row_reg, col_reg}<15'b000111100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000111100100100) && ({row_reg, col_reg}<15'b000111100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000111100100110) && ({row_reg, col_reg}<15'b000111101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000111101011110) && ({row_reg, col_reg}<15'b000111101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000111101100100) && ({row_reg, col_reg}<15'b000111101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000111101100110) && ({row_reg, col_reg}<15'b000111110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000111110000000) && ({row_reg, col_reg}<15'b000111110000010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b000111110000010) && ({row_reg, col_reg}<15'b000111110011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b000111110011110) && ({row_reg, col_reg}<15'b000111110100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b000111110100000) && ({row_reg, col_reg}<15'b000111110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000111110100100) && ({row_reg, col_reg}<15'b000111110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000111110100110) && ({row_reg, col_reg}<15'b000111111000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b000111111000000) && ({row_reg, col_reg}<15'b000111111000010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b000111111000010) && ({row_reg, col_reg}<15'b000111111011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b000111111011110) && ({row_reg, col_reg}<15'b000111111100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b000111111100000) && ({row_reg, col_reg}<15'b000111111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b000111111100100) && ({row_reg, col_reg}<15'b000111111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b000111111100110) && ({row_reg, col_reg}<15'b001000000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000000000010) && ({row_reg, col_reg}<15'b001000000000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000000000100) && ({row_reg, col_reg}<15'b001000000010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000000010010) && ({row_reg, col_reg}<15'b001000000011100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000000011100) && ({row_reg, col_reg}<15'b001000000011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000000011110) && ({row_reg, col_reg}<15'b001000000100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000000100000) && ({row_reg, col_reg}<15'b001000000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000000100100) && ({row_reg, col_reg}<15'b001000000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000000100110) && ({row_reg, col_reg}<15'b001000001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000001000010) && ({row_reg, col_reg}<15'b001000001000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000001000100) && ({row_reg, col_reg}<15'b001000001010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000001010010) && ({row_reg, col_reg}<15'b001000001011100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000001011100) && ({row_reg, col_reg}<15'b001000001011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000001011110) && ({row_reg, col_reg}<15'b001000001100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000001100000) && ({row_reg, col_reg}<15'b001000001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000001100100) && ({row_reg, col_reg}<15'b001000001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000001100110) && ({row_reg, col_reg}<15'b001000010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000010000100) && ({row_reg, col_reg}<15'b001000010000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000010000110) && ({row_reg, col_reg}<15'b001000010010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000010010000) && ({row_reg, col_reg}<15'b001000010010100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000010010100) && ({row_reg, col_reg}<15'b001000010010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000010010110) && ({row_reg, col_reg}<15'b001000010011000)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000010011000) && ({row_reg, col_reg}<15'b001000010011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000010011010) && ({row_reg, col_reg}<15'b001000010011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000010011110) && ({row_reg, col_reg}<15'b001000010100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000010100000) && ({row_reg, col_reg}<15'b001000010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000010100100) && ({row_reg, col_reg}<15'b001000010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000010100110) && ({row_reg, col_reg}<15'b001000011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000011000100) && ({row_reg, col_reg}<15'b001000011000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000011000110) && ({row_reg, col_reg}<15'b001000011010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000011010000) && ({row_reg, col_reg}<15'b001000011010100)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000011010100) && ({row_reg, col_reg}<15'b001000011010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000011010110) && ({row_reg, col_reg}<15'b001000011011000)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000011011000) && ({row_reg, col_reg}<15'b001000011011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000011011010) && ({row_reg, col_reg}<15'b001000011011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000011011110) && ({row_reg, col_reg}<15'b001000011100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000011100000) && ({row_reg, col_reg}<15'b001000011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000011100100) && ({row_reg, col_reg}<15'b001000011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000011100110) && ({row_reg, col_reg}<15'b001000100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000100000110) && ({row_reg, col_reg}<15'b001000100001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000100001000) && ({row_reg, col_reg}<15'b001000100010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000100010000) && ({row_reg, col_reg}<15'b001000100010010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000100010010) && ({row_reg, col_reg}<15'b001000100010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000100010110) && ({row_reg, col_reg}<15'b001000100011000)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000100011000) && ({row_reg, col_reg}<15'b001000100011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000100011100) && ({row_reg, col_reg}<15'b001000100011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000100011110) && ({row_reg, col_reg}<15'b001000100100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000100100000) && ({row_reg, col_reg}<15'b001000100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000100100100) && ({row_reg, col_reg}<15'b001000100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000100100110) && ({row_reg, col_reg}<15'b001000101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000101000110) && ({row_reg, col_reg}<15'b001000101001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000101001000) && ({row_reg, col_reg}<15'b001000101010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000101010000) && ({row_reg, col_reg}<15'b001000101010010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000101010010) && ({row_reg, col_reg}<15'b001000101010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000101010110) && ({row_reg, col_reg}<15'b001000101011000)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000101011000) && ({row_reg, col_reg}<15'b001000101011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000101011100) && ({row_reg, col_reg}<15'b001000101011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000101011110) && ({row_reg, col_reg}<15'b001000101100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000101100000) && ({row_reg, col_reg}<15'b001000101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000101100100) && ({row_reg, col_reg}<15'b001000101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000101100110) && ({row_reg, col_reg}<15'b001000110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000110001000) && ({row_reg, col_reg}<15'b001000110001010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000110001010) && ({row_reg, col_reg}<15'b001000110010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000110010000) && ({row_reg, col_reg}<15'b001000110010010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000110010010) && ({row_reg, col_reg}<15'b001000110010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000110010100) && ({row_reg, col_reg}<15'b001000110011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000110011010) && ({row_reg, col_reg}<15'b001000110011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000110011100) && ({row_reg, col_reg}<15'b001000110011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000110011110) && ({row_reg, col_reg}<15'b001000110100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000110100000) && ({row_reg, col_reg}<15'b001000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000110100100) && ({row_reg, col_reg}<15'b001000110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000110100110) && ({row_reg, col_reg}<15'b001000111001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001000111001000) && ({row_reg, col_reg}<15'b001000111001010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000111001010) && ({row_reg, col_reg}<15'b001000111010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001000111010000) && ({row_reg, col_reg}<15'b001000111010010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000111010010) && ({row_reg, col_reg}<15'b001000111010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000111010100) && ({row_reg, col_reg}<15'b001000111011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000111011010) && ({row_reg, col_reg}<15'b001000111011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000111011100) && ({row_reg, col_reg}<15'b001000111011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001000111011110) && ({row_reg, col_reg}<15'b001000111100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001000111100000) && ({row_reg, col_reg}<15'b001000111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001000111100100) && ({row_reg, col_reg}<15'b001000111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001000111100110) && ({row_reg, col_reg}<15'b001001000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001000001010) && ({row_reg, col_reg}<15'b001001000001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001000001100) && ({row_reg, col_reg}<15'b001001000010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001000010000) && ({row_reg, col_reg}<15'b001001000010110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001000010110) && ({row_reg, col_reg}<15'b001001000011000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001000011000) && ({row_reg, col_reg}<15'b001001000011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001000011110) && ({row_reg, col_reg}<15'b001001000100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001000100000) && ({row_reg, col_reg}<15'b001001000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001000100100) && ({row_reg, col_reg}<15'b001001000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001000100110) && ({row_reg, col_reg}<15'b001001001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001001001010) && ({row_reg, col_reg}<15'b001001001001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001001001100) && ({row_reg, col_reg}<15'b001001001010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001001010000) && ({row_reg, col_reg}<15'b001001001010110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001001010110) && ({row_reg, col_reg}<15'b001001001011000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001001011000) && ({row_reg, col_reg}<15'b001001001011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001001011110) && ({row_reg, col_reg}<15'b001001001100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001001100000) && ({row_reg, col_reg}<15'b001001001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001001100100) && ({row_reg, col_reg}<15'b001001001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001001100110) && ({row_reg, col_reg}<15'b001001010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001010001100) && ({row_reg, col_reg}<15'b001001010001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001010001110) && ({row_reg, col_reg}<15'b001001010010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001010010000) && ({row_reg, col_reg}<15'b001001010011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001010011110) && ({row_reg, col_reg}<15'b001001010100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001010100000) && ({row_reg, col_reg}<15'b001001010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001010100100) && ({row_reg, col_reg}<15'b001001010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001010100110) && ({row_reg, col_reg}<15'b001001011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001011001100) && ({row_reg, col_reg}<15'b001001011001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001011001110) && ({row_reg, col_reg}<15'b001001011010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001011010000) && ({row_reg, col_reg}<15'b001001011011110)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001011011110) && ({row_reg, col_reg}<15'b001001011100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001011100000) && ({row_reg, col_reg}<15'b001001011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001011100100) && ({row_reg, col_reg}<15'b001001011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001011100110) && ({row_reg, col_reg}<15'b001001100001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001100001110) && ({row_reg, col_reg}<15'b001001100010000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001100010000) && ({row_reg, col_reg}<15'b001001100010100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001100010100) && ({row_reg, col_reg}<15'b001001100011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001100011010) && ({row_reg, col_reg}<15'b001001100011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001100011110) && ({row_reg, col_reg}<15'b001001100100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001100100000) && ({row_reg, col_reg}<15'b001001100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001100100100) && ({row_reg, col_reg}<15'b001001100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001100100110) && ({row_reg, col_reg}<15'b001001101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001101001110) && ({row_reg, col_reg}<15'b001001101010000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001101010000) && ({row_reg, col_reg}<15'b001001101010100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001101010100) && ({row_reg, col_reg}<15'b001001101011010)) color_data = 12'b010010100001;
		if(({row_reg, col_reg}>=15'b001001101011010) && ({row_reg, col_reg}<15'b001001101011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001101011110) && ({row_reg, col_reg}<15'b001001101100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001101100000) && ({row_reg, col_reg}<15'b001001101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001101100100) && ({row_reg, col_reg}<15'b001001101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001101100110) && ({row_reg, col_reg}<15'b001001110010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001110010000) && ({row_reg, col_reg}<15'b001001110010010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001110010010) && ({row_reg, col_reg}<15'b001001110011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001110011110) && ({row_reg, col_reg}<15'b001001110100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001110100000) && ({row_reg, col_reg}<15'b001001110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001110100100) && ({row_reg, col_reg}<15'b001001110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001110100110) && ({row_reg, col_reg}<15'b001001111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001001111010000) && ({row_reg, col_reg}<15'b001001111010010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001111010010) && ({row_reg, col_reg}<15'b001001111011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001001111011110) && ({row_reg, col_reg}<15'b001001111100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001001111100000) && ({row_reg, col_reg}<15'b001001111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001001111100100) && ({row_reg, col_reg}<15'b001001111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001001111100110) && ({row_reg, col_reg}<15'b001010000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010000010010) && ({row_reg, col_reg}<15'b001010000010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010000010100) && ({row_reg, col_reg}<15'b001010000011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010000011110) && ({row_reg, col_reg}<15'b001010000100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010000100000) && ({row_reg, col_reg}<15'b001010000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010000100100) && ({row_reg, col_reg}<15'b001010000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010000100110) && ({row_reg, col_reg}<15'b001010001010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010001010010) && ({row_reg, col_reg}<15'b001010001010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010001010100) && ({row_reg, col_reg}<15'b001010001011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010001011110) && ({row_reg, col_reg}<15'b001010001100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010001100000) && ({row_reg, col_reg}<15'b001010001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010001100100) && ({row_reg, col_reg}<15'b001010001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010001100110) && ({row_reg, col_reg}<15'b001010010010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010010010100) && ({row_reg, col_reg}<15'b001010010010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010010010110) && ({row_reg, col_reg}<15'b001010010011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010010011110) && ({row_reg, col_reg}<15'b001010010100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010010100000) && ({row_reg, col_reg}<15'b001010010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010010100100) && ({row_reg, col_reg}<15'b001010010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010010100110) && ({row_reg, col_reg}<15'b001010011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010011010100) && ({row_reg, col_reg}<15'b001010011010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010011010110) && ({row_reg, col_reg}<15'b001010011011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010011011110) && ({row_reg, col_reg}<15'b001010011100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010011100000) && ({row_reg, col_reg}<15'b001010011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010011100100) && ({row_reg, col_reg}<15'b001010011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010011100110) && ({row_reg, col_reg}<15'b001010100010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010100010110) && ({row_reg, col_reg}<15'b001010100011000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010100011000) && ({row_reg, col_reg}<15'b001010100011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010100011110) && ({row_reg, col_reg}<15'b001010100100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010100100000) && ({row_reg, col_reg}<15'b001010100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010100100100) && ({row_reg, col_reg}<15'b001010100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010100100110) && ({row_reg, col_reg}<15'b001010101010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010101010110) && ({row_reg, col_reg}<15'b001010101011000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010101011000) && ({row_reg, col_reg}<15'b001010101011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010101011110) && ({row_reg, col_reg}<15'b001010101100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010101100000) && ({row_reg, col_reg}<15'b001010101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010101100100) && ({row_reg, col_reg}<15'b001010101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010101100110) && ({row_reg, col_reg}<15'b001010110011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010110011000) && ({row_reg, col_reg}<15'b001010110011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010110011010) && ({row_reg, col_reg}<15'b001010110011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010110011110) && ({row_reg, col_reg}<15'b001010110100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010110100000) && ({row_reg, col_reg}<15'b001010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010110100100) && ({row_reg, col_reg}<15'b001010110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010110100110) && ({row_reg, col_reg}<15'b001010111011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001010111011000) && ({row_reg, col_reg}<15'b001010111011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010111011010) && ({row_reg, col_reg}<15'b001010111011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001010111011110) && ({row_reg, col_reg}<15'b001010111100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001010111100000) && ({row_reg, col_reg}<15'b001010111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001010111100100) && ({row_reg, col_reg}<15'b001010111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001010111100110) && ({row_reg, col_reg}<15'b001011000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011000011010) && ({row_reg, col_reg}<15'b001011000011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011000011100) && ({row_reg, col_reg}<15'b001011000011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001011000011110) && ({row_reg, col_reg}<15'b001011000100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011000100000) && ({row_reg, col_reg}<15'b001011000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011000100100) && ({row_reg, col_reg}<15'b001011000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011000100110) && ({row_reg, col_reg}<15'b001011001011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011001011010) && ({row_reg, col_reg}<15'b001011001011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011001011100) && ({row_reg, col_reg}<15'b001011001011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=15'b001011001011110) && ({row_reg, col_reg}<15'b001011001100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011001100000) && ({row_reg, col_reg}<15'b001011001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011001100100) && ({row_reg, col_reg}<15'b001011001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011001100110) && ({row_reg, col_reg}<15'b001011010011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011010011100) && ({row_reg, col_reg}<15'b001011010100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011010100000) && ({row_reg, col_reg}<15'b001011010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011010100100) && ({row_reg, col_reg}<15'b001011010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011010100110) && ({row_reg, col_reg}<15'b001011011011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011011011100) && ({row_reg, col_reg}<15'b001011011100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011011100000) && ({row_reg, col_reg}<15'b001011011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011011100100) && ({row_reg, col_reg}<15'b001011011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011011100110) && ({row_reg, col_reg}<15'b001011100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011100011110) && ({row_reg, col_reg}<15'b001011100100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011100100000) && ({row_reg, col_reg}<15'b001011100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011100100100) && ({row_reg, col_reg}<15'b001011100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011100100110) && ({row_reg, col_reg}<15'b001011101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011101011110) && ({row_reg, col_reg}<15'b001011101100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=15'b001011101100000) && ({row_reg, col_reg}<15'b001011101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011101100100) && ({row_reg, col_reg}<15'b001011101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011101100110) && ({row_reg, col_reg}<15'b001011110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011110011110) && ({row_reg, col_reg}<15'b001011110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011110100100) && ({row_reg, col_reg}<15'b001011110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011110100110) && ({row_reg, col_reg}<15'b001011111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001011111011110) && ({row_reg, col_reg}<15'b001011111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001011111100100) && ({row_reg, col_reg}<15'b001011111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001011111100110) && ({row_reg, col_reg}<15'b001100000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100000011110) && ({row_reg, col_reg}<15'b001100000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100000100100) && ({row_reg, col_reg}<15'b001100000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100000100110) && ({row_reg, col_reg}<15'b001100001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100001011110) && ({row_reg, col_reg}<15'b001100001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100001100100) && ({row_reg, col_reg}<15'b001100001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100001100110) && ({row_reg, col_reg}<15'b001100010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100010011110) && ({row_reg, col_reg}<15'b001100010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100010100100) && ({row_reg, col_reg}<15'b001100010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100010100110) && ({row_reg, col_reg}<15'b001100011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100011011110) && ({row_reg, col_reg}<15'b001100011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100011100100) && ({row_reg, col_reg}<15'b001100011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100011100110) && ({row_reg, col_reg}<15'b001100100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100100011110) && ({row_reg, col_reg}<15'b001100100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100100100100) && ({row_reg, col_reg}<15'b001100100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100100100110) && ({row_reg, col_reg}<15'b001100101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100101011110) && ({row_reg, col_reg}<15'b001100101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100101100100) && ({row_reg, col_reg}<15'b001100101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100101100110) && ({row_reg, col_reg}<15'b001100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100110011110) && ({row_reg, col_reg}<15'b001100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100110100100) && ({row_reg, col_reg}<15'b001100110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100110100110) && ({row_reg, col_reg}<15'b001100111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001100111011110) && ({row_reg, col_reg}<15'b001100111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001100111100100) && ({row_reg, col_reg}<15'b001100111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001100111100110) && ({row_reg, col_reg}<15'b001101000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101000011110) && ({row_reg, col_reg}<15'b001101000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101000100100) && ({row_reg, col_reg}<15'b001101000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101000100110) && ({row_reg, col_reg}<15'b001101001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101001011110) && ({row_reg, col_reg}<15'b001101001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101001100100) && ({row_reg, col_reg}<15'b001101001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101001100110) && ({row_reg, col_reg}<15'b001101010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101010011110) && ({row_reg, col_reg}<15'b001101010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101010100100) && ({row_reg, col_reg}<15'b001101010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101010100110) && ({row_reg, col_reg}<15'b001101011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101011011110) && ({row_reg, col_reg}<15'b001101011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101011100100) && ({row_reg, col_reg}<15'b001101011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101011100110) && ({row_reg, col_reg}<15'b001101100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101100011110) && ({row_reg, col_reg}<15'b001101100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101100100100) && ({row_reg, col_reg}<15'b001101100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101100100110) && ({row_reg, col_reg}<15'b001101101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101101011110) && ({row_reg, col_reg}<15'b001101101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101101100100) && ({row_reg, col_reg}<15'b001101101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101101100110) && ({row_reg, col_reg}<15'b001101110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101110011110) && ({row_reg, col_reg}<15'b001101110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101110100100) && ({row_reg, col_reg}<15'b001101110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101110100110) && ({row_reg, col_reg}<15'b001101111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001101111011110) && ({row_reg, col_reg}<15'b001101111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001101111100100) && ({row_reg, col_reg}<15'b001101111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001101111100110) && ({row_reg, col_reg}<15'b001110000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110000011110) && ({row_reg, col_reg}<15'b001110000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110000100100) && ({row_reg, col_reg}<15'b001110000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110000100110) && ({row_reg, col_reg}<15'b001110001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110001011110) && ({row_reg, col_reg}<15'b001110001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110001100100) && ({row_reg, col_reg}<15'b001110001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110001100110) && ({row_reg, col_reg}<15'b001110010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110010011110) && ({row_reg, col_reg}<15'b001110010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110010100100) && ({row_reg, col_reg}<15'b001110010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110010100110) && ({row_reg, col_reg}<15'b001110011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110011011110) && ({row_reg, col_reg}<15'b001110011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110011100100) && ({row_reg, col_reg}<15'b001110011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110011100110) && ({row_reg, col_reg}<15'b001110100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110100011110) && ({row_reg, col_reg}<15'b001110100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110100100100) && ({row_reg, col_reg}<15'b001110100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110100100110) && ({row_reg, col_reg}<15'b001110101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110101011110) && ({row_reg, col_reg}<15'b001110101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110101100100) && ({row_reg, col_reg}<15'b001110101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110101100110) && ({row_reg, col_reg}<15'b001110110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110110011110) && ({row_reg, col_reg}<15'b001110110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110110100100) && ({row_reg, col_reg}<15'b001110110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110110100110) && ({row_reg, col_reg}<15'b001110111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001110111011110) && ({row_reg, col_reg}<15'b001110111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001110111100100) && ({row_reg, col_reg}<15'b001110111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001110111100110) && ({row_reg, col_reg}<15'b001111000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111000011110) && ({row_reg, col_reg}<15'b001111000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111000100100) && ({row_reg, col_reg}<15'b001111000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111000100110) && ({row_reg, col_reg}<15'b001111001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111001011110) && ({row_reg, col_reg}<15'b001111001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111001100100) && ({row_reg, col_reg}<15'b001111001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111001100110) && ({row_reg, col_reg}<15'b001111010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111010011110) && ({row_reg, col_reg}<15'b001111010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111010100100) && ({row_reg, col_reg}<15'b001111010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111010100110) && ({row_reg, col_reg}<15'b001111011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111011011110) && ({row_reg, col_reg}<15'b001111011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111011100100) && ({row_reg, col_reg}<15'b001111011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111011100110) && ({row_reg, col_reg}<15'b001111100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111100011110) && ({row_reg, col_reg}<15'b001111100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111100100100) && ({row_reg, col_reg}<15'b001111100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111100100110) && ({row_reg, col_reg}<15'b001111101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111101011110) && ({row_reg, col_reg}<15'b001111101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111101100100) && ({row_reg, col_reg}<15'b001111101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111101100110) && ({row_reg, col_reg}<15'b001111110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111110011110) && ({row_reg, col_reg}<15'b001111110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111110100100) && ({row_reg, col_reg}<15'b001111110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111110100110) && ({row_reg, col_reg}<15'b001111111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b001111111011110) && ({row_reg, col_reg}<15'b001111111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b001111111100100) && ({row_reg, col_reg}<15'b001111111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b001111111100110) && ({row_reg, col_reg}<15'b010000000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000000011110) && ({row_reg, col_reg}<15'b010000000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000000100100) && ({row_reg, col_reg}<15'b010000000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000000100110) && ({row_reg, col_reg}<15'b010000001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000001011110) && ({row_reg, col_reg}<15'b010000001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000001100100) && ({row_reg, col_reg}<15'b010000001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000001100110) && ({row_reg, col_reg}<15'b010000010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000010011110) && ({row_reg, col_reg}<15'b010000010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000010100100) && ({row_reg, col_reg}<15'b010000010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000010100110) && ({row_reg, col_reg}<15'b010000011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000011011110) && ({row_reg, col_reg}<15'b010000011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000011100100) && ({row_reg, col_reg}<15'b010000011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000011100110) && ({row_reg, col_reg}<15'b010000100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000100011110) && ({row_reg, col_reg}<15'b010000100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000100100100) && ({row_reg, col_reg}<15'b010000100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000100100110) && ({row_reg, col_reg}<15'b010000101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000101011110) && ({row_reg, col_reg}<15'b010000101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000101100100) && ({row_reg, col_reg}<15'b010000101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000101100110) && ({row_reg, col_reg}<15'b010000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000110011110) && ({row_reg, col_reg}<15'b010000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000110100100) && ({row_reg, col_reg}<15'b010000110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000110100110) && ({row_reg, col_reg}<15'b010000111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010000111011110) && ({row_reg, col_reg}<15'b010000111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010000111100100) && ({row_reg, col_reg}<15'b010000111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010000111100110) && ({row_reg, col_reg}<15'b010001000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001000011110) && ({row_reg, col_reg}<15'b010001000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001000100100) && ({row_reg, col_reg}<15'b010001000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001000100110) && ({row_reg, col_reg}<15'b010001001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001001011110) && ({row_reg, col_reg}<15'b010001001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001001100100) && ({row_reg, col_reg}<15'b010001001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001001100110) && ({row_reg, col_reg}<15'b010001010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001010011110) && ({row_reg, col_reg}<15'b010001010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001010100100) && ({row_reg, col_reg}<15'b010001010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001010100110) && ({row_reg, col_reg}<15'b010001011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001011011110) && ({row_reg, col_reg}<15'b010001011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001011100100) && ({row_reg, col_reg}<15'b010001011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001011100110) && ({row_reg, col_reg}<15'b010001100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001100011110) && ({row_reg, col_reg}<15'b010001100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001100100100) && ({row_reg, col_reg}<15'b010001100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001100100110) && ({row_reg, col_reg}<15'b010001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001101011110) && ({row_reg, col_reg}<15'b010001101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001101100100) && ({row_reg, col_reg}<15'b010001101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001101100110) && ({row_reg, col_reg}<15'b010001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001110011110) && ({row_reg, col_reg}<15'b010001110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001110100100) && ({row_reg, col_reg}<15'b010001110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001110100110) && ({row_reg, col_reg}<15'b010001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010001111011110) && ({row_reg, col_reg}<15'b010001111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010001111100100) && ({row_reg, col_reg}<15'b010001111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010001111100110) && ({row_reg, col_reg}<15'b010010000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010000011110) && ({row_reg, col_reg}<15'b010010000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010000100100) && ({row_reg, col_reg}<15'b010010000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010000100110) && ({row_reg, col_reg}<15'b010010001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010001011110) && ({row_reg, col_reg}<15'b010010001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010001100100) && ({row_reg, col_reg}<15'b010010001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010001100110) && ({row_reg, col_reg}<15'b010010010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010010011110) && ({row_reg, col_reg}<15'b010010010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010010100100) && ({row_reg, col_reg}<15'b010010010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010010100110) && ({row_reg, col_reg}<15'b010010011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010011011110) && ({row_reg, col_reg}<15'b010010011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010011100100) && ({row_reg, col_reg}<15'b010010011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010011100110) && ({row_reg, col_reg}<15'b010010100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010100011110) && ({row_reg, col_reg}<15'b010010100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010100100100) && ({row_reg, col_reg}<15'b010010100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010100100110) && ({row_reg, col_reg}<15'b010010101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010101011110) && ({row_reg, col_reg}<15'b010010101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010101100100) && ({row_reg, col_reg}<15'b010010101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010101100110) && ({row_reg, col_reg}<15'b010010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010110011110) && ({row_reg, col_reg}<15'b010010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010110100100) && ({row_reg, col_reg}<15'b010010110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010110100110) && ({row_reg, col_reg}<15'b010010111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010010111011110) && ({row_reg, col_reg}<15'b010010111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010010111100100) && ({row_reg, col_reg}<15'b010010111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010010111100110) && ({row_reg, col_reg}<15'b010011000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011000011110) && ({row_reg, col_reg}<15'b010011000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011000100100) && ({row_reg, col_reg}<15'b010011000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011000100110) && ({row_reg, col_reg}<15'b010011001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011001011110) && ({row_reg, col_reg}<15'b010011001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011001100100) && ({row_reg, col_reg}<15'b010011001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011001100110) && ({row_reg, col_reg}<15'b010011010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011010011110) && ({row_reg, col_reg}<15'b010011010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011010100100) && ({row_reg, col_reg}<15'b010011010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011010100110) && ({row_reg, col_reg}<15'b010011011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011011011110) && ({row_reg, col_reg}<15'b010011011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011011100100) && ({row_reg, col_reg}<15'b010011011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011011100110) && ({row_reg, col_reg}<15'b010011100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011100011110) && ({row_reg, col_reg}<15'b010011100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011100100100) && ({row_reg, col_reg}<15'b010011100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011100100110) && ({row_reg, col_reg}<15'b010011101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011101011110) && ({row_reg, col_reg}<15'b010011101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011101100100) && ({row_reg, col_reg}<15'b010011101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011101100110) && ({row_reg, col_reg}<15'b010011110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011110011110) && ({row_reg, col_reg}<15'b010011110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011110100100) && ({row_reg, col_reg}<15'b010011110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011110100110) && ({row_reg, col_reg}<15'b010011111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010011111011110) && ({row_reg, col_reg}<15'b010011111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010011111100100) && ({row_reg, col_reg}<15'b010011111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010011111100110) && ({row_reg, col_reg}<15'b010100000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100000011110) && ({row_reg, col_reg}<15'b010100000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100000100100) && ({row_reg, col_reg}<15'b010100000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100000100110) && ({row_reg, col_reg}<15'b010100001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100001011110) && ({row_reg, col_reg}<15'b010100001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100001100100) && ({row_reg, col_reg}<15'b010100001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100001100110) && ({row_reg, col_reg}<15'b010100010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100010011110) && ({row_reg, col_reg}<15'b010100010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100010100100) && ({row_reg, col_reg}<15'b010100010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100010100110) && ({row_reg, col_reg}<15'b010100011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100011011110) && ({row_reg, col_reg}<15'b010100011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100011100100) && ({row_reg, col_reg}<15'b010100011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100011100110) && ({row_reg, col_reg}<15'b010100100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100100011110) && ({row_reg, col_reg}<15'b010100100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100100100100) && ({row_reg, col_reg}<15'b010100100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100100100110) && ({row_reg, col_reg}<15'b010100101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100101011110) && ({row_reg, col_reg}<15'b010100101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100101100100) && ({row_reg, col_reg}<15'b010100101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100101100110) && ({row_reg, col_reg}<15'b010100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100110011110) && ({row_reg, col_reg}<15'b010100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100110100100) && ({row_reg, col_reg}<15'b010100110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100110100110) && ({row_reg, col_reg}<15'b010100111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010100111011110) && ({row_reg, col_reg}<15'b010100111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010100111100100) && ({row_reg, col_reg}<15'b010100111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010100111100110) && ({row_reg, col_reg}<15'b010101000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101000011110) && ({row_reg, col_reg}<15'b010101000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101000100100) && ({row_reg, col_reg}<15'b010101000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101000100110) && ({row_reg, col_reg}<15'b010101001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101001011110) && ({row_reg, col_reg}<15'b010101001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101001100100) && ({row_reg, col_reg}<15'b010101001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101001100110) && ({row_reg, col_reg}<15'b010101010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101010011110) && ({row_reg, col_reg}<15'b010101010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101010100100) && ({row_reg, col_reg}<15'b010101010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101010100110) && ({row_reg, col_reg}<15'b010101011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101011011110) && ({row_reg, col_reg}<15'b010101011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101011100100) && ({row_reg, col_reg}<15'b010101011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101011100110) && ({row_reg, col_reg}<15'b010101100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101100011110) && ({row_reg, col_reg}<15'b010101100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101100100100) && ({row_reg, col_reg}<15'b010101100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101100100110) && ({row_reg, col_reg}<15'b010101101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101101011110) && ({row_reg, col_reg}<15'b010101101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101101100100) && ({row_reg, col_reg}<15'b010101101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101101100110) && ({row_reg, col_reg}<15'b010101110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101110011110) && ({row_reg, col_reg}<15'b010101110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101110100100) && ({row_reg, col_reg}<15'b010101110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101110100110) && ({row_reg, col_reg}<15'b010101111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010101111011110) && ({row_reg, col_reg}<15'b010101111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010101111100100) && ({row_reg, col_reg}<15'b010101111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010101111100110) && ({row_reg, col_reg}<15'b010110000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110000011110) && ({row_reg, col_reg}<15'b010110000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110000100100) && ({row_reg, col_reg}<15'b010110000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110000100110) && ({row_reg, col_reg}<15'b010110001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110001011110) && ({row_reg, col_reg}<15'b010110001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110001100100) && ({row_reg, col_reg}<15'b010110001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110001100110) && ({row_reg, col_reg}<15'b010110010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110010011110) && ({row_reg, col_reg}<15'b010110010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110010100100) && ({row_reg, col_reg}<15'b010110010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110010100110) && ({row_reg, col_reg}<15'b010110011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110011011110) && ({row_reg, col_reg}<15'b010110011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110011100100) && ({row_reg, col_reg}<15'b010110011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110011100110) && ({row_reg, col_reg}<15'b010110100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110100011110) && ({row_reg, col_reg}<15'b010110100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110100100100) && ({row_reg, col_reg}<15'b010110100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110100100110) && ({row_reg, col_reg}<15'b010110101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110101011110) && ({row_reg, col_reg}<15'b010110101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110101100100) && ({row_reg, col_reg}<15'b010110101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110101100110) && ({row_reg, col_reg}<15'b010110110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110110011110) && ({row_reg, col_reg}<15'b010110110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110110100100) && ({row_reg, col_reg}<15'b010110110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110110100110) && ({row_reg, col_reg}<15'b010110111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010110111011110) && ({row_reg, col_reg}<15'b010110111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010110111100100) && ({row_reg, col_reg}<15'b010110111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010110111100110) && ({row_reg, col_reg}<15'b010111000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111000011110) && ({row_reg, col_reg}<15'b010111000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111000100100) && ({row_reg, col_reg}<15'b010111000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111000100110) && ({row_reg, col_reg}<15'b010111001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111001011110) && ({row_reg, col_reg}<15'b010111001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111001100100) && ({row_reg, col_reg}<15'b010111001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111001100110) && ({row_reg, col_reg}<15'b010111010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111010011110) && ({row_reg, col_reg}<15'b010111010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111010100100) && ({row_reg, col_reg}<15'b010111010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111010100110) && ({row_reg, col_reg}<15'b010111011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111011011110) && ({row_reg, col_reg}<15'b010111011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111011100100) && ({row_reg, col_reg}<15'b010111011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111011100110) && ({row_reg, col_reg}<15'b010111100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111100011110) && ({row_reg, col_reg}<15'b010111100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111100100100) && ({row_reg, col_reg}<15'b010111100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111100100110) && ({row_reg, col_reg}<15'b010111101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111101011110) && ({row_reg, col_reg}<15'b010111101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111101100100) && ({row_reg, col_reg}<15'b010111101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111101100110) && ({row_reg, col_reg}<15'b010111110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111110011110) && ({row_reg, col_reg}<15'b010111110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111110100100) && ({row_reg, col_reg}<15'b010111110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111110100110) && ({row_reg, col_reg}<15'b010111111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b010111111011110) && ({row_reg, col_reg}<15'b010111111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b010111111100100) && ({row_reg, col_reg}<15'b010111111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b010111111100110) && ({row_reg, col_reg}<15'b011000000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000000011110) && ({row_reg, col_reg}<15'b011000000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000000100100) && ({row_reg, col_reg}<15'b011000000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000000100110) && ({row_reg, col_reg}<15'b011000001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000001011110) && ({row_reg, col_reg}<15'b011000001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000001100100) && ({row_reg, col_reg}<15'b011000001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000001100110) && ({row_reg, col_reg}<15'b011000010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000010011110) && ({row_reg, col_reg}<15'b011000010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000010100100) && ({row_reg, col_reg}<15'b011000010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000010100110) && ({row_reg, col_reg}<15'b011000011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000011011110) && ({row_reg, col_reg}<15'b011000011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000011100100) && ({row_reg, col_reg}<15'b011000011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000011100110) && ({row_reg, col_reg}<15'b011000100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000100011110) && ({row_reg, col_reg}<15'b011000100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000100100100) && ({row_reg, col_reg}<15'b011000100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000100100110) && ({row_reg, col_reg}<15'b011000101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000101011110) && ({row_reg, col_reg}<15'b011000101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000101100100) && ({row_reg, col_reg}<15'b011000101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000101100110) && ({row_reg, col_reg}<15'b011000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000110011110) && ({row_reg, col_reg}<15'b011000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000110100100) && ({row_reg, col_reg}<15'b011000110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000110100110) && ({row_reg, col_reg}<15'b011000111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011000111011110) && ({row_reg, col_reg}<15'b011000111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011000111100100) && ({row_reg, col_reg}<15'b011000111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011000111100110) && ({row_reg, col_reg}<15'b011001000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001000011110) && ({row_reg, col_reg}<15'b011001000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001000100100) && ({row_reg, col_reg}<15'b011001000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001000100110) && ({row_reg, col_reg}<15'b011001001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001001011110) && ({row_reg, col_reg}<15'b011001001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001001100100) && ({row_reg, col_reg}<15'b011001001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001001100110) && ({row_reg, col_reg}<15'b011001010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001010011110) && ({row_reg, col_reg}<15'b011001010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001010100100) && ({row_reg, col_reg}<15'b011001010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001010100110) && ({row_reg, col_reg}<15'b011001011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001011011110) && ({row_reg, col_reg}<15'b011001011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001011100100) && ({row_reg, col_reg}<15'b011001011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001011100110) && ({row_reg, col_reg}<15'b011001100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001100011110) && ({row_reg, col_reg}<15'b011001100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001100100100) && ({row_reg, col_reg}<15'b011001100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001100100110) && ({row_reg, col_reg}<15'b011001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001101011110) && ({row_reg, col_reg}<15'b011001101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001101100100) && ({row_reg, col_reg}<15'b011001101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001101100110) && ({row_reg, col_reg}<15'b011001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001110011110) && ({row_reg, col_reg}<15'b011001110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001110100100) && ({row_reg, col_reg}<15'b011001110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001110100110) && ({row_reg, col_reg}<15'b011001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011001111011110) && ({row_reg, col_reg}<15'b011001111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011001111100100) && ({row_reg, col_reg}<15'b011001111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011001111100110) && ({row_reg, col_reg}<15'b011010000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010000011110) && ({row_reg, col_reg}<15'b011010000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010000100100) && ({row_reg, col_reg}<15'b011010000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010000100110) && ({row_reg, col_reg}<15'b011010001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010001011110) && ({row_reg, col_reg}<15'b011010001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010001100100) && ({row_reg, col_reg}<15'b011010001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010001100110) && ({row_reg, col_reg}<15'b011010010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010010011110) && ({row_reg, col_reg}<15'b011010010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010010100100) && ({row_reg, col_reg}<15'b011010010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010010100110) && ({row_reg, col_reg}<15'b011010011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010011011110) && ({row_reg, col_reg}<15'b011010011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010011100100) && ({row_reg, col_reg}<15'b011010011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010011100110) && ({row_reg, col_reg}<15'b011010100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010100011110) && ({row_reg, col_reg}<15'b011010100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010100100100) && ({row_reg, col_reg}<15'b011010100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010100100110) && ({row_reg, col_reg}<15'b011010101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010101011110) && ({row_reg, col_reg}<15'b011010101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010101100100) && ({row_reg, col_reg}<15'b011010101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010101100110) && ({row_reg, col_reg}<15'b011010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010110011110) && ({row_reg, col_reg}<15'b011010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010110100100) && ({row_reg, col_reg}<15'b011010110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010110100110) && ({row_reg, col_reg}<15'b011010111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011010111011110) && ({row_reg, col_reg}<15'b011010111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011010111100100) && ({row_reg, col_reg}<15'b011010111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011010111100110) && ({row_reg, col_reg}<15'b011011000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011000011110) && ({row_reg, col_reg}<15'b011011000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011000100100) && ({row_reg, col_reg}<15'b011011000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011000100110) && ({row_reg, col_reg}<15'b011011001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011001011110) && ({row_reg, col_reg}<15'b011011001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011001100100) && ({row_reg, col_reg}<15'b011011001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011001100110) && ({row_reg, col_reg}<15'b011011010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011010011110) && ({row_reg, col_reg}<15'b011011010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011010100100) && ({row_reg, col_reg}<15'b011011010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011010100110) && ({row_reg, col_reg}<15'b011011011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011011011110) && ({row_reg, col_reg}<15'b011011011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011011100100) && ({row_reg, col_reg}<15'b011011011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011011100110) && ({row_reg, col_reg}<15'b011011100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011100011110) && ({row_reg, col_reg}<15'b011011100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011100100100) && ({row_reg, col_reg}<15'b011011100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011100100110) && ({row_reg, col_reg}<15'b011011101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011101011110) && ({row_reg, col_reg}<15'b011011101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011101100100) && ({row_reg, col_reg}<15'b011011101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011101100110) && ({row_reg, col_reg}<15'b011011110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011110011110) && ({row_reg, col_reg}<15'b011011110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011110100100) && ({row_reg, col_reg}<15'b011011110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011110100110) && ({row_reg, col_reg}<15'b011011111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011011111011110) && ({row_reg, col_reg}<15'b011011111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011011111100100) && ({row_reg, col_reg}<15'b011011111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011011111100110) && ({row_reg, col_reg}<15'b011100000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100000011110) && ({row_reg, col_reg}<15'b011100000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100000100100) && ({row_reg, col_reg}<15'b011100000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100000100110) && ({row_reg, col_reg}<15'b011100001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100001011110) && ({row_reg, col_reg}<15'b011100001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100001100100) && ({row_reg, col_reg}<15'b011100001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100001100110) && ({row_reg, col_reg}<15'b011100010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100010011110) && ({row_reg, col_reg}<15'b011100010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100010100100) && ({row_reg, col_reg}<15'b011100010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100010100110) && ({row_reg, col_reg}<15'b011100011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100011011110) && ({row_reg, col_reg}<15'b011100011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100011100100) && ({row_reg, col_reg}<15'b011100011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100011100110) && ({row_reg, col_reg}<15'b011100100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100100011110) && ({row_reg, col_reg}<15'b011100100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100100100100) && ({row_reg, col_reg}<15'b011100100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100100100110) && ({row_reg, col_reg}<15'b011100101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100101011110) && ({row_reg, col_reg}<15'b011100101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100101100100) && ({row_reg, col_reg}<15'b011100101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100101100110) && ({row_reg, col_reg}<15'b011100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100110011110) && ({row_reg, col_reg}<15'b011100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100110100100) && ({row_reg, col_reg}<15'b011100110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100110100110) && ({row_reg, col_reg}<15'b011100111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011100111011110) && ({row_reg, col_reg}<15'b011100111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011100111100100) && ({row_reg, col_reg}<15'b011100111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011100111100110) && ({row_reg, col_reg}<15'b011101000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101000011110) && ({row_reg, col_reg}<15'b011101000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101000100100) && ({row_reg, col_reg}<15'b011101000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101000100110) && ({row_reg, col_reg}<15'b011101001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101001011110) && ({row_reg, col_reg}<15'b011101001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101001100100) && ({row_reg, col_reg}<15'b011101001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101001100110) && ({row_reg, col_reg}<15'b011101010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101010011110) && ({row_reg, col_reg}<15'b011101010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101010100100) && ({row_reg, col_reg}<15'b011101010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101010100110) && ({row_reg, col_reg}<15'b011101011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101011011110) && ({row_reg, col_reg}<15'b011101011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101011100100) && ({row_reg, col_reg}<15'b011101011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101011100110) && ({row_reg, col_reg}<15'b011101100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101100011110) && ({row_reg, col_reg}<15'b011101100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101100100100) && ({row_reg, col_reg}<15'b011101100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101100100110) && ({row_reg, col_reg}<15'b011101101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101101011110) && ({row_reg, col_reg}<15'b011101101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101101100100) && ({row_reg, col_reg}<15'b011101101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101101100110) && ({row_reg, col_reg}<15'b011101110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101110011110) && ({row_reg, col_reg}<15'b011101110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101110100100) && ({row_reg, col_reg}<15'b011101110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101110100110) && ({row_reg, col_reg}<15'b011101111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011101111011110) && ({row_reg, col_reg}<15'b011101111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011101111100100) && ({row_reg, col_reg}<15'b011101111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011101111100110) && ({row_reg, col_reg}<15'b011110000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110000011110) && ({row_reg, col_reg}<15'b011110000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110000100100) && ({row_reg, col_reg}<15'b011110000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110000100110) && ({row_reg, col_reg}<15'b011110001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110001011110) && ({row_reg, col_reg}<15'b011110001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110001100100) && ({row_reg, col_reg}<15'b011110001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110001100110) && ({row_reg, col_reg}<15'b011110010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110010011110) && ({row_reg, col_reg}<15'b011110010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110010100100) && ({row_reg, col_reg}<15'b011110010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110010100110) && ({row_reg, col_reg}<15'b011110011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110011011110) && ({row_reg, col_reg}<15'b011110011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110011100100) && ({row_reg, col_reg}<15'b011110011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110011100110) && ({row_reg, col_reg}<15'b011110100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110100011110) && ({row_reg, col_reg}<15'b011110100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110100100100) && ({row_reg, col_reg}<15'b011110100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110100100110) && ({row_reg, col_reg}<15'b011110101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110101011110) && ({row_reg, col_reg}<15'b011110101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110101100100) && ({row_reg, col_reg}<15'b011110101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110101100110) && ({row_reg, col_reg}<15'b011110110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110110011110) && ({row_reg, col_reg}<15'b011110110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110110100100) && ({row_reg, col_reg}<15'b011110110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110110100110) && ({row_reg, col_reg}<15'b011110111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011110111011110) && ({row_reg, col_reg}<15'b011110111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011110111100100) && ({row_reg, col_reg}<15'b011110111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011110111100110) && ({row_reg, col_reg}<15'b011111000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111000011110) && ({row_reg, col_reg}<15'b011111000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111000100100) && ({row_reg, col_reg}<15'b011111000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111000100110) && ({row_reg, col_reg}<15'b011111001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111001011110) && ({row_reg, col_reg}<15'b011111001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111001100100) && ({row_reg, col_reg}<15'b011111001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111001100110) && ({row_reg, col_reg}<15'b011111010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111010011110) && ({row_reg, col_reg}<15'b011111010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111010100100) && ({row_reg, col_reg}<15'b011111010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111010100110) && ({row_reg, col_reg}<15'b011111011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111011011110) && ({row_reg, col_reg}<15'b011111011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111011100100) && ({row_reg, col_reg}<15'b011111011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111011100110) && ({row_reg, col_reg}<15'b011111100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111100011110) && ({row_reg, col_reg}<15'b011111100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111100100100) && ({row_reg, col_reg}<15'b011111100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111100100110) && ({row_reg, col_reg}<15'b011111101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111101011110) && ({row_reg, col_reg}<15'b011111101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111101100100) && ({row_reg, col_reg}<15'b011111101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111101100110) && ({row_reg, col_reg}<15'b011111110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111110011110) && ({row_reg, col_reg}<15'b011111110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111110100100) && ({row_reg, col_reg}<15'b011111110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111110100110) && ({row_reg, col_reg}<15'b011111111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b011111111011110) && ({row_reg, col_reg}<15'b011111111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b011111111100100) && ({row_reg, col_reg}<15'b011111111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b011111111100110) && ({row_reg, col_reg}<15'b100000000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000000011110) && ({row_reg, col_reg}<15'b100000000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000000100100) && ({row_reg, col_reg}<15'b100000000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000000100110) && ({row_reg, col_reg}<15'b100000001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000001011110) && ({row_reg, col_reg}<15'b100000001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000001100100) && ({row_reg, col_reg}<15'b100000001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000001100110) && ({row_reg, col_reg}<15'b100000010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000010011110) && ({row_reg, col_reg}<15'b100000010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000010100100) && ({row_reg, col_reg}<15'b100000010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000010100110) && ({row_reg, col_reg}<15'b100000011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000011011110) && ({row_reg, col_reg}<15'b100000011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000011100100) && ({row_reg, col_reg}<15'b100000011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000011100110) && ({row_reg, col_reg}<15'b100000100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000100011110) && ({row_reg, col_reg}<15'b100000100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000100100100) && ({row_reg, col_reg}<15'b100000100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000100100110) && ({row_reg, col_reg}<15'b100000101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000101011110) && ({row_reg, col_reg}<15'b100000101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000101100100) && ({row_reg, col_reg}<15'b100000101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000101100110) && ({row_reg, col_reg}<15'b100000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000110011110) && ({row_reg, col_reg}<15'b100000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000110100100) && ({row_reg, col_reg}<15'b100000110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000110100110) && ({row_reg, col_reg}<15'b100000111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100000111011110) && ({row_reg, col_reg}<15'b100000111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100000111100100) && ({row_reg, col_reg}<15'b100000111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100000111100110) && ({row_reg, col_reg}<15'b100001000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001000011110) && ({row_reg, col_reg}<15'b100001000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001000100100) && ({row_reg, col_reg}<15'b100001000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001000100110) && ({row_reg, col_reg}<15'b100001001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001001011110) && ({row_reg, col_reg}<15'b100001001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001001100100) && ({row_reg, col_reg}<15'b100001001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001001100110) && ({row_reg, col_reg}<15'b100001010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001010011110) && ({row_reg, col_reg}<15'b100001010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001010100100) && ({row_reg, col_reg}<15'b100001010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001010100110) && ({row_reg, col_reg}<15'b100001011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001011011110) && ({row_reg, col_reg}<15'b100001011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001011100100) && ({row_reg, col_reg}<15'b100001011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001011100110) && ({row_reg, col_reg}<15'b100001100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001100011110) && ({row_reg, col_reg}<15'b100001100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001100100100) && ({row_reg, col_reg}<15'b100001100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001100100110) && ({row_reg, col_reg}<15'b100001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001101011110) && ({row_reg, col_reg}<15'b100001101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001101100100) && ({row_reg, col_reg}<15'b100001101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001101100110) && ({row_reg, col_reg}<15'b100001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001110011110) && ({row_reg, col_reg}<15'b100001110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001110100100) && ({row_reg, col_reg}<15'b100001110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001110100110) && ({row_reg, col_reg}<15'b100001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100001111011110) && ({row_reg, col_reg}<15'b100001111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100001111100100) && ({row_reg, col_reg}<15'b100001111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100001111100110) && ({row_reg, col_reg}<15'b100010000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010000011110) && ({row_reg, col_reg}<15'b100010000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010000100100) && ({row_reg, col_reg}<15'b100010000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010000100110) && ({row_reg, col_reg}<15'b100010001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010001011110) && ({row_reg, col_reg}<15'b100010001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010001100100) && ({row_reg, col_reg}<15'b100010001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010001100110) && ({row_reg, col_reg}<15'b100010010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010010011110) && ({row_reg, col_reg}<15'b100010010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010010100100) && ({row_reg, col_reg}<15'b100010010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010010100110) && ({row_reg, col_reg}<15'b100010011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010011011110) && ({row_reg, col_reg}<15'b100010011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010011100100) && ({row_reg, col_reg}<15'b100010011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010011100110) && ({row_reg, col_reg}<15'b100010100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010100011110) && ({row_reg, col_reg}<15'b100010100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010100100100) && ({row_reg, col_reg}<15'b100010100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010100100110) && ({row_reg, col_reg}<15'b100010101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010101011110) && ({row_reg, col_reg}<15'b100010101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010101100100) && ({row_reg, col_reg}<15'b100010101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010101100110) && ({row_reg, col_reg}<15'b100010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010110011110) && ({row_reg, col_reg}<15'b100010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010110100100) && ({row_reg, col_reg}<15'b100010110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010110100110) && ({row_reg, col_reg}<15'b100010111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100010111011110) && ({row_reg, col_reg}<15'b100010111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100010111100100) && ({row_reg, col_reg}<15'b100010111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100010111100110) && ({row_reg, col_reg}<15'b100011000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011000011110) && ({row_reg, col_reg}<15'b100011000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011000100100) && ({row_reg, col_reg}<15'b100011000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011000100110) && ({row_reg, col_reg}<15'b100011001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011001011110) && ({row_reg, col_reg}<15'b100011001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011001100100) && ({row_reg, col_reg}<15'b100011001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011001100110) && ({row_reg, col_reg}<15'b100011010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011010011110) && ({row_reg, col_reg}<15'b100011010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011010100100) && ({row_reg, col_reg}<15'b100011010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011010100110) && ({row_reg, col_reg}<15'b100011011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011011011110) && ({row_reg, col_reg}<15'b100011011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011011100100) && ({row_reg, col_reg}<15'b100011011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011011100110) && ({row_reg, col_reg}<15'b100011100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011100011110) && ({row_reg, col_reg}<15'b100011100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011100100100) && ({row_reg, col_reg}<15'b100011100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011100100110) && ({row_reg, col_reg}<15'b100011101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011101011110) && ({row_reg, col_reg}<15'b100011101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011101100100) && ({row_reg, col_reg}<15'b100011101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011101100110) && ({row_reg, col_reg}<15'b100011110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011110011110) && ({row_reg, col_reg}<15'b100011110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011110100100) && ({row_reg, col_reg}<15'b100011110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011110100110) && ({row_reg, col_reg}<15'b100011111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100011111011110) && ({row_reg, col_reg}<15'b100011111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100011111100100) && ({row_reg, col_reg}<15'b100011111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100011111100110) && ({row_reg, col_reg}<15'b100100000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100000011110) && ({row_reg, col_reg}<15'b100100000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100000100100) && ({row_reg, col_reg}<15'b100100000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100000100110) && ({row_reg, col_reg}<15'b100100001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100001011110) && ({row_reg, col_reg}<15'b100100001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100001100100) && ({row_reg, col_reg}<15'b100100001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100001100110) && ({row_reg, col_reg}<15'b100100010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100010011110) && ({row_reg, col_reg}<15'b100100010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100010100100) && ({row_reg, col_reg}<15'b100100010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100010100110) && ({row_reg, col_reg}<15'b100100011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100011011110) && ({row_reg, col_reg}<15'b100100011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100011100100) && ({row_reg, col_reg}<15'b100100011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100011100110) && ({row_reg, col_reg}<15'b100100100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100100011110) && ({row_reg, col_reg}<15'b100100100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100100100100) && ({row_reg, col_reg}<15'b100100100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100100100110) && ({row_reg, col_reg}<15'b100100101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100101011110) && ({row_reg, col_reg}<15'b100100101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100101100100) && ({row_reg, col_reg}<15'b100100101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100101100110) && ({row_reg, col_reg}<15'b100100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100110011110) && ({row_reg, col_reg}<15'b100100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100110100100) && ({row_reg, col_reg}<15'b100100110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100110100110) && ({row_reg, col_reg}<15'b100100111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100100111011110) && ({row_reg, col_reg}<15'b100100111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100100111100100) && ({row_reg, col_reg}<15'b100100111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100100111100110) && ({row_reg, col_reg}<15'b100101000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101000011110) && ({row_reg, col_reg}<15'b100101000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101000100100) && ({row_reg, col_reg}<15'b100101000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101000100110) && ({row_reg, col_reg}<15'b100101001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101001011110) && ({row_reg, col_reg}<15'b100101001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101001100100) && ({row_reg, col_reg}<15'b100101001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101001100110) && ({row_reg, col_reg}<15'b100101010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101010011110) && ({row_reg, col_reg}<15'b100101010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101010100100) && ({row_reg, col_reg}<15'b100101010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101010100110) && ({row_reg, col_reg}<15'b100101011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101011011110) && ({row_reg, col_reg}<15'b100101011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101011100100) && ({row_reg, col_reg}<15'b100101011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101011100110) && ({row_reg, col_reg}<15'b100101100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101100011110) && ({row_reg, col_reg}<15'b100101100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101100100100) && ({row_reg, col_reg}<15'b100101100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101100100110) && ({row_reg, col_reg}<15'b100101101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101101011110) && ({row_reg, col_reg}<15'b100101101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101101100100) && ({row_reg, col_reg}<15'b100101101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101101100110) && ({row_reg, col_reg}<15'b100101110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101110011110) && ({row_reg, col_reg}<15'b100101110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101110100100) && ({row_reg, col_reg}<15'b100101110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101110100110) && ({row_reg, col_reg}<15'b100101111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100101111011110) && ({row_reg, col_reg}<15'b100101111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100101111100100) && ({row_reg, col_reg}<15'b100101111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100101111100110) && ({row_reg, col_reg}<15'b100110000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110000011110) && ({row_reg, col_reg}<15'b100110000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110000100100) && ({row_reg, col_reg}<15'b100110000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110000100110) && ({row_reg, col_reg}<15'b100110001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110001011110) && ({row_reg, col_reg}<15'b100110001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110001100100) && ({row_reg, col_reg}<15'b100110001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110001100110) && ({row_reg, col_reg}<15'b100110010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110010011110) && ({row_reg, col_reg}<15'b100110010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110010100100) && ({row_reg, col_reg}<15'b100110010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110010100110) && ({row_reg, col_reg}<15'b100110011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110011011110) && ({row_reg, col_reg}<15'b100110011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110011100100) && ({row_reg, col_reg}<15'b100110011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110011100110) && ({row_reg, col_reg}<15'b100110100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110100011110) && ({row_reg, col_reg}<15'b100110100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110100100100) && ({row_reg, col_reg}<15'b100110100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110100100110) && ({row_reg, col_reg}<15'b100110101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110101011110) && ({row_reg, col_reg}<15'b100110101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110101100100) && ({row_reg, col_reg}<15'b100110101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110101100110) && ({row_reg, col_reg}<15'b100110110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110110011110) && ({row_reg, col_reg}<15'b100110110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110110100100) && ({row_reg, col_reg}<15'b100110110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110110100110) && ({row_reg, col_reg}<15'b100110111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100110111011110) && ({row_reg, col_reg}<15'b100110111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100110111100100) && ({row_reg, col_reg}<15'b100110111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100110111100110) && ({row_reg, col_reg}<15'b100111000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111000011110) && ({row_reg, col_reg}<15'b100111000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111000100100) && ({row_reg, col_reg}<15'b100111000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111000100110) && ({row_reg, col_reg}<15'b100111001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111001011110) && ({row_reg, col_reg}<15'b100111001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111001100100) && ({row_reg, col_reg}<15'b100111001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111001100110) && ({row_reg, col_reg}<15'b100111010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111010011110) && ({row_reg, col_reg}<15'b100111010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111010100100) && ({row_reg, col_reg}<15'b100111010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111010100110) && ({row_reg, col_reg}<15'b100111011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111011011110) && ({row_reg, col_reg}<15'b100111011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111011100100) && ({row_reg, col_reg}<15'b100111011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111011100110) && ({row_reg, col_reg}<15'b100111100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111100011110) && ({row_reg, col_reg}<15'b100111100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111100100100) && ({row_reg, col_reg}<15'b100111100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111100100110) && ({row_reg, col_reg}<15'b100111101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111101011110) && ({row_reg, col_reg}<15'b100111101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111101100100) && ({row_reg, col_reg}<15'b100111101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111101100110) && ({row_reg, col_reg}<15'b100111110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111110011110) && ({row_reg, col_reg}<15'b100111110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111110100100) && ({row_reg, col_reg}<15'b100111110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111110100110) && ({row_reg, col_reg}<15'b100111111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b100111111011110) && ({row_reg, col_reg}<15'b100111111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b100111111100100) && ({row_reg, col_reg}<15'b100111111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b100111111100110) && ({row_reg, col_reg}<15'b101000000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000000011110) && ({row_reg, col_reg}<15'b101000000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000000100100) && ({row_reg, col_reg}<15'b101000000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000000100110) && ({row_reg, col_reg}<15'b101000001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000001011110) && ({row_reg, col_reg}<15'b101000001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000001100100) && ({row_reg, col_reg}<15'b101000001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000001100110) && ({row_reg, col_reg}<15'b101000010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000010011110) && ({row_reg, col_reg}<15'b101000010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000010100100) && ({row_reg, col_reg}<15'b101000010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000010100110) && ({row_reg, col_reg}<15'b101000011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000011011110) && ({row_reg, col_reg}<15'b101000011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000011100100) && ({row_reg, col_reg}<15'b101000011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000011100110) && ({row_reg, col_reg}<15'b101000100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000100011110) && ({row_reg, col_reg}<15'b101000100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000100100100) && ({row_reg, col_reg}<15'b101000100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000100100110) && ({row_reg, col_reg}<15'b101000101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000101011110) && ({row_reg, col_reg}<15'b101000101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000101100100) && ({row_reg, col_reg}<15'b101000101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000101100110) && ({row_reg, col_reg}<15'b101000110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000110011110) && ({row_reg, col_reg}<15'b101000110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000110100100) && ({row_reg, col_reg}<15'b101000110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000110100110) && ({row_reg, col_reg}<15'b101000111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101000111011110) && ({row_reg, col_reg}<15'b101000111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101000111100100) && ({row_reg, col_reg}<15'b101000111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101000111100110) && ({row_reg, col_reg}<15'b101001000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001000011110) && ({row_reg, col_reg}<15'b101001000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001000100100) && ({row_reg, col_reg}<15'b101001000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001000100110) && ({row_reg, col_reg}<15'b101001001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001001011110) && ({row_reg, col_reg}<15'b101001001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001001100100) && ({row_reg, col_reg}<15'b101001001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001001100110) && ({row_reg, col_reg}<15'b101001010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001010011110) && ({row_reg, col_reg}<15'b101001010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001010100100) && ({row_reg, col_reg}<15'b101001010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001010100110) && ({row_reg, col_reg}<15'b101001011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001011011110) && ({row_reg, col_reg}<15'b101001011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001011100100) && ({row_reg, col_reg}<15'b101001011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001011100110) && ({row_reg, col_reg}<15'b101001100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001100011110) && ({row_reg, col_reg}<15'b101001100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001100100100) && ({row_reg, col_reg}<15'b101001100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001100100110) && ({row_reg, col_reg}<15'b101001101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001101011110) && ({row_reg, col_reg}<15'b101001101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001101100100) && ({row_reg, col_reg}<15'b101001101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001101100110) && ({row_reg, col_reg}<15'b101001110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001110011110) && ({row_reg, col_reg}<15'b101001110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001110100100) && ({row_reg, col_reg}<15'b101001110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001110100110) && ({row_reg, col_reg}<15'b101001111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101001111011110) && ({row_reg, col_reg}<15'b101001111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101001111100100) && ({row_reg, col_reg}<15'b101001111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101001111100110) && ({row_reg, col_reg}<15'b101010000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010000011110) && ({row_reg, col_reg}<15'b101010000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010000100100) && ({row_reg, col_reg}<15'b101010000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010000100110) && ({row_reg, col_reg}<15'b101010001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010001011110) && ({row_reg, col_reg}<15'b101010001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010001100100) && ({row_reg, col_reg}<15'b101010001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010001100110) && ({row_reg, col_reg}<15'b101010010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010010011110) && ({row_reg, col_reg}<15'b101010010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010010100100) && ({row_reg, col_reg}<15'b101010010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010010100110) && ({row_reg, col_reg}<15'b101010011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010011011110) && ({row_reg, col_reg}<15'b101010011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010011100100) && ({row_reg, col_reg}<15'b101010011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010011100110) && ({row_reg, col_reg}<15'b101010100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010100011110) && ({row_reg, col_reg}<15'b101010100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010100100100) && ({row_reg, col_reg}<15'b101010100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010100100110) && ({row_reg, col_reg}<15'b101010101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010101011110) && ({row_reg, col_reg}<15'b101010101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010101100100) && ({row_reg, col_reg}<15'b101010101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010101100110) && ({row_reg, col_reg}<15'b101010110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010110011110) && ({row_reg, col_reg}<15'b101010110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010110100100) && ({row_reg, col_reg}<15'b101010110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010110100110) && ({row_reg, col_reg}<15'b101010111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101010111011110) && ({row_reg, col_reg}<15'b101010111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101010111100100) && ({row_reg, col_reg}<15'b101010111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101010111100110) && ({row_reg, col_reg}<15'b101011000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011000011110) && ({row_reg, col_reg}<15'b101011000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011000100100) && ({row_reg, col_reg}<15'b101011000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011000100110) && ({row_reg, col_reg}<15'b101011001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011001011110) && ({row_reg, col_reg}<15'b101011001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011001100100) && ({row_reg, col_reg}<15'b101011001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011001100110) && ({row_reg, col_reg}<15'b101011010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011010011110) && ({row_reg, col_reg}<15'b101011010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011010100100) && ({row_reg, col_reg}<15'b101011010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011010100110) && ({row_reg, col_reg}<15'b101011011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011011011110) && ({row_reg, col_reg}<15'b101011011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011011100100) && ({row_reg, col_reg}<15'b101011011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011011100110) && ({row_reg, col_reg}<15'b101011100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011100011110) && ({row_reg, col_reg}<15'b101011100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011100100100) && ({row_reg, col_reg}<15'b101011100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011100100110) && ({row_reg, col_reg}<15'b101011101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011101011110) && ({row_reg, col_reg}<15'b101011101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011101100100) && ({row_reg, col_reg}<15'b101011101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011101100110) && ({row_reg, col_reg}<15'b101011110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011110011110) && ({row_reg, col_reg}<15'b101011110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011110100100) && ({row_reg, col_reg}<15'b101011110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011110100110) && ({row_reg, col_reg}<15'b101011111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101011111011110) && ({row_reg, col_reg}<15'b101011111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101011111100100) && ({row_reg, col_reg}<15'b101011111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101011111100110) && ({row_reg, col_reg}<15'b101100000011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100000011110) && ({row_reg, col_reg}<15'b101100000100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100000100100) && ({row_reg, col_reg}<15'b101100000100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100000100110) && ({row_reg, col_reg}<15'b101100001011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100001011110) && ({row_reg, col_reg}<15'b101100001100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100001100100) && ({row_reg, col_reg}<15'b101100001100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100001100110) && ({row_reg, col_reg}<15'b101100010011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100010011110) && ({row_reg, col_reg}<15'b101100010100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100010100100) && ({row_reg, col_reg}<15'b101100010100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100010100110) && ({row_reg, col_reg}<15'b101100011011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100011011110) && ({row_reg, col_reg}<15'b101100011100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100011100100) && ({row_reg, col_reg}<15'b101100011100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100011100110) && ({row_reg, col_reg}<15'b101100100011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100100011110) && ({row_reg, col_reg}<15'b101100100100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100100100100) && ({row_reg, col_reg}<15'b101100100100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100100100110) && ({row_reg, col_reg}<15'b101100101011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100101011110) && ({row_reg, col_reg}<15'b101100101100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100101100100) && ({row_reg, col_reg}<15'b101100101100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100101100110) && ({row_reg, col_reg}<15'b101100110011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100110011110) && ({row_reg, col_reg}<15'b101100110100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100110100100) && ({row_reg, col_reg}<15'b101100110100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100110100110) && ({row_reg, col_reg}<15'b101100111011110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=15'b101100111011110) && ({row_reg, col_reg}<15'b101100111100100)) color_data = 12'b011010110011;
		if(({row_reg, col_reg}>=15'b101100111100100) && ({row_reg, col_reg}<15'b101100111100110)) color_data = 12'b010010100001;

		if(({row_reg, col_reg}>=15'b101100111100110) && ({row_reg, col_reg}<=15'b101100111101111)) color_data = 12'b000000000000;
	end
endmodule