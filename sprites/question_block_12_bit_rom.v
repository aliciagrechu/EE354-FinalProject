module question_block_rom
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
		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000000010) && ({row_reg, col_reg}<10'b0000011110)) color_data = 12'b100001010011;

		if(({row_reg, col_reg}>=10'b0000011110) && ({row_reg, col_reg}<10'b0000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000100010) && ({row_reg, col_reg}<10'b0000111110)) color_data = 12'b100001010011;

		if(({row_reg, col_reg}>=10'b0000111110) && ({row_reg, col_reg}<10'b0001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001000000) && ({row_reg, col_reg}<10'b0001000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0001000010) && ({row_reg, col_reg}<10'b0001011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0001011110) && ({row_reg, col_reg}<10'b0001100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001100000) && ({row_reg, col_reg}<10'b0001100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0001100010) && ({row_reg, col_reg}<10'b0001111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0001111110) && ({row_reg, col_reg}<10'b0010000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010000000) && ({row_reg, col_reg}<10'b0010000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0010000010) && ({row_reg, col_reg}<10'b0010000110)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0010000110) && ({row_reg, col_reg}<10'b0010001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010001000) && ({row_reg, col_reg}<10'b0010011010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0010011010) && ({row_reg, col_reg}<10'b0010011100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010011100) && ({row_reg, col_reg}<10'b0010011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0010011110) && ({row_reg, col_reg}<10'b0010100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010100000) && ({row_reg, col_reg}<10'b0010100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0010100010) && ({row_reg, col_reg}<10'b0010100110)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0010100110) && ({row_reg, col_reg}<10'b0010101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010101000) && ({row_reg, col_reg}<10'b0010111010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0010111010) && ({row_reg, col_reg}<10'b0010111100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010111100) && ({row_reg, col_reg}<10'b0010111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0010111110) && ({row_reg, col_reg}<10'b0011000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011000000) && ({row_reg, col_reg}<10'b0011000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0011000010) && ({row_reg, col_reg}<10'b0011001100)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0011001100) && ({row_reg, col_reg}<10'b0011010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011010010) && ({row_reg, col_reg}<10'b0011011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0011011110) && ({row_reg, col_reg}<10'b0011100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011100000) && ({row_reg, col_reg}<10'b0011100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0011100010) && ({row_reg, col_reg}<10'b0011101100)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0011101100) && ({row_reg, col_reg}<10'b0011110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011110010) && ({row_reg, col_reg}<10'b0011111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0011111110) && ({row_reg, col_reg}<10'b0100000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100000000) && ({row_reg, col_reg}<10'b0100000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0100000010) && ({row_reg, col_reg}<10'b0100001010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0100001010) && ({row_reg, col_reg}<10'b0100010100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100010100) && ({row_reg, col_reg}<10'b0100011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0100011110) && ({row_reg, col_reg}<10'b0100100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100100000) && ({row_reg, col_reg}<10'b0100100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0100100010) && ({row_reg, col_reg}<10'b0100101010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0100101010) && ({row_reg, col_reg}<10'b0100110100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100110100) && ({row_reg, col_reg}<10'b0100111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0100111110) && ({row_reg, col_reg}<10'b0101000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101000000) && ({row_reg, col_reg}<10'b0101000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0101000010) && ({row_reg, col_reg}<10'b0101001000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0101001000) && ({row_reg, col_reg}<10'b0101001100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101001100) && ({row_reg, col_reg}<10'b0101010010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101010010) && ({row_reg, col_reg}<10'b0101010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101010110) && ({row_reg, col_reg}<10'b0101011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0101011110) && ({row_reg, col_reg}<10'b0101100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101100000) && ({row_reg, col_reg}<10'b0101100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0101100010) && ({row_reg, col_reg}<10'b0101101000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0101101000) && ({row_reg, col_reg}<10'b0101101100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101101100) && ({row_reg, col_reg}<10'b0101110010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101110010) && ({row_reg, col_reg}<10'b0101110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101110110) && ({row_reg, col_reg}<10'b0101111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0101111110) && ({row_reg, col_reg}<10'b0110000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110000000) && ({row_reg, col_reg}<10'b0110000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0110000010) && ({row_reg, col_reg}<10'b0110001000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0110001000) && ({row_reg, col_reg}<10'b0110001100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110001100) && ({row_reg, col_reg}<10'b0110001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110001110) && ({row_reg, col_reg}<10'b0110010010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0110010010) && ({row_reg, col_reg}<10'b0110010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110010110) && ({row_reg, col_reg}<10'b0110011000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110011000) && ({row_reg, col_reg}<10'b0110011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0110011110) && ({row_reg, col_reg}<10'b0110100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110100000) && ({row_reg, col_reg}<10'b0110100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0110100010) && ({row_reg, col_reg}<10'b0110101000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0110101000) && ({row_reg, col_reg}<10'b0110101100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110101100) && ({row_reg, col_reg}<10'b0110101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110101110) && ({row_reg, col_reg}<10'b0110110010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0110110010) && ({row_reg, col_reg}<10'b0110110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110110110) && ({row_reg, col_reg}<10'b0110111000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110111000) && ({row_reg, col_reg}<10'b0110111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0110111110) && ({row_reg, col_reg}<10'b0111000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111000000) && ({row_reg, col_reg}<10'b0111000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0111000010) && ({row_reg, col_reg}<10'b0111001010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0111001010) && ({row_reg, col_reg}<10'b0111001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111001110) && ({row_reg, col_reg}<10'b0111010010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0111010010) && ({row_reg, col_reg}<10'b0111010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111010110) && ({row_reg, col_reg}<10'b0111011000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111011000) && ({row_reg, col_reg}<10'b0111011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0111011110) && ({row_reg, col_reg}<10'b0111100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111100000) && ({row_reg, col_reg}<10'b0111100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b0111100010) && ({row_reg, col_reg}<10'b0111101010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0111101010) && ({row_reg, col_reg}<10'b0111101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111101110) && ({row_reg, col_reg}<10'b0111110010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b0111110010) && ({row_reg, col_reg}<10'b0111110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111110110) && ({row_reg, col_reg}<10'b0111111000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111111000) && ({row_reg, col_reg}<10'b0111111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b0111111110) && ({row_reg, col_reg}<10'b1000000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000000000) && ({row_reg, col_reg}<10'b1000000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1000000010) && ({row_reg, col_reg}<10'b1000010000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1000010000) && ({row_reg, col_reg}<10'b1000010100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000010100) && ({row_reg, col_reg}<10'b1000011000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000011000) && ({row_reg, col_reg}<10'b1000011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1000011110) && ({row_reg, col_reg}<10'b1000100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000100000) && ({row_reg, col_reg}<10'b1000100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1000100010) && ({row_reg, col_reg}<10'b1000110000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1000110000) && ({row_reg, col_reg}<10'b1000110100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000110100) && ({row_reg, col_reg}<10'b1000111000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000111000) && ({row_reg, col_reg}<10'b1000111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1000111110) && ({row_reg, col_reg}<10'b1001000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001000000) && ({row_reg, col_reg}<10'b1001000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1001000010) && ({row_reg, col_reg}<10'b1001010000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1001010000) && ({row_reg, col_reg}<10'b1001010100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1001010100) && ({row_reg, col_reg}<10'b1001010110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001010110) && ({row_reg, col_reg}<10'b1001011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1001011110) && ({row_reg, col_reg}<10'b1001100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001100000) && ({row_reg, col_reg}<10'b1001100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1001100010) && ({row_reg, col_reg}<10'b1001110000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1001110000) && ({row_reg, col_reg}<10'b1001110100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1001110100) && ({row_reg, col_reg}<10'b1001110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001110110) && ({row_reg, col_reg}<10'b1001111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1001111110) && ({row_reg, col_reg}<10'b1010000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010000000) && ({row_reg, col_reg}<10'b1010000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1010000010) && ({row_reg, col_reg}<10'b1010010010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1010010010) && ({row_reg, col_reg}<10'b1010010110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010010110) && ({row_reg, col_reg}<10'b1010011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1010011110) && ({row_reg, col_reg}<10'b1010100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010100000) && ({row_reg, col_reg}<10'b1010100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1010100010) && ({row_reg, col_reg}<10'b1010110010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1010110010) && ({row_reg, col_reg}<10'b1010110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010110110) && ({row_reg, col_reg}<10'b1010111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1010111110) && ({row_reg, col_reg}<10'b1011000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011000000) && ({row_reg, col_reg}<10'b1011000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1011000010) && ({row_reg, col_reg}<10'b1011010000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1011010000) && ({row_reg, col_reg}<10'b1011010100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011010100) && ({row_reg, col_reg}<10'b1011011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1011011110) && ({row_reg, col_reg}<10'b1011100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011100000) && ({row_reg, col_reg}<10'b1011100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1011100010) && ({row_reg, col_reg}<10'b1011110000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1011110000) && ({row_reg, col_reg}<10'b1011110100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011110100) && ({row_reg, col_reg}<10'b1011111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1011111110) && ({row_reg, col_reg}<10'b1100000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100000000) && ({row_reg, col_reg}<10'b1100000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1100000010) && ({row_reg, col_reg}<10'b1100010000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1100010000) && ({row_reg, col_reg}<10'b1100010100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1100010100) && ({row_reg, col_reg}<10'b1100010110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100010110) && ({row_reg, col_reg}<10'b1100011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1100011110) && ({row_reg, col_reg}<10'b1100100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100100000) && ({row_reg, col_reg}<10'b1100100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1100100010) && ({row_reg, col_reg}<10'b1100110000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1100110000) && ({row_reg, col_reg}<10'b1100110100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1100110100) && ({row_reg, col_reg}<10'b1100110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100110110) && ({row_reg, col_reg}<10'b1100111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1100111110) && ({row_reg, col_reg}<10'b1101000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101000000) && ({row_reg, col_reg}<10'b1101000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1101000010) && ({row_reg, col_reg}<10'b1101000110)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1101000110) && ({row_reg, col_reg}<10'b1101001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101001000) && ({row_reg, col_reg}<10'b1101010010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1101010010) && ({row_reg, col_reg}<10'b1101010110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101010110) && ({row_reg, col_reg}<10'b1101011010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1101011010) && ({row_reg, col_reg}<10'b1101011100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101011100) && ({row_reg, col_reg}<10'b1101011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1101011110) && ({row_reg, col_reg}<10'b1101100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101100000) && ({row_reg, col_reg}<10'b1101100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1101100010) && ({row_reg, col_reg}<10'b1101100110)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1101100110) && ({row_reg, col_reg}<10'b1101101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101101000) && ({row_reg, col_reg}<10'b1101110010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1101110010) && ({row_reg, col_reg}<10'b1101110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101110110) && ({row_reg, col_reg}<10'b1101111010)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=10'b1101111010) && ({row_reg, col_reg}<10'b1101111100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101111100) && ({row_reg, col_reg}<10'b1101111110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1101111110) && ({row_reg, col_reg}<10'b1110000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110000000) && ({row_reg, col_reg}<10'b1110000010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1110000010) && ({row_reg, col_reg}<10'b1110011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}>=10'b1110011110) && ({row_reg, col_reg}<10'b1110100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110100000) && ({row_reg, col_reg}<10'b1110100010)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=10'b1110100010) && ({row_reg, col_reg}<10'b1110111110)) color_data = 12'b110110010000;



		if(({row_reg, col_reg}>=10'b1110111110) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b010000100001;
	end
endmodule