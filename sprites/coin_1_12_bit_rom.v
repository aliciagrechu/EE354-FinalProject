module coin_1_rom
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


		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0001001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001001100) && ({row_reg, col_reg}<10'b0001010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0001010010) && ({row_reg, col_reg}<10'b0001010100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0001010100) && ({row_reg, col_reg}<10'b0001101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001101100) && ({row_reg, col_reg}<10'b0001110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0001110010) && ({row_reg, col_reg}<10'b0001110100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0001110100) && ({row_reg, col_reg}<10'b0010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010001000) && ({row_reg, col_reg}<10'b0010001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0010001100) && ({row_reg, col_reg}<10'b0010011000)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0010011000) && ({row_reg, col_reg}<10'b0010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010101000) && ({row_reg, col_reg}<10'b0010101100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0010101100) && ({row_reg, col_reg}<10'b0010111000)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0010111000) && ({row_reg, col_reg}<10'b0011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011000110) && ({row_reg, col_reg}<10'b0011001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0011001000) && ({row_reg, col_reg}<10'b0011001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0011001100) && ({row_reg, col_reg}<10'b0011010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0011010010) && ({row_reg, col_reg}<10'b0011011010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0011011010) && ({row_reg, col_reg}<10'b0011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011100110) && ({row_reg, col_reg}<10'b0011101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0011101000) && ({row_reg, col_reg}<10'b0011101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0011101100) && ({row_reg, col_reg}<10'b0011110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0011110010) && ({row_reg, col_reg}<10'b0011111010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0011111010) && ({row_reg, col_reg}<10'b0100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100000110) && ({row_reg, col_reg}<10'b0100001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0100001000) && ({row_reg, col_reg}<10'b0100001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0100001100) && ({row_reg, col_reg}<10'b0100001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0100001110) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0100010010) && ({row_reg, col_reg}<10'b0100010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100010100) && ({row_reg, col_reg}<10'b0100011010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0100011010) && ({row_reg, col_reg}<10'b0100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0100101000) && ({row_reg, col_reg}<10'b0100101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0100101100) && ({row_reg, col_reg}<10'b0100101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0100101110) && ({row_reg, col_reg}<10'b0100110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0100110010) && ({row_reg, col_reg}<10'b0100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100110100) && ({row_reg, col_reg}<10'b0100111010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0100111010) && ({row_reg, col_reg}<10'b0101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101000100) && ({row_reg, col_reg}<10'b0101000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0101000110) && ({row_reg, col_reg}<10'b0101001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0101001100) && ({row_reg, col_reg}<10'b0101001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0101001110) && ({row_reg, col_reg}<10'b0101010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0101010010) && ({row_reg, col_reg}<10'b0101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101010100) && ({row_reg, col_reg}<10'b0101011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0101011100) && ({row_reg, col_reg}<10'b0101100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101100100) && ({row_reg, col_reg}<10'b0101100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0101100110) && ({row_reg, col_reg}<10'b0101101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0101101100) && ({row_reg, col_reg}<10'b0101101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0101101110) && ({row_reg, col_reg}<10'b0101110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0101110010) && ({row_reg, col_reg}<10'b0101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101110100) && ({row_reg, col_reg}<10'b0101111100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0101111100) && ({row_reg, col_reg}<10'b0110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110000100) && ({row_reg, col_reg}<10'b0110000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0110000110) && ({row_reg, col_reg}<10'b0110001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0110001100) && ({row_reg, col_reg}<10'b0110001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0110001110) && ({row_reg, col_reg}<10'b0110010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0110010010) && ({row_reg, col_reg}<10'b0110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110010100) && ({row_reg, col_reg}<10'b0110011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0110011100) && ({row_reg, col_reg}<10'b0110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110100100) && ({row_reg, col_reg}<10'b0110100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0110100110) && ({row_reg, col_reg}<10'b0110101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0110101100) && ({row_reg, col_reg}<10'b0110101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0110101110) && ({row_reg, col_reg}<10'b0110110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0110110010) && ({row_reg, col_reg}<10'b0110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110110100) && ({row_reg, col_reg}<10'b0110111100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0110111100) && ({row_reg, col_reg}<10'b0111000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111000100) && ({row_reg, col_reg}<10'b0111000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0111000110) && ({row_reg, col_reg}<10'b0111001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0111001100) && ({row_reg, col_reg}<10'b0111001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0111001110) && ({row_reg, col_reg}<10'b0111010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0111010010) && ({row_reg, col_reg}<10'b0111010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111010100) && ({row_reg, col_reg}<10'b0111011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0111011100) && ({row_reg, col_reg}<10'b0111100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111100100) && ({row_reg, col_reg}<10'b0111100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0111100110) && ({row_reg, col_reg}<10'b0111101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0111101100) && ({row_reg, col_reg}<10'b0111101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b0111101110) && ({row_reg, col_reg}<10'b0111110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b0111110010) && ({row_reg, col_reg}<10'b0111110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111110100) && ({row_reg, col_reg}<10'b0111111100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b0111111100) && ({row_reg, col_reg}<10'b1000000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000000100) && ({row_reg, col_reg}<10'b1000000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1000000110) && ({row_reg, col_reg}<10'b1000001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1000001100) && ({row_reg, col_reg}<10'b1000001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1000001110) && ({row_reg, col_reg}<10'b1000010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1000010010) && ({row_reg, col_reg}<10'b1000010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000010100) && ({row_reg, col_reg}<10'b1000011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1000011100) && ({row_reg, col_reg}<10'b1000100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000100100) && ({row_reg, col_reg}<10'b1000100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1000100110) && ({row_reg, col_reg}<10'b1000101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1000101100) && ({row_reg, col_reg}<10'b1000101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1000101110) && ({row_reg, col_reg}<10'b1000110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1000110010) && ({row_reg, col_reg}<10'b1000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000110100) && ({row_reg, col_reg}<10'b1000111100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1000111100) && ({row_reg, col_reg}<10'b1001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001000100) && ({row_reg, col_reg}<10'b1001000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1001000110) && ({row_reg, col_reg}<10'b1001001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1001001100) && ({row_reg, col_reg}<10'b1001001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1001001110) && ({row_reg, col_reg}<10'b1001010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1001010010) && ({row_reg, col_reg}<10'b1001010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001010100) && ({row_reg, col_reg}<10'b1001011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1001011100) && ({row_reg, col_reg}<10'b1001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001100100) && ({row_reg, col_reg}<10'b1001100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1001100110) && ({row_reg, col_reg}<10'b1001101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1001101100) && ({row_reg, col_reg}<10'b1001101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1001101110) && ({row_reg, col_reg}<10'b1001110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1001110010) && ({row_reg, col_reg}<10'b1001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001110100) && ({row_reg, col_reg}<10'b1001111100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1001111100) && ({row_reg, col_reg}<10'b1010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010000100) && ({row_reg, col_reg}<10'b1010000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1010000110) && ({row_reg, col_reg}<10'b1010001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1010001100) && ({row_reg, col_reg}<10'b1010001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1010001110) && ({row_reg, col_reg}<10'b1010010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1010010010) && ({row_reg, col_reg}<10'b1010010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010010100) && ({row_reg, col_reg}<10'b1010011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1010011100) && ({row_reg, col_reg}<10'b1010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010100100) && ({row_reg, col_reg}<10'b1010100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1010100110) && ({row_reg, col_reg}<10'b1010101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1010101100) && ({row_reg, col_reg}<10'b1010101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1010101110) && ({row_reg, col_reg}<10'b1010110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1010110010) && ({row_reg, col_reg}<10'b1010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010110100) && ({row_reg, col_reg}<10'b1010111100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1010111100) && ({row_reg, col_reg}<10'b1011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011000110) && ({row_reg, col_reg}<10'b1011001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1011001000) && ({row_reg, col_reg}<10'b1011001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1011001100) && ({row_reg, col_reg}<10'b1011001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1011001110) && ({row_reg, col_reg}<10'b1011010010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1011010010) && ({row_reg, col_reg}<10'b1011010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011010100) && ({row_reg, col_reg}<10'b1011011010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1011011010) && ({row_reg, col_reg}<10'b1011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011100110) && ({row_reg, col_reg}<10'b1011101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1011101000) && ({row_reg, col_reg}<10'b1011101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1011101100) && ({row_reg, col_reg}<10'b1011101110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1011101110) && ({row_reg, col_reg}<10'b1011110010)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1011110010) && ({row_reg, col_reg}<10'b1011110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011110100) && ({row_reg, col_reg}<10'b1011111010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1011111010) && ({row_reg, col_reg}<10'b1100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100000110) && ({row_reg, col_reg}<10'b1100001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1100001000) && ({row_reg, col_reg}<10'b1100001100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1100001100) && ({row_reg, col_reg}<10'b1100010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100010100) && ({row_reg, col_reg}<10'b1100011010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1100011010) && ({row_reg, col_reg}<10'b1100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100100110) && ({row_reg, col_reg}<10'b1100101000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1100101000) && ({row_reg, col_reg}<10'b1100101100)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=10'b1100101100) && ({row_reg, col_reg}<10'b1100110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100110100) && ({row_reg, col_reg}<10'b1100111010)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1100111010) && ({row_reg, col_reg}<10'b1101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101001000) && ({row_reg, col_reg}<10'b1101001010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1101001010) && ({row_reg, col_reg}<10'b1101011000)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1101011000) && ({row_reg, col_reg}<10'b1101101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101101000) && ({row_reg, col_reg}<10'b1101101010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=10'b1101101010) && ({row_reg, col_reg}<10'b1101111000)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1101111000) && ({row_reg, col_reg}<10'b1110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110001100) && ({row_reg, col_reg}<10'b1110010100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=10'b1110010100) && ({row_reg, col_reg}<10'b1110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110101100) && ({row_reg, col_reg}<10'b1110110100)) color_data = 12'b111010110001;



		if(({row_reg, col_reg}>=10'b1110110100) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b000000000000;
	end
endmodule