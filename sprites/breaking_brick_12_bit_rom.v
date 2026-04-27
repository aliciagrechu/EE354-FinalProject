module breaking_brick_rom
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


		if(({row_reg, col_reg}>=10'b0000000000) && ({row_reg, col_reg}<10'b0001000000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=10'b0001000000) && ({row_reg, col_reg}<10'b0001001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0001001010) && ({row_reg, col_reg}<10'b0001001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001001100) && ({row_reg, col_reg}<10'b0001010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0001010110) && ({row_reg, col_reg}<10'b0001011000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0001011000) && ({row_reg, col_reg}<10'b0001101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0001101010) && ({row_reg, col_reg}<10'b0001101100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001101100) && ({row_reg, col_reg}<10'b0001110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0001110110) && ({row_reg, col_reg}<10'b0001111000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0001111000) && ({row_reg, col_reg}<10'b0010001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010001010) && ({row_reg, col_reg}<10'b0010001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010001100) && ({row_reg, col_reg}<10'b0010010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010010110) && ({row_reg, col_reg}<10'b0010011000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0010011000) && ({row_reg, col_reg}<10'b0010101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010101010) && ({row_reg, col_reg}<10'b0010101100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010101100) && ({row_reg, col_reg}<10'b0010110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010110110) && ({row_reg, col_reg}<10'b0010111000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0010111000) && ({row_reg, col_reg}<10'b0011000000)) color_data = 12'b101001010010;


		if(({row_reg, col_reg}>=10'b0011000000) && ({row_reg, col_reg}<10'b0100000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100000000) && ({row_reg, col_reg}<10'b0100000110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100000110) && ({row_reg, col_reg}<10'b0100001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100001000) && ({row_reg, col_reg}<10'b0100010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100010010) && ({row_reg, col_reg}<10'b0100010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100010100) && ({row_reg, col_reg}<10'b0100011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0100011110) && ({row_reg, col_reg}<10'b0100100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100100000) && ({row_reg, col_reg}<10'b0100100110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100100110) && ({row_reg, col_reg}<10'b0100101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100101000) && ({row_reg, col_reg}<10'b0100110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0100110010) && ({row_reg, col_reg}<10'b0100110100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100110100) && ({row_reg, col_reg}<10'b0100111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0100111110) && ({row_reg, col_reg}<10'b0101000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101000000) && ({row_reg, col_reg}<10'b0101000110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101000110) && ({row_reg, col_reg}<10'b0101001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101001000) && ({row_reg, col_reg}<10'b0101010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101010010) && ({row_reg, col_reg}<10'b0101010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101010100) && ({row_reg, col_reg}<10'b0101011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0101011110) && ({row_reg, col_reg}<10'b0101100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101100000) && ({row_reg, col_reg}<10'b0101100110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101100110) && ({row_reg, col_reg}<10'b0101101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101101000) && ({row_reg, col_reg}<10'b0101110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0101110010) && ({row_reg, col_reg}<10'b0101110100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101110100) && ({row_reg, col_reg}<10'b0101111110)) color_data = 12'b101001010010;



		if(({row_reg, col_reg}>=10'b0101111110) && ({row_reg, col_reg}<10'b0111000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111000010) && ({row_reg, col_reg}<10'b0111001100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111001100) && ({row_reg, col_reg}<10'b0111001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111001110) && ({row_reg, col_reg}<10'b0111011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111011000) && ({row_reg, col_reg}<10'b0111011010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0111011010) && ({row_reg, col_reg}<10'b0111100000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111100000) && ({row_reg, col_reg}<10'b0111100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111100010) && ({row_reg, col_reg}<10'b0111101100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111101100) && ({row_reg, col_reg}<10'b0111101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111101110) && ({row_reg, col_reg}<10'b0111111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0111111000) && ({row_reg, col_reg}<10'b0111111010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0111111010) && ({row_reg, col_reg}<10'b1000000000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000000000) && ({row_reg, col_reg}<10'b1000000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000000010) && ({row_reg, col_reg}<10'b1000001100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000001100) && ({row_reg, col_reg}<10'b1000001110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000001110) && ({row_reg, col_reg}<10'b1000011000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000011000) && ({row_reg, col_reg}<10'b1000011010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1000011010) && ({row_reg, col_reg}<10'b1000100000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000100000) && ({row_reg, col_reg}<10'b1000100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000100010) && ({row_reg, col_reg}<10'b1000101100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000101100) && ({row_reg, col_reg}<10'b1000101110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000101110) && ({row_reg, col_reg}<10'b1000111000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1000111000) && ({row_reg, col_reg}<10'b1000111010)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1000111010) && ({row_reg, col_reg}<10'b1001000000)) color_data = 12'b101001010010;


		if(({row_reg, col_reg}>=10'b1001000000) && ({row_reg, col_reg}<10'b1010000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010000000) && ({row_reg, col_reg}<10'b1010000110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010000110) && ({row_reg, col_reg}<10'b1010001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010001000) && ({row_reg, col_reg}<10'b1010010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010010010) && ({row_reg, col_reg}<10'b1010010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010010100) && ({row_reg, col_reg}<10'b1010011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1010011110) && ({row_reg, col_reg}<10'b1010100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010100000) && ({row_reg, col_reg}<10'b1010100110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010100110) && ({row_reg, col_reg}<10'b1010101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010101000) && ({row_reg, col_reg}<10'b1010110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1010110010) && ({row_reg, col_reg}<10'b1010110100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010110100) && ({row_reg, col_reg}<10'b1010111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1010111110) && ({row_reg, col_reg}<10'b1011000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011000000) && ({row_reg, col_reg}<10'b1011000110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011000110) && ({row_reg, col_reg}<10'b1011001000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011001000) && ({row_reg, col_reg}<10'b1011010010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011010010) && ({row_reg, col_reg}<10'b1011010100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011010100) && ({row_reg, col_reg}<10'b1011011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1011011110) && ({row_reg, col_reg}<10'b1011100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011100000) && ({row_reg, col_reg}<10'b1011100110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011100110) && ({row_reg, col_reg}<10'b1011101000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011101000) && ({row_reg, col_reg}<10'b1011110010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1011110010) && ({row_reg, col_reg}<10'b1011110100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011110100) && ({row_reg, col_reg}<10'b1011111110)) color_data = 12'b101001010010;



		if(({row_reg, col_reg}>=10'b1011111110) && ({row_reg, col_reg}<10'b1101000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101000000) && ({row_reg, col_reg}<10'b1101001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101001010) && ({row_reg, col_reg}<10'b1101001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101001100) && ({row_reg, col_reg}<10'b1101010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101010110) && ({row_reg, col_reg}<10'b1101011000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1101011000) && ({row_reg, col_reg}<10'b1101101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101101010) && ({row_reg, col_reg}<10'b1101101100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101101100) && ({row_reg, col_reg}<10'b1101110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101110110) && ({row_reg, col_reg}<10'b1101111000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1101111000) && ({row_reg, col_reg}<10'b1110001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1110001010) && ({row_reg, col_reg}<10'b1110001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110001100) && ({row_reg, col_reg}<10'b1110010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1110010110) && ({row_reg, col_reg}<10'b1110011000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1110011000) && ({row_reg, col_reg}<10'b1110101010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1110101010) && ({row_reg, col_reg}<10'b1110101100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110101100) && ({row_reg, col_reg}<10'b1110110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1110110110) && ({row_reg, col_reg}<10'b1110111000)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1110111000) && ({row_reg, col_reg}<10'b1111000000)) color_data = 12'b101001010010;


		if(({row_reg, col_reg}>=10'b1111000000) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b010000100001;
	end
endmodule