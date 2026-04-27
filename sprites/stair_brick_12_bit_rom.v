module stair_brick_rom
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
		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0000000010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0000000010) && ({row_reg, col_reg}<10'b0000011110)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b0000011110) && ({row_reg, col_reg}<10'b0000100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0000100000) && ({row_reg, col_reg}<10'b0000100010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0000100010) && ({row_reg, col_reg}<10'b0000111110)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b0000111110) && ({row_reg, col_reg}<10'b0001000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001000000) && ({row_reg, col_reg}<10'b0001000010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0001000010) && ({row_reg, col_reg}<10'b0001000100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0001000100) && ({row_reg, col_reg}<10'b0001011100)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b0001011100) && ({row_reg, col_reg}<10'b0001100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001100000) && ({row_reg, col_reg}<10'b0001100010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0001100010) && ({row_reg, col_reg}<10'b0001100100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0001100100) && ({row_reg, col_reg}<10'b0001111100)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b0001111100) && ({row_reg, col_reg}<10'b0010000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010000000) && ({row_reg, col_reg}<10'b0010000100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0010000100) && ({row_reg, col_reg}<10'b0010000110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010000110) && ({row_reg, col_reg}<10'b0010011010)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b0010011010) && ({row_reg, col_reg}<10'b0010100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010100000) && ({row_reg, col_reg}<10'b0010100100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0010100100) && ({row_reg, col_reg}<10'b0010100110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010100110) && ({row_reg, col_reg}<10'b0010111010)) color_data = 12'b111111001011;

		if(({row_reg, col_reg}>=10'b0010111010) && ({row_reg, col_reg}<10'b0011000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011000000) && ({row_reg, col_reg}<10'b0011000110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0011000110) && ({row_reg, col_reg}<10'b0011001000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011001000) && ({row_reg, col_reg}<10'b0011011000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0011011000) && ({row_reg, col_reg}<10'b0011011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0011011010) && ({row_reg, col_reg}<10'b0011100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011100000) && ({row_reg, col_reg}<10'b0011100110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0011100110) && ({row_reg, col_reg}<10'b0011101000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0011101000) && ({row_reg, col_reg}<10'b0011111000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0011111000) && ({row_reg, col_reg}<10'b0011111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0011111010) && ({row_reg, col_reg}<10'b0100000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100000000) && ({row_reg, col_reg}<10'b0100001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0100001000) && ({row_reg, col_reg}<10'b0100011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100011000) && ({row_reg, col_reg}<10'b0100011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0100011010) && ({row_reg, col_reg}<10'b0100100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100100000) && ({row_reg, col_reg}<10'b0100101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0100101000) && ({row_reg, col_reg}<10'b0100111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100111000) && ({row_reg, col_reg}<10'b0100111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0100111010) && ({row_reg, col_reg}<10'b0101000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101000000) && ({row_reg, col_reg}<10'b0101001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0101001000) && ({row_reg, col_reg}<10'b0101011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101011000) && ({row_reg, col_reg}<10'b0101011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0101011010) && ({row_reg, col_reg}<10'b0101100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101100000) && ({row_reg, col_reg}<10'b0101101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0101101000) && ({row_reg, col_reg}<10'b0101111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101111000) && ({row_reg, col_reg}<10'b0101111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0101111010) && ({row_reg, col_reg}<10'b0110000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110000000) && ({row_reg, col_reg}<10'b0110001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0110001000) && ({row_reg, col_reg}<10'b0110011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110011000) && ({row_reg, col_reg}<10'b0110011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0110011010) && ({row_reg, col_reg}<10'b0110100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110100000) && ({row_reg, col_reg}<10'b0110101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0110101000) && ({row_reg, col_reg}<10'b0110111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0110111000) && ({row_reg, col_reg}<10'b0110111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0110111010) && ({row_reg, col_reg}<10'b0111000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111000000) && ({row_reg, col_reg}<10'b0111001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0111001000) && ({row_reg, col_reg}<10'b0111011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111011000) && ({row_reg, col_reg}<10'b0111011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0111011010) && ({row_reg, col_reg}<10'b0111100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111100000) && ({row_reg, col_reg}<10'b0111101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0111101000) && ({row_reg, col_reg}<10'b0111111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111111000) && ({row_reg, col_reg}<10'b0111111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b0111111010) && ({row_reg, col_reg}<10'b1000000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000000000) && ({row_reg, col_reg}<10'b1000001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1000001000) && ({row_reg, col_reg}<10'b1000011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000011000) && ({row_reg, col_reg}<10'b1000011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1000011010) && ({row_reg, col_reg}<10'b1000100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000100000) && ({row_reg, col_reg}<10'b1000101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1000101000) && ({row_reg, col_reg}<10'b1000111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000111000) && ({row_reg, col_reg}<10'b1000111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1000111010) && ({row_reg, col_reg}<10'b1001000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001000000) && ({row_reg, col_reg}<10'b1001001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1001001000) && ({row_reg, col_reg}<10'b1001011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1001011000) && ({row_reg, col_reg}<10'b1001011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1001011010) && ({row_reg, col_reg}<10'b1001100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001100000) && ({row_reg, col_reg}<10'b1001101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1001101000) && ({row_reg, col_reg}<10'b1001111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1001111000) && ({row_reg, col_reg}<10'b1001111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1001111010) && ({row_reg, col_reg}<10'b1010000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010000000) && ({row_reg, col_reg}<10'b1010001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1010001000) && ({row_reg, col_reg}<10'b1010011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010011000) && ({row_reg, col_reg}<10'b1010011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1010011010) && ({row_reg, col_reg}<10'b1010100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010100000) && ({row_reg, col_reg}<10'b1010101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1010101000) && ({row_reg, col_reg}<10'b1010111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010111000) && ({row_reg, col_reg}<10'b1010111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1010111010) && ({row_reg, col_reg}<10'b1011000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011000000) && ({row_reg, col_reg}<10'b1011001000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1011001000) && ({row_reg, col_reg}<10'b1011011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011011000) && ({row_reg, col_reg}<10'b1011011010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1011011010) && ({row_reg, col_reg}<10'b1011100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011100000) && ({row_reg, col_reg}<10'b1011101000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1011101000) && ({row_reg, col_reg}<10'b1011111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011111000) && ({row_reg, col_reg}<10'b1011111010)) color_data = 12'b110001100100;

		if(({row_reg, col_reg}>=10'b1011111010) && ({row_reg, col_reg}<10'b1100000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100000000) && ({row_reg, col_reg}<10'b1100000110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1100000110) && ({row_reg, col_reg}<10'b1100011000)) color_data = 12'b110001100100;
		if(({row_reg, col_reg}>=10'b1100011000) && ({row_reg, col_reg}<10'b1100011010)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1100011010) && ({row_reg, col_reg}<10'b1100100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100100000) && ({row_reg, col_reg}<10'b1100100110)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1100100110) && ({row_reg, col_reg}<10'b1100111000)) color_data = 12'b110001100100;
		if(({row_reg, col_reg}>=10'b1100111000) && ({row_reg, col_reg}<10'b1100111010)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1100111010) && ({row_reg, col_reg}<10'b1101000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101000000) && ({row_reg, col_reg}<10'b1101000100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1101000100) && ({row_reg, col_reg}<10'b1101011010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101011010) && ({row_reg, col_reg}<10'b1101011100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1101011100) && ({row_reg, col_reg}<10'b1101100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101100000) && ({row_reg, col_reg}<10'b1101100100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1101100100) && ({row_reg, col_reg}<10'b1101111010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101111010) && ({row_reg, col_reg}<10'b1101111100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1101111100) && ({row_reg, col_reg}<10'b1110000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110000000) && ({row_reg, col_reg}<10'b1110000010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1110000010) && ({row_reg, col_reg}<10'b1110011100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110011100) && ({row_reg, col_reg}<10'b1110011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1110011110) && ({row_reg, col_reg}<10'b1110100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110100000) && ({row_reg, col_reg}<10'b1110100010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b1110100010) && ({row_reg, col_reg}<10'b1110111100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110111100) && ({row_reg, col_reg}<10'b1110111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1110111110) && ({row_reg, col_reg}<10'b1111011110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1111011110) && ({row_reg, col_reg}<10'b1111100000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1111100000) && ({row_reg, col_reg}<10'b1111111110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1111111110) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b101001010010;
	end
endmodule