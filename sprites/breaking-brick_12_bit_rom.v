module breaking-brick_rom
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

		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00010000)) color_data = 12'b111111001011;
		if(({row_reg, col_reg}>=8'b00010000) && ({row_reg, col_reg}<8'b00010101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b00010101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00010110) && ({row_reg, col_reg}<8'b00011011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b00011011)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b00011100) && ({row_reg, col_reg}<8'b00100101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b00100101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00100110) && ({row_reg, col_reg}<8'b00101011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b00101011)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b00101100) && ({row_reg, col_reg}<8'b00110000)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00110000) && ({row_reg, col_reg}<8'b01000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01000000) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01000011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01000100) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01001001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01001010) && ({row_reg, col_reg}<8'b01001111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}==8'b01001111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01010000) && ({row_reg, col_reg}<8'b01010011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01010011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01010100) && ({row_reg, col_reg}<8'b01011001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01011001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01011010) && ({row_reg, col_reg}<8'b01011111)) color_data = 12'b101001010010;


		if(({row_reg, col_reg}>=8'b01011111) && ({row_reg, col_reg}<8'b01110001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01110001) && ({row_reg, col_reg}<8'b01110110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01110110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01110111) && ({row_reg, col_reg}<8'b01111100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01111100)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b01111101) && ({row_reg, col_reg}<8'b10000000)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10000000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10000001) && ({row_reg, col_reg}<8'b10000110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10000110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10000111) && ({row_reg, col_reg}<8'b10001100)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10001100)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b10001101) && ({row_reg, col_reg}<8'b10010000)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10010000) && ({row_reg, col_reg}<8'b10100000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10100000) && ({row_reg, col_reg}<8'b10100011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10100011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10100100) && ({row_reg, col_reg}<8'b10101001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10101001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10101010) && ({row_reg, col_reg}<8'b10101111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}==8'b10101111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10110000) && ({row_reg, col_reg}<8'b10110011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10110011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10110100) && ({row_reg, col_reg}<8'b10111001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10111001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10111010) && ({row_reg, col_reg}<8'b10111111)) color_data = 12'b101001010010;


		if(({row_reg, col_reg}>=8'b10111111) && ({row_reg, col_reg}<8'b11010000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11010000) && ({row_reg, col_reg}<8'b11010101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11010101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11010110) && ({row_reg, col_reg}<8'b11011011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11011011)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11011100) && ({row_reg, col_reg}<8'b11100101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11100101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11100110) && ({row_reg, col_reg}<8'b11101011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11101011)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11101100) && ({row_reg, col_reg}<8'b11110000)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b11110000) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b010000100001;
	end
endmodule