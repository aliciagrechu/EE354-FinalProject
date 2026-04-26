module question_block_rom
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
		if(({row_reg, col_reg}==8'b00000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00000001) && ({row_reg, col_reg}<8'b00001111)) color_data = 12'b100001010011;

		if(({row_reg, col_reg}==8'b00001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00010000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b00010001) && ({row_reg, col_reg}<8'b00011111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b00011111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b00100000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b00100001) && ({row_reg, col_reg}<8'b00100011)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}==8'b00100011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00100100) && ({row_reg, col_reg}<8'b00101101)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}==8'b00101101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b00101110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b00101111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b00110000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b00110001) && ({row_reg, col_reg}<8'b00110110)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b00110110) && ({row_reg, col_reg}<8'b00111001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b00111001) && ({row_reg, col_reg}<8'b00111111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b00111111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b01000000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b01000001) && ({row_reg, col_reg}<8'b01000101)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b01000101) && ({row_reg, col_reg}<8'b01001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01001010) && ({row_reg, col_reg}<8'b01001111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b01001111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b01010000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b01010001) && ({row_reg, col_reg}<8'b01010100)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b01010100) && ({row_reg, col_reg}<8'b01010110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01010110) && ({row_reg, col_reg}<8'b01011001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01011001) && ({row_reg, col_reg}<8'b01011011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b01011011) && ({row_reg, col_reg}<8'b01011111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b01011111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b01100000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b01100001) && ({row_reg, col_reg}<8'b01100100)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b01100100) && ({row_reg, col_reg}<8'b01100110)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01100110)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01100111) && ({row_reg, col_reg}<8'b01101001)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b01101001) && ({row_reg, col_reg}<8'b01101011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01101011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01101100) && ({row_reg, col_reg}<8'b01101111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b01101111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b01110000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b01110001) && ({row_reg, col_reg}<8'b01110101)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b01110101) && ({row_reg, col_reg}<8'b01110111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01110111) && ({row_reg, col_reg}<8'b01111001)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b01111001) && ({row_reg, col_reg}<8'b01111011)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b01111011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01111100) && ({row_reg, col_reg}<8'b01111111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b01111111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b10000000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b10000001) && ({row_reg, col_reg}<8'b10001000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b10001000) && ({row_reg, col_reg}<8'b10001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b10001010) && ({row_reg, col_reg}<8'b10001100)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10001100) && ({row_reg, col_reg}<8'b10001111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b10001111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b10010000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b10010001) && ({row_reg, col_reg}<8'b10011000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b10011000) && ({row_reg, col_reg}<8'b10011010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b10011010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10011011) && ({row_reg, col_reg}<8'b10011111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b10011111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b10100000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b10100001) && ({row_reg, col_reg}<8'b10101001)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b10101001) && ({row_reg, col_reg}<8'b10101011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10101011) && ({row_reg, col_reg}<8'b10101111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b10101111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b10110000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b10110001) && ({row_reg, col_reg}<8'b10111000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b10111000) && ({row_reg, col_reg}<8'b10111010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}>=8'b10111010) && ({row_reg, col_reg}<8'b10111111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b10111111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11000000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b11000001) && ({row_reg, col_reg}<8'b11001000)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b11001000) && ({row_reg, col_reg}<8'b11001010)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11001010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11001011) && ({row_reg, col_reg}<8'b11001111)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b11001111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11010000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b11010001) && ({row_reg, col_reg}<8'b11010011)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}==8'b11010011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11010100) && ({row_reg, col_reg}<8'b11011001)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}>=8'b11011001) && ({row_reg, col_reg}<8'b11011011)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11011011) && ({row_reg, col_reg}<8'b11011101)) color_data = 12'b110110010000;
		if(({row_reg, col_reg}==8'b11011101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11011110)) color_data = 12'b110110010000;

		if(({row_reg, col_reg}==8'b11011111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11100000)) color_data = 12'b100001010011;
		if(({row_reg, col_reg}>=8'b11100001) && ({row_reg, col_reg}<8'b11101111)) color_data = 12'b110110010000;


		if(({row_reg, col_reg}>=8'b11101111) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b010000100001;
	end
endmodule