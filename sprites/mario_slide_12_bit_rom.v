module mario_slide_rom
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

		if(({row_reg, col_reg}>=8'b00001010) && ({row_reg, col_reg}<8'b00010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00010100) && ({row_reg, col_reg}<8'b00011100)) color_data = 12'b110000100000;

		if(({row_reg, col_reg}>=8'b00011100) && ({row_reg, col_reg}<8'b00100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00100100) && ({row_reg, col_reg}<8'b00100111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00100111)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00101001)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b00101010) && ({row_reg, col_reg}<8'b00110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b00110100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00110101)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b00110110) && ({row_reg, col_reg}<8'b00111000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b00111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00111001) && ({row_reg, col_reg}<8'b00111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b00111100) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01000011)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}==8'b01000100)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01000101) && ({row_reg, col_reg}<8'b01000111)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01000111) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}==8'b01001001)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01001010) && ({row_reg, col_reg}<8'b01001101)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b01001101) && ({row_reg, col_reg}<8'b01010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01010011) && ({row_reg, col_reg}<8'b01010101)) color_data = 12'b011000110011;
		if(({row_reg, col_reg}>=8'b01010101) && ({row_reg, col_reg}<8'b01011000)) color_data = 12'b110110100110;
		if(({row_reg, col_reg}>=8'b01011000) && ({row_reg, col_reg}<8'b01011100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b01011100) && ({row_reg, col_reg}<8'b01100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01100101) && ({row_reg, col_reg}<8'b01101010)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b01101010) && ({row_reg, col_reg}<8'b01110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01110100) && ({row_reg, col_reg}<8'b01110111)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}>=8'b01110111) && ({row_reg, col_reg}<8'b01111001)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b01111001)) color_data = 12'b001000001011;

		if(({row_reg, col_reg}>=8'b01111010) && ({row_reg, col_reg}<8'b10000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10000011) && ({row_reg, col_reg}<8'b10000110)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}>=8'b10000110) && ({row_reg, col_reg}<8'b10001010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}==8'b10001010)) color_data = 12'b001000001011;

		if(({row_reg, col_reg}>=8'b10001011) && ({row_reg, col_reg}<8'b10010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10010011) && ({row_reg, col_reg}<8'b10010110)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}>=8'b10010110) && ({row_reg, col_reg}<8'b10011011)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10011011) && ({row_reg, col_reg}<8'b10011101)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10011101) && ({row_reg, col_reg}<8'b10100011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10100011) && ({row_reg, col_reg}<8'b10100111)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}>=8'b10100111) && ({row_reg, col_reg}<8'b10101010)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10101010) && ({row_reg, col_reg}<8'b10101101)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10101101) && ({row_reg, col_reg}<8'b10110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10110100) && ({row_reg, col_reg}<8'b10111001)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}==8'b10111001)) color_data = 12'b110000100000;
		if(({row_reg, col_reg}>=8'b10111010) && ({row_reg, col_reg}<8'b10111100)) color_data = 12'b110110100110;

		if(({row_reg, col_reg}>=8'b10111100) && ({row_reg, col_reg}<8'b11000101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11000101) && ({row_reg, col_reg}<8'b11001011)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}==8'b11001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b11001100)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11001101) && ({row_reg, col_reg}<8'b11010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11010110) && ({row_reg, col_reg}<8'b11011011)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}>=8'b11011011) && ({row_reg, col_reg}<8'b11011101)) color_data = 12'b011000110011;

		if(({row_reg, col_reg}>=8'b11011101) && ({row_reg, col_reg}<8'b11100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11100111) && ({row_reg, col_reg}<8'b11101011)) color_data = 12'b001000001011;
		if(({row_reg, col_reg}>=8'b11101011) && ({row_reg, col_reg}<8'b11101101)) color_data = 12'b011000110011;


		if(({row_reg, col_reg}>=8'b11101101) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule