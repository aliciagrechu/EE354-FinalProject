module mario_walk_left_rom
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
		if(({row_reg, col_reg}>=10'b0000001100) && ({row_reg, col_reg}<10'b0000010110)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0000010110) && ({row_reg, col_reg}<10'b0000101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000101100) && ({row_reg, col_reg}<10'b0000110110)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0000110110) && ({row_reg, col_reg}<10'b0001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001001000) && ({row_reg, col_reg}<10'b0001011000)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0001011000) && ({row_reg, col_reg}<10'b0001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001101000) && ({row_reg, col_reg}<10'b0001111000)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0001111000) && ({row_reg, col_reg}<10'b0010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010001100) && ({row_reg, col_reg}<10'b0010001110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010001110) && ({row_reg, col_reg}<10'b0010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010010000) && ({row_reg, col_reg}<10'b0010010010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010010010) && ({row_reg, col_reg}<10'b0010011000)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0010011000) && ({row_reg, col_reg}<10'b0010101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010101100) && ({row_reg, col_reg}<10'b0010101110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010101110) && ({row_reg, col_reg}<10'b0010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010110000) && ({row_reg, col_reg}<10'b0010110010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010110010) && ({row_reg, col_reg}<10'b0010111000)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0010111000) && ({row_reg, col_reg}<10'b0011001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011001000) && ({row_reg, col_reg}<10'b0011001110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011001110) && ({row_reg, col_reg}<10'b0011010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011010000) && ({row_reg, col_reg}<10'b0011010100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011010100) && ({row_reg, col_reg}<10'b0011010110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0011010110) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011011000) && ({row_reg, col_reg}<10'b0011011010)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0011011010) && ({row_reg, col_reg}<10'b0011101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011101000) && ({row_reg, col_reg}<10'b0011101110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011101110) && ({row_reg, col_reg}<10'b0011110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011110000) && ({row_reg, col_reg}<10'b0011110100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011110100) && ({row_reg, col_reg}<10'b0011110110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0011110110) && ({row_reg, col_reg}<10'b0011111000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011111000) && ({row_reg, col_reg}<10'b0011111010)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0011111010) && ({row_reg, col_reg}<10'b0100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100000110) && ({row_reg, col_reg}<10'b0100001100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100001100) && ({row_reg, col_reg}<10'b0100001110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100001110) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100010010) && ({row_reg, col_reg}<10'b0100010110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100010110) && ({row_reg, col_reg}<10'b0100011000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100011000) && ({row_reg, col_reg}<10'b0100011010)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0100011010) && ({row_reg, col_reg}<10'b0100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100101100) && ({row_reg, col_reg}<10'b0100101110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100101110) && ({row_reg, col_reg}<10'b0100110010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100110010) && ({row_reg, col_reg}<10'b0100110110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100110110) && ({row_reg, col_reg}<10'b0100111000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100111000) && ({row_reg, col_reg}<10'b0100111010)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0100111010) && ({row_reg, col_reg}<10'b0101001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101001000) && ({row_reg, col_reg}<10'b0101010000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0101010000) && ({row_reg, col_reg}<10'b0101010110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0101010110) && ({row_reg, col_reg}<10'b0101011010)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0101011010) && ({row_reg, col_reg}<10'b0101101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101101000) && ({row_reg, col_reg}<10'b0101110000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0101110000) && ({row_reg, col_reg}<10'b0101110110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0101110110) && ({row_reg, col_reg}<10'b0101111010)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0101111010) && ({row_reg, col_reg}<10'b0110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110001100) && ({row_reg, col_reg}<10'b0110010110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b0110010110) && ({row_reg, col_reg}<10'b0110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110101100) && ({row_reg, col_reg}<10'b0110110110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b0110110110) && ({row_reg, col_reg}<10'b0111001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111001010) && ({row_reg, col_reg}<10'b0111001110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111001110) && ({row_reg, col_reg}<10'b0111010000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111010000) && ({row_reg, col_reg}<10'b0111010010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111010010) && ({row_reg, col_reg}<10'b0111010100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111010100) && ({row_reg, col_reg}<10'b0111011000)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0111011000) && ({row_reg, col_reg}<10'b0111101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111101010) && ({row_reg, col_reg}<10'b0111101110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111101110) && ({row_reg, col_reg}<10'b0111110000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111110000) && ({row_reg, col_reg}<10'b0111110010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111110010) && ({row_reg, col_reg}<10'b0111110100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111110100) && ({row_reg, col_reg}<10'b0111111000)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0111111000) && ({row_reg, col_reg}<10'b1000000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000000110) && ({row_reg, col_reg}<10'b1000001000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b1000001000) && ({row_reg, col_reg}<10'b1000001110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000001110) && ({row_reg, col_reg}<10'b1000010000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000010000) && ({row_reg, col_reg}<10'b1000010010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000010010) && ({row_reg, col_reg}<10'b1000010100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000010100) && ({row_reg, col_reg}<10'b1000011010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b1000011010) && ({row_reg, col_reg}<10'b1000100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000100110) && ({row_reg, col_reg}<10'b1000101000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b1000101000) && ({row_reg, col_reg}<10'b1000101110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000101110) && ({row_reg, col_reg}<10'b1000110000)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000110000) && ({row_reg, col_reg}<10'b1000110010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000110010) && ({row_reg, col_reg}<10'b1000110100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000110100) && ({row_reg, col_reg}<10'b1000111010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b1000111010) && ({row_reg, col_reg}<10'b1001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001000100) && ({row_reg, col_reg}<10'b1001001010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b1001001010) && ({row_reg, col_reg}<10'b1001001110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1001001110) && ({row_reg, col_reg}<10'b1001010000)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1001010000) && ({row_reg, col_reg}<10'b1001010010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1001010010) && ({row_reg, col_reg}<10'b1001010100)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1001010100) && ({row_reg, col_reg}<10'b1001011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b1001011100) && ({row_reg, col_reg}<10'b1001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001100100) && ({row_reg, col_reg}<10'b1001101010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b1001101010) && ({row_reg, col_reg}<10'b1001101110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1001101110) && ({row_reg, col_reg}<10'b1001110000)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1001110000) && ({row_reg, col_reg}<10'b1001110010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1001110010) && ({row_reg, col_reg}<10'b1001110100)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1001110100) && ({row_reg, col_reg}<10'b1001111100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b1001111100) && ({row_reg, col_reg}<10'b1010000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010000110) && ({row_reg, col_reg}<10'b1010001010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b1010001010) && ({row_reg, col_reg}<10'b1010001100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1010001100) && ({row_reg, col_reg}<10'b1010010110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1010010110) && ({row_reg, col_reg}<10'b1010011000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1010011000) && ({row_reg, col_reg}<10'b1010011100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b1010011100) && ({row_reg, col_reg}<10'b1010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010100110) && ({row_reg, col_reg}<10'b1010101010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b1010101010) && ({row_reg, col_reg}<10'b1010101100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1010101100) && ({row_reg, col_reg}<10'b1010110110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1010110110) && ({row_reg, col_reg}<10'b1010111000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1010111000) && ({row_reg, col_reg}<10'b1010111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b1010111100) && ({row_reg, col_reg}<10'b1011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011001100) && ({row_reg, col_reg}<10'b1011010110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1011010110) && ({row_reg, col_reg}<10'b1011011100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b1011011100) && ({row_reg, col_reg}<10'b1011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011101100) && ({row_reg, col_reg}<10'b1011110110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1011110110) && ({row_reg, col_reg}<10'b1011111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b1011111100) && ({row_reg, col_reg}<10'b1100001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100001010) && ({row_reg, col_reg}<10'b1100010110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1100010110) && ({row_reg, col_reg}<10'b1100011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100011000) && ({row_reg, col_reg}<10'b1100011100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b1100011100) && ({row_reg, col_reg}<10'b1100101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100101010) && ({row_reg, col_reg}<10'b1100110110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1100110110) && ({row_reg, col_reg}<10'b1100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100111000) && ({row_reg, col_reg}<10'b1100111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b1100111100) && ({row_reg, col_reg}<10'b1101001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101001010) && ({row_reg, col_reg}<10'b1101001110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1101001110) && ({row_reg, col_reg}<10'b1101010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101010000) && ({row_reg, col_reg}<10'b1101010110)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=10'b1101010110) && ({row_reg, col_reg}<10'b1101101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101101010) && ({row_reg, col_reg}<10'b1101101110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1101101110) && ({row_reg, col_reg}<10'b1101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101110000) && ({row_reg, col_reg}<10'b1101110110)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=10'b1101110110) && ({row_reg, col_reg}<10'b1110001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110001000) && ({row_reg, col_reg}<10'b1110001110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1110001110) && ({row_reg, col_reg}<10'b1110010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110010010) && ({row_reg, col_reg}<10'b1110010110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1110010110) && ({row_reg, col_reg}<10'b1110101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110101000) && ({row_reg, col_reg}<10'b1110101110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1110101110) && ({row_reg, col_reg}<10'b1110110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1110110010) && ({row_reg, col_reg}<10'b1110110110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1110110110) && ({row_reg, col_reg}<10'b1111010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111010000) && ({row_reg, col_reg}<10'b1111010110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1111010110) && ({row_reg, col_reg}<10'b1111110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111110000) && ({row_reg, col_reg}<10'b1111110110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1111110110) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b000000000000;
	end
endmodule