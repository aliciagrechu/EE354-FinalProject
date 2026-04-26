module mario_jump_rom
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
		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00000101) && ({row_reg, col_reg}<8'b00001010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b00001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00001011) && ({row_reg, col_reg}<8'b00001110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b00001110) && ({row_reg, col_reg}<8'b00010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00010100) && ({row_reg, col_reg}<8'b00011100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b00011100) && ({row_reg, col_reg}<8'b00011110)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b00011110) && ({row_reg, col_reg}<8'b00100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00100100) && ({row_reg, col_reg}<8'b00100111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00100111)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00101001)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00101011) && ({row_reg, col_reg}<8'b00101110)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00101110) && ({row_reg, col_reg}<8'b00110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00110100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00110101)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b00110110) && ({row_reg, col_reg}<8'b00111000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00111001) && ({row_reg, col_reg}<8'b00111100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b00111100) && ({row_reg, col_reg}<8'b00111110)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00111110) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01000011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b01000100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01000101) && ({row_reg, col_reg}<8'b01000111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01000111) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b01001001)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01001010) && ({row_reg, col_reg}<8'b01001101)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b01001101)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b01001110) && ({row_reg, col_reg}<8'b01010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01010011) && ({row_reg, col_reg}<8'b01010101)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01010101) && ({row_reg, col_reg}<8'b01011000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01011000) && ({row_reg, col_reg}<8'b01011100)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b01011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b01011101) && ({row_reg, col_reg}<8'b01100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01100101) && ({row_reg, col_reg}<8'b01101011)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01101011) && ({row_reg, col_reg}<8'b01101101)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b01101101) && ({row_reg, col_reg}<8'b01110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01110001) && ({row_reg, col_reg}<8'b01110101)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01110101)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b01110110) && ({row_reg, col_reg}<8'b01111001)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01111001)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b01111010) && ({row_reg, col_reg}<8'b01111100)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b01111100) && ({row_reg, col_reg}<8'b01111110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01111110)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b01111111) && ({row_reg, col_reg}<8'b10000001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10000001) && ({row_reg, col_reg}<8'b10000110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10000110)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10000111) && ({row_reg, col_reg}<8'b10001010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10001010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10001011) && ({row_reg, col_reg}<8'b10001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10001101) && ({row_reg, col_reg}<8'b10001111)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b10001111) && ({row_reg, col_reg}<8'b10010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10010010) && ({row_reg, col_reg}<8'b10010110)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10010110) && ({row_reg, col_reg}<8'b10011010)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10011010)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=8'b10011011) && ({row_reg, col_reg}<8'b10011101)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10011101) && ({row_reg, col_reg}<8'b10011111)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b10011111) && ({row_reg, col_reg}<8'b10100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10100011) && ({row_reg, col_reg}<8'b10100111)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}==8'b10100111)) color_data = 12'b111011100000;
		if(({row_reg, col_reg}>=8'b10101000) && ({row_reg, col_reg}<8'b10101101)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10101101) && ({row_reg, col_reg}<8'b10101111)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b10101111) && ({row_reg, col_reg}<8'b10110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10110001) && ({row_reg, col_reg}<8'b10110011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b10110011) && ({row_reg, col_reg}<8'b10111101)) color_data = 12'b000000001101;
		if(({row_reg, col_reg}>=8'b10111101) && ({row_reg, col_reg}<8'b10111111)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}==8'b10111111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11000000) && ({row_reg, col_reg}<8'b11000011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b11000011) && ({row_reg, col_reg}<8'b11001001)) color_data = 12'b000000001101;

		if(({row_reg, col_reg}>=8'b11001001) && ({row_reg, col_reg}<8'b11010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11010000) && ({row_reg, col_reg}<8'b11010010)) color_data = 12'b011000110011;



		if(({row_reg, col_reg}>=8'b11010010) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule