module question_block2_rom
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
		if(({row_reg, col_reg}>=10'b0000000010) && ({row_reg, col_reg}<10'b0000011110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0000011110) && ({row_reg, col_reg}<10'b0000100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0000100010) && ({row_reg, col_reg}<10'b0000111110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b0000111110) && ({row_reg, col_reg}<10'b0001000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b0001000000) && ({row_reg, col_reg}<10'b0001000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001000010) && ({row_reg, col_reg}<10'b0001011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0001011110) && ({row_reg, col_reg}<10'b0001100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0001100010) && ({row_reg, col_reg}<10'b0001111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0001111110) && ({row_reg, col_reg}<10'b0010000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010000010) && ({row_reg, col_reg}<10'b0010000100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010000100) && ({row_reg, col_reg}<10'b0010000110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010000110) && ({row_reg, col_reg}<10'b0010011010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010011010) && ({row_reg, col_reg}<10'b0010011100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010011100) && ({row_reg, col_reg}<10'b0010011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0010011110) && ({row_reg, col_reg}<10'b0010100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010100010) && ({row_reg, col_reg}<10'b0010100100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010100100) && ({row_reg, col_reg}<10'b0010100110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010100110) && ({row_reg, col_reg}<10'b0010111010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b0010111010) && ({row_reg, col_reg}<10'b0010111100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0010111100) && ({row_reg, col_reg}<10'b0010111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0010111110) && ({row_reg, col_reg}<10'b0011000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011000010) && ({row_reg, col_reg}<10'b0011011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0011011110) && ({row_reg, col_reg}<10'b0011100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0011100010) && ({row_reg, col_reg}<10'b0011111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0011111110) && ({row_reg, col_reg}<10'b0100000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100000010) && ({row_reg, col_reg}<10'b0100011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0100011110) && ({row_reg, col_reg}<10'b0100100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0100100010) && ({row_reg, col_reg}<10'b0100111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0100111110) && ({row_reg, col_reg}<10'b0101000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101000010) && ({row_reg, col_reg}<10'b0101011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0101011110) && ({row_reg, col_reg}<10'b0101100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0101100010) && ({row_reg, col_reg}<10'b0101111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0101111110) && ({row_reg, col_reg}<10'b0110000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110000010) && ({row_reg, col_reg}<10'b0110011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0110011110) && ({row_reg, col_reg}<10'b0110100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0110100010) && ({row_reg, col_reg}<10'b0110111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0110111110) && ({row_reg, col_reg}<10'b0111000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111000010) && ({row_reg, col_reg}<10'b0111011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0111011110) && ({row_reg, col_reg}<10'b0111100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b0111100010) && ({row_reg, col_reg}<10'b0111111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b0111111110) && ({row_reg, col_reg}<10'b1000000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000000010) && ({row_reg, col_reg}<10'b1000011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1000011110) && ({row_reg, col_reg}<10'b1000100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1000100010) && ({row_reg, col_reg}<10'b1000111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1000111110) && ({row_reg, col_reg}<10'b1001000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001000010) && ({row_reg, col_reg}<10'b1001011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1001011110) && ({row_reg, col_reg}<10'b1001100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1001100010) && ({row_reg, col_reg}<10'b1001111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1001111110) && ({row_reg, col_reg}<10'b1010000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010000010) && ({row_reg, col_reg}<10'b1010011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1010011110) && ({row_reg, col_reg}<10'b1010100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1010100010) && ({row_reg, col_reg}<10'b1010111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1010111110) && ({row_reg, col_reg}<10'b1011000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011000010) && ({row_reg, col_reg}<10'b1011011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1011011110) && ({row_reg, col_reg}<10'b1011100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1011100010) && ({row_reg, col_reg}<10'b1011111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1011111110) && ({row_reg, col_reg}<10'b1100000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100000010) && ({row_reg, col_reg}<10'b1100011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1100011110) && ({row_reg, col_reg}<10'b1100100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1100100010) && ({row_reg, col_reg}<10'b1100111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1100111110) && ({row_reg, col_reg}<10'b1101000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101000010) && ({row_reg, col_reg}<10'b1101000100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101000100) && ({row_reg, col_reg}<10'b1101000110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101000110) && ({row_reg, col_reg}<10'b1101011010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101011010) && ({row_reg, col_reg}<10'b1101011100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101011100) && ({row_reg, col_reg}<10'b1101011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1101011110) && ({row_reg, col_reg}<10'b1101100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101100010) && ({row_reg, col_reg}<10'b1101100100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101100100) && ({row_reg, col_reg}<10'b1101100110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101100110) && ({row_reg, col_reg}<10'b1101111010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=10'b1101111010) && ({row_reg, col_reg}<10'b1101111100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1101111100) && ({row_reg, col_reg}<10'b1101111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1101111110) && ({row_reg, col_reg}<10'b1110000010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110000010) && ({row_reg, col_reg}<10'b1110011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1110011110) && ({row_reg, col_reg}<10'b1110100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1110100010) && ({row_reg, col_reg}<10'b1110111110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=10'b1110111110) && ({row_reg, col_reg}<10'b1111000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=10'b1111000000) && ({row_reg, col_reg}<10'b1111000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111000010) && ({row_reg, col_reg}<10'b1111011110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1111011110) && ({row_reg, col_reg}<10'b1111100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=10'b1111100010) && ({row_reg, col_reg}<10'b1111111110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=10'b1111111110) && ({row_reg, col_reg}<=10'b1111111111)) color_data = 12'b000000000000;
	end
endmodule