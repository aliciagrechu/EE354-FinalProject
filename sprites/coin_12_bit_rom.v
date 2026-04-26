module coin_rom
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

		if(({row_reg, col_reg}>=8'b00000000) && ({row_reg, col_reg}<8'b00010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00010110) && ({row_reg, col_reg}<8'b00011001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==8'b00011001)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b00011010) && ({row_reg, col_reg}<8'b00100100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b00100100) && ({row_reg, col_reg}<8'b00100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b00100110) && ({row_reg, col_reg}<8'b00101100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b00101100) && ({row_reg, col_reg}<8'b00110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00110011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b00110100) && ({row_reg, col_reg}<8'b00110110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=8'b00110110) && ({row_reg, col_reg}<8'b00111001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b00111001) && ({row_reg, col_reg}<8'b00111101)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b00111101) && ({row_reg, col_reg}<8'b01000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01000011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01000100) && ({row_reg, col_reg}<8'b01000110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01000111) && ({row_reg, col_reg}<8'b01001001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01001010) && ({row_reg, col_reg}<8'b01001101)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b01001101) && ({row_reg, col_reg}<8'b01010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01010011) && ({row_reg, col_reg}<8'b01010110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01010110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01010111) && ({row_reg, col_reg}<8'b01011001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01011010) && ({row_reg, col_reg}<8'b01011110)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b01011110) && ({row_reg, col_reg}<8'b01100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01100010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01100011) && ({row_reg, col_reg}<8'b01100110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01100111) && ({row_reg, col_reg}<8'b01101001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01101010) && ({row_reg, col_reg}<8'b01101110)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b01101110) && ({row_reg, col_reg}<8'b01110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b01110010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01110011) && ({row_reg, col_reg}<8'b01110110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01110110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b01110111) && ({row_reg, col_reg}<8'b01111001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b01111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b01111010) && ({row_reg, col_reg}<8'b01111110)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b01111110) && ({row_reg, col_reg}<8'b10000010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10000010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10000011) && ({row_reg, col_reg}<8'b10000110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10000110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10000111) && ({row_reg, col_reg}<8'b10001001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10001010) && ({row_reg, col_reg}<8'b10001110)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b10001110) && ({row_reg, col_reg}<8'b10010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10010011) && ({row_reg, col_reg}<8'b10010110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10010110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10010111) && ({row_reg, col_reg}<8'b10011001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10011010) && ({row_reg, col_reg}<8'b10011110)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b10011110) && ({row_reg, col_reg}<8'b10100010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10100010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10100011) && ({row_reg, col_reg}<8'b10100110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10100110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10100111) && ({row_reg, col_reg}<8'b10101001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10101010) && ({row_reg, col_reg}<8'b10101110)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b10101110) && ({row_reg, col_reg}<8'b10110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b10110011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10110100) && ({row_reg, col_reg}<8'b10110110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10110110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b10110111) && ({row_reg, col_reg}<8'b10111001)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}==8'b10111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b10111010) && ({row_reg, col_reg}<8'b10111101)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b10111101) && ({row_reg, col_reg}<8'b11000011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b11000011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b11000100) && ({row_reg, col_reg}<8'b11000110)) color_data = 12'b111010110001;
		if(({row_reg, col_reg}>=8'b11000110) && ({row_reg, col_reg}<8'b11001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11001010) && ({row_reg, col_reg}<8'b11001101)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b11001101) && ({row_reg, col_reg}<8'b11010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b11010100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=8'b11010101) && ({row_reg, col_reg}<8'b11011100)) color_data = 12'b111010110001;

		if(({row_reg, col_reg}>=8'b11011100) && ({row_reg, col_reg}<8'b11100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11100110) && ({row_reg, col_reg}<8'b11101010)) color_data = 12'b111010110001;


		if(({row_reg, col_reg}>=8'b11101010) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule