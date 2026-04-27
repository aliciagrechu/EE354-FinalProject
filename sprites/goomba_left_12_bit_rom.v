module goomba_left_rom
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
		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000001100) && ({row_reg, col_reg}<10'b0000010100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0000010100) && ({row_reg, col_reg}<10'b0000101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000101100) && ({row_reg, col_reg}<10'b0000110100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0000110100) && ({row_reg, col_reg}<10'b0001001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001001010) && ({row_reg, col_reg}<10'b0001010110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0001010110) && ({row_reg, col_reg}<10'b0001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001101010) && ({row_reg, col_reg}<10'b0001110110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0001110110) && ({row_reg, col_reg}<10'b0010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010001000) && ({row_reg, col_reg}<10'b0010011000)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0010011000) && ({row_reg, col_reg}<10'b0010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010101000) && ({row_reg, col_reg}<10'b0010111000)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0010111000) && ({row_reg, col_reg}<10'b0011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011000110) && ({row_reg, col_reg}<10'b0011001000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011001000) && ({row_reg, col_reg}<10'b0011001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011001100) && ({row_reg, col_reg}<10'b0011010100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011010100) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011011000) && ({row_reg, col_reg}<10'b0011011010)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0011011010) && ({row_reg, col_reg}<10'b0011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011100110) && ({row_reg, col_reg}<10'b0011101000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011101000) && ({row_reg, col_reg}<10'b0011101100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011101100) && ({row_reg, col_reg}<10'b0011110100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011110100) && ({row_reg, col_reg}<10'b0011111000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011111000) && ({row_reg, col_reg}<10'b0011111010)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0011111010) && ({row_reg, col_reg}<10'b0100000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100000100) && ({row_reg, col_reg}<10'b0100001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100001010) && ({row_reg, col_reg}<10'b0100001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100001110) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100010010) && ({row_reg, col_reg}<10'b0100010110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100010110) && ({row_reg, col_reg}<10'b0100011100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0100011100) && ({row_reg, col_reg}<10'b0100100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100100100) && ({row_reg, col_reg}<10'b0100101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100101010) && ({row_reg, col_reg}<10'b0100101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100101110) && ({row_reg, col_reg}<10'b0100110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100110010) && ({row_reg, col_reg}<10'b0100110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100110110) && ({row_reg, col_reg}<10'b0100111100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0100111100) && ({row_reg, col_reg}<10'b0101000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101000100) && ({row_reg, col_reg}<10'b0101001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101001010) && ({row_reg, col_reg}<10'b0101001100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0101001100) && ({row_reg, col_reg}<10'b0101010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101010100) && ({row_reg, col_reg}<10'b0101010110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0101010110) && ({row_reg, col_reg}<10'b0101011100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0101011100) && ({row_reg, col_reg}<10'b0101100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101100100) && ({row_reg, col_reg}<10'b0101101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101101010) && ({row_reg, col_reg}<10'b0101101100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0101101100) && ({row_reg, col_reg}<10'b0101110100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101110100) && ({row_reg, col_reg}<10'b0101110110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0101110110) && ({row_reg, col_reg}<10'b0101111100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0101111100) && ({row_reg, col_reg}<10'b0110000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110000010) && ({row_reg, col_reg}<10'b0110001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110001010) && ({row_reg, col_reg}<10'b0110001100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0110001100) && ({row_reg, col_reg}<10'b0110001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110001110) && ({row_reg, col_reg}<10'b0110010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110010010) && ({row_reg, col_reg}<10'b0110010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110010100) && ({row_reg, col_reg}<10'b0110010110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0110010110) && ({row_reg, col_reg}<10'b0110011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0110011110) && ({row_reg, col_reg}<10'b0110100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110100010) && ({row_reg, col_reg}<10'b0110101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110101010) && ({row_reg, col_reg}<10'b0110101100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0110101100) && ({row_reg, col_reg}<10'b0110101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110101110) && ({row_reg, col_reg}<10'b0110110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110110010) && ({row_reg, col_reg}<10'b0110110100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110110100) && ({row_reg, col_reg}<10'b0110110110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0110110110) && ({row_reg, col_reg}<10'b0110111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0110111110) && ({row_reg, col_reg}<10'b0111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111000010) && ({row_reg, col_reg}<10'b0111001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111001010) && ({row_reg, col_reg}<10'b0111001110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0111001110) && ({row_reg, col_reg}<10'b0111010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111010010) && ({row_reg, col_reg}<10'b0111010110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0111010110) && ({row_reg, col_reg}<10'b0111011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0111011110) && ({row_reg, col_reg}<10'b0111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111100010) && ({row_reg, col_reg}<10'b0111101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111101010) && ({row_reg, col_reg}<10'b0111101110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0111101110) && ({row_reg, col_reg}<10'b0111110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111110010) && ({row_reg, col_reg}<10'b0111110110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0111110110) && ({row_reg, col_reg}<10'b0111111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0111111110) && ({row_reg, col_reg}<10'b1000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000000010) && ({row_reg, col_reg}<10'b1000011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1000011110) && ({row_reg, col_reg}<10'b1000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000100010) && ({row_reg, col_reg}<10'b1000111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1000111110) && ({row_reg, col_reg}<10'b1001000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001000010) && ({row_reg, col_reg}<10'b1001011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1001011110) && ({row_reg, col_reg}<10'b1001100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001100010) && ({row_reg, col_reg}<10'b1001111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1001111110) && ({row_reg, col_reg}<10'b1010000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010000100) && ({row_reg, col_reg}<10'b1010001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010001010) && ({row_reg, col_reg}<10'b1010010110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1010010110) && ({row_reg, col_reg}<10'b1010011100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1010011100) && ({row_reg, col_reg}<10'b1010100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010100100) && ({row_reg, col_reg}<10'b1010101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010101010) && ({row_reg, col_reg}<10'b1010110110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1010110110) && ({row_reg, col_reg}<10'b1010111100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1010111100) && ({row_reg, col_reg}<10'b1011000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011000100) && ({row_reg, col_reg}<10'b1011001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011001000) && ({row_reg, col_reg}<10'b1011011000)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b1011011000) && ({row_reg, col_reg}<10'b1011100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011100100) && ({row_reg, col_reg}<10'b1011101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011101000) && ({row_reg, col_reg}<10'b1011111000)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b1011111000) && ({row_reg, col_reg}<10'b1100000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100000010) && ({row_reg, col_reg}<10'b1100001010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100001010) && ({row_reg, col_reg}<10'b1100010110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1100010110) && ({row_reg, col_reg}<10'b1100011010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1100011010) && ({row_reg, col_reg}<10'b1100100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100100010) && ({row_reg, col_reg}<10'b1100101010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100101010) && ({row_reg, col_reg}<10'b1100110110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1100110110) && ({row_reg, col_reg}<10'b1100111010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1100111010) && ({row_reg, col_reg}<10'b1101000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101000010) && ({row_reg, col_reg}<10'b1101001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101001100) && ({row_reg, col_reg}<10'b1101010100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1101010100) && ({row_reg, col_reg}<10'b1101011010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1101011010) && ({row_reg, col_reg}<10'b1101100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101100010) && ({row_reg, col_reg}<10'b1101101100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101101100) && ({row_reg, col_reg}<10'b1101110100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1101110100) && ({row_reg, col_reg}<10'b1101111010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1101111010) && ({row_reg, col_reg}<10'b1110000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110000100) && ({row_reg, col_reg}<10'b1110001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110001110) && ({row_reg, col_reg}<10'b1110010010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1110010010) && ({row_reg, col_reg}<10'b1110011000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1110011000) && ({row_reg, col_reg}<10'b1110100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110100100) && ({row_reg, col_reg}<10'b1110101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110101110) && ({row_reg, col_reg}<10'b1110110010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1110110010) && ({row_reg, col_reg}<10'b1110111000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1110111000) && ({row_reg, col_reg}<10'b1111000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111000110) && ({row_reg, col_reg}<10'b1111001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1111001110) && ({row_reg, col_reg}<10'b1111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111010000) && ({row_reg, col_reg}<10'b1111010110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1111010110) && ({row_reg, col_reg}<10'b1111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111100110) && ({row_reg, col_reg}<10'b1111101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1111101110) && ({row_reg, col_reg}<10'b1111110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111110000) && ({row_reg, col_reg}<10'b1111110110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1111110110) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b000000000000;
	end
endmodule