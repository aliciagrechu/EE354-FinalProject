module question_block2_rom
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
		if(({row_reg, col_reg}>=8'b00000001) && ({row_reg, col_reg}<8'b00001111)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}==8'b00001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==8'b00010000)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00010001) && ({row_reg, col_reg}<8'b00011111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00011111) && ({row_reg, col_reg}<8'b00100001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b00100001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b00100010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00100011) && ({row_reg, col_reg}<8'b00101101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b00101101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b00101110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00101111) && ({row_reg, col_reg}<8'b00110001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b00110001) && ({row_reg, col_reg}<8'b00111111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b00111111) && ({row_reg, col_reg}<8'b01000001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01000001) && ({row_reg, col_reg}<8'b01001111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01001111) && ({row_reg, col_reg}<8'b01010001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01010001) && ({row_reg, col_reg}<8'b01011111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01011111) && ({row_reg, col_reg}<8'b01100001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01100001) && ({row_reg, col_reg}<8'b01101111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01101111) && ({row_reg, col_reg}<8'b01110001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b01110001) && ({row_reg, col_reg}<8'b01111111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b01111111) && ({row_reg, col_reg}<8'b10000001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10000001) && ({row_reg, col_reg}<8'b10001111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10001111) && ({row_reg, col_reg}<8'b10010001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10010001) && ({row_reg, col_reg}<8'b10011111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10011111) && ({row_reg, col_reg}<8'b10100001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10100001) && ({row_reg, col_reg}<8'b10101111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10101111) && ({row_reg, col_reg}<8'b10110001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b10110001) && ({row_reg, col_reg}<8'b10111111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b10111111) && ({row_reg, col_reg}<8'b11000001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11000001) && ({row_reg, col_reg}<8'b11001111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b11001111) && ({row_reg, col_reg}<8'b11010001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11010001)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11010010)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11010011) && ({row_reg, col_reg}<8'b11011101)) color_data = 12'b101001010010;
		if(({row_reg, col_reg}==8'b11011101)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11011110)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}>=8'b11011111) && ({row_reg, col_reg}<8'b11100001)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}>=8'b11100001) && ({row_reg, col_reg}<8'b11101111)) color_data = 12'b101001010010;

		if(({row_reg, col_reg}==8'b11101111)) color_data = 12'b010000100001;
		if(({row_reg, col_reg}==8'b11110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=8'b11110001) && ({row_reg, col_reg}<8'b11111111)) color_data = 12'b010000100001;

		if(({row_reg, col_reg}>=8'b11111111) && ({row_reg, col_reg}<=8'b11111111)) color_data = 12'b000000000000;
	end
endmodule