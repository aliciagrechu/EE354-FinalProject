module mario_jump_rom
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
		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000001010) && ({row_reg, col_reg}<10'b0000010100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0000010100) && ({row_reg, col_reg}<10'b0000010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000010110) && ({row_reg, col_reg}<10'b0000011100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b0000011100) && ({row_reg, col_reg}<10'b0000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000101010) && ({row_reg, col_reg}<10'b0000110100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0000110100) && ({row_reg, col_reg}<10'b0000110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000110110) && ({row_reg, col_reg}<10'b0000111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b0000111100) && ({row_reg, col_reg}<10'b0001001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001001000) && ({row_reg, col_reg}<10'b0001011000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0001011000) && ({row_reg, col_reg}<10'b0001011100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b0001011100) && ({row_reg, col_reg}<10'b0001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001101000) && ({row_reg, col_reg}<10'b0001111000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0001111000) && ({row_reg, col_reg}<10'b0001111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=10'b0001111100) && ({row_reg, col_reg}<10'b0010001000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010001000) && ({row_reg, col_reg}<10'b0010001110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0010001110) && ({row_reg, col_reg}<10'b0010010000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010010000) && ({row_reg, col_reg}<10'b0010010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010010010) && ({row_reg, col_reg}<10'b0010010100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010010100) && ({row_reg, col_reg}<10'b0010010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010010110) && ({row_reg, col_reg}<10'b0010011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0010011100) && ({row_reg, col_reg}<10'b0010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010101000) && ({row_reg, col_reg}<10'b0010101110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0010101110) && ({row_reg, col_reg}<10'b0010110000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010110000) && ({row_reg, col_reg}<10'b0010110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010110010) && ({row_reg, col_reg}<10'b0010110100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0010110100) && ({row_reg, col_reg}<10'b0010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0010110110) && ({row_reg, col_reg}<10'b0010111100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0010111100) && ({row_reg, col_reg}<10'b0011000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011000110) && ({row_reg, col_reg}<10'b0011001000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0011001000) && ({row_reg, col_reg}<10'b0011001010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011001010) && ({row_reg, col_reg}<10'b0011001100)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0011001100) && ({row_reg, col_reg}<10'b0011010000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011010000) && ({row_reg, col_reg}<10'b0011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011010010) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011011000) && ({row_reg, col_reg}<10'b0011011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0011011100) && ({row_reg, col_reg}<10'b0011100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011100110) && ({row_reg, col_reg}<10'b0011101000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0011101000) && ({row_reg, col_reg}<10'b0011101010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011101010) && ({row_reg, col_reg}<10'b0011101100)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0011101100) && ({row_reg, col_reg}<10'b0011110000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011110000) && ({row_reg, col_reg}<10'b0011110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0011110010) && ({row_reg, col_reg}<10'b0011111000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0011111000) && ({row_reg, col_reg}<10'b0011111100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0011111100) && ({row_reg, col_reg}<10'b0100000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100000110) && ({row_reg, col_reg}<10'b0100001000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100001000) && ({row_reg, col_reg}<10'b0100001010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100001010) && ({row_reg, col_reg}<10'b0100001110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100001110) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100010010) && ({row_reg, col_reg}<10'b0100010100)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100010100) && ({row_reg, col_reg}<10'b0100011010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100011010) && ({row_reg, col_reg}<10'b0100011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0100011100) && ({row_reg, col_reg}<10'b0100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100101000) && ({row_reg, col_reg}<10'b0100101010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100101010) && ({row_reg, col_reg}<10'b0100101110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100101110) && ({row_reg, col_reg}<10'b0100110010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100110010) && ({row_reg, col_reg}<10'b0100110100)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0100110100) && ({row_reg, col_reg}<10'b0100111010)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0100111010) && ({row_reg, col_reg}<10'b0100111100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0100111100) && ({row_reg, col_reg}<10'b0101000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101000110) && ({row_reg, col_reg}<10'b0101001010)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0101001010) && ({row_reg, col_reg}<10'b0101010000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0101010000) && ({row_reg, col_reg}<10'b0101011000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0101011000) && ({row_reg, col_reg}<10'b0101011010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0101011010) && ({row_reg, col_reg}<10'b0101100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0101100110) && ({row_reg, col_reg}<10'b0101101010)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0101101010) && ({row_reg, col_reg}<10'b0101110000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0101110000) && ({row_reg, col_reg}<10'b0101111000)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b0101111000) && ({row_reg, col_reg}<10'b0101111010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0101111010) && ({row_reg, col_reg}<10'b0110001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110001010) && ({row_reg, col_reg}<10'b0110010110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0110010110) && ({row_reg, col_reg}<10'b0110011010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0110011010) && ({row_reg, col_reg}<10'b0110101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0110101010) && ({row_reg, col_reg}<10'b0110110110)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=10'b0110110110) && ({row_reg, col_reg}<10'b0110111010)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=10'b0110111010) && ({row_reg, col_reg}<10'b0111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111000010) && ({row_reg, col_reg}<10'b0111001010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111001010) && ({row_reg, col_reg}<10'b0111001100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111001100) && ({row_reg, col_reg}<10'b0111010010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111010010) && ({row_reg, col_reg}<10'b0111010100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111010100) && ({row_reg, col_reg}<10'b0111011000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111011000) && ({row_reg, col_reg}<10'b0111011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111011100) && ({row_reg, col_reg}<10'b0111011110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0111011110) && ({row_reg, col_reg}<10'b0111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111100010) && ({row_reg, col_reg}<10'b0111101010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111101010) && ({row_reg, col_reg}<10'b0111101100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111101100) && ({row_reg, col_reg}<10'b0111110010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111110010) && ({row_reg, col_reg}<10'b0111110100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b0111110100) && ({row_reg, col_reg}<10'b0111111000)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b0111111000) && ({row_reg, col_reg}<10'b0111111100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0111111100) && ({row_reg, col_reg}<10'b0111111110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b0111111110) && ({row_reg, col_reg}<10'b1000000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000000010) && ({row_reg, col_reg}<10'b1000001100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000001100) && ({row_reg, col_reg}<10'b1000001110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000001110) && ({row_reg, col_reg}<10'b1000010100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000010100) && ({row_reg, col_reg}<10'b1000010110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000010110) && ({row_reg, col_reg}<10'b1000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000011010) && ({row_reg, col_reg}<10'b1000011110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1000011110) && ({row_reg, col_reg}<10'b1000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000100010) && ({row_reg, col_reg}<10'b1000101100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000101100) && ({row_reg, col_reg}<10'b1000101110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000101110) && ({row_reg, col_reg}<10'b1000110100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1000110100) && ({row_reg, col_reg}<10'b1000110110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1000110110) && ({row_reg, col_reg}<10'b1000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1000111010) && ({row_reg, col_reg}<10'b1000111110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1000111110) && ({row_reg, col_reg}<10'b1001000100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001000100) && ({row_reg, col_reg}<10'b1001001100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1001001100) && ({row_reg, col_reg}<10'b1001010100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1001010100) && ({row_reg, col_reg}<10'b1001010110)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1001010110) && ({row_reg, col_reg}<10'b1001011010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1001011010) && ({row_reg, col_reg}<10'b1001011110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1001011110) && ({row_reg, col_reg}<10'b1001100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1001100100) && ({row_reg, col_reg}<10'b1001101100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=10'b1001101100) && ({row_reg, col_reg}<10'b1001110100)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1001110100) && ({row_reg, col_reg}<10'b1001110110)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1001110110) && ({row_reg, col_reg}<10'b1001111010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1001111010) && ({row_reg, col_reg}<10'b1001111110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1001111110) && ({row_reg, col_reg}<10'b1010000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010000110) && ({row_reg, col_reg}<10'b1010001110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1010001110) && ({row_reg, col_reg}<10'b1010010000)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1010010000) && ({row_reg, col_reg}<10'b1010011010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1010011010) && ({row_reg, col_reg}<10'b1010011110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1010011110) && ({row_reg, col_reg}<10'b1010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1010100110) && ({row_reg, col_reg}<10'b1010101110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1010101110) && ({row_reg, col_reg}<10'b1010110000)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=10'b1010110000) && ({row_reg, col_reg}<10'b1010111010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1010111010) && ({row_reg, col_reg}<10'b1010111110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1010111110) && ({row_reg, col_reg}<10'b1011000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011000010) && ({row_reg, col_reg}<10'b1011000110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1011000110) && ({row_reg, col_reg}<10'b1011011010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1011011010) && ({row_reg, col_reg}<10'b1011011110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1011011110) && ({row_reg, col_reg}<10'b1011100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1011100010) && ({row_reg, col_reg}<10'b1011100110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1011100110) && ({row_reg, col_reg}<10'b1011111010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=10'b1011111010) && ({row_reg, col_reg}<10'b1011111110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1011111110) && ({row_reg, col_reg}<10'b1100000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100000000) && ({row_reg, col_reg}<10'b1100000110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1100000110) && ({row_reg, col_reg}<10'b1100010010)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=10'b1100010010) && ({row_reg, col_reg}<10'b1100100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1100100000) && ({row_reg, col_reg}<10'b1100100110)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=10'b1100100110) && ({row_reg, col_reg}<10'b1100110010)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=10'b1100110010) && ({row_reg, col_reg}<10'b1101000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101000000) && ({row_reg, col_reg}<10'b1101000100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=10'b1101000100) && ({row_reg, col_reg}<10'b1101100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1101100000) && ({row_reg, col_reg}<10'b1101100100)) color_data = 12'b011000110011;





		if(({row_reg, col_reg}>=10'b1101100100) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b000000000000;
	end
endmodule