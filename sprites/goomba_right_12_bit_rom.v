module goomba_right_rom
	(
		input wire clk,
		input wire [3:0] row,
		input wire [3:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [3:0] row_reg;
	reg [3:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00000110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00000110) && ({row_reg, col_reg}<8'b00001010)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00001010) && ({row_reg, col_reg}<8'b00010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00010101) && ({row_reg, col_reg}<8'b00011011)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00011011) && ({row_reg, col_reg}<8'b00100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00100100) && ({row_reg, col_reg}<8'b00101100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00101100) && ({row_reg, col_reg}<8'b00110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b00110100) && ({row_reg, col_reg}<8'b00110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00110110) && ({row_reg, col_reg}<8'b00111010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b00111010) && ({row_reg, col_reg}<8'b00111100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b00111100)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00111101) && ({row_reg, col_reg}<8'b01000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01000010) && ({row_reg, col_reg}<8'b01000101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01000101) && ({row_reg, col_reg}<8'b01000111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01000111) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01001001) && ({row_reg, col_reg}<8'b01001011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01001011) && ({row_reg, col_reg}<8'b01001110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01001110) && ({row_reg, col_reg}<8'b01010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01010010) && ({row_reg, col_reg}<8'b01010101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01010101)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b01010110) && ({row_reg, col_reg}<8'b01011010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b01011010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b01011011) && ({row_reg, col_reg}<8'b01011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01011110) && ({row_reg, col_reg}<8'b01100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01100001) && ({row_reg, col_reg}<8'b01100101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01100101)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}==8'b01100110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01100111) && ({row_reg, col_reg}<8'b01101001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01101001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b01101010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b01101011) && ({row_reg, col_reg}<8'b01101111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01101111) && ({row_reg, col_reg}<8'b01110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01110001) && ({row_reg, col_reg}<8'b01110101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01110101) && ({row_reg, col_reg}<8'b01110111)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b01110111) && ({row_reg, col_reg}<8'b01111001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01111001) && ({row_reg, col_reg}<8'b01111011)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b01111011) && ({row_reg, col_reg}<8'b01111111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01111111) && ({row_reg, col_reg}<8'b10000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10000001) && ({row_reg, col_reg}<8'b10001111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10001111) && ({row_reg, col_reg}<8'b10010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10010001) && ({row_reg, col_reg}<8'b10011111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10011111) && ({row_reg, col_reg}<8'b10100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10100010) && ({row_reg, col_reg}<8'b10100101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b10100101) && ({row_reg, col_reg}<8'b10101011)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b10101011) && ({row_reg, col_reg}<8'b10101110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10101110) && ({row_reg, col_reg}<8'b10110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10110100) && ({row_reg, col_reg}<8'b10111100)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b10111100) && ({row_reg, col_reg}<8'b10111110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b10111110) && ({row_reg, col_reg}<8'b11000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11000011) && ({row_reg, col_reg}<8'b11000101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11000101) && ({row_reg, col_reg}<8'b11001011)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b11001011) && ({row_reg, col_reg}<8'b11001111)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11001111) && ({row_reg, col_reg}<8'b11010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11010011) && ({row_reg, col_reg}<8'b11010110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11010110) && ({row_reg, col_reg}<8'b11011010)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b11011010) && ({row_reg, col_reg}<8'b11011111)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11011111) && ({row_reg, col_reg}<8'b11100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11100100) && ({row_reg, col_reg}<8'b11100111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11100111) && ({row_reg, col_reg}<8'b11101001)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b11101001) && ({row_reg, col_reg}<8'b11101110)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11101110) && ({row_reg, col_reg}<8'b11110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11110101) && ({row_reg, col_reg}<8'b11111000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11111001) && ({row_reg, col_reg}<8'b11111101)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11111101) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule