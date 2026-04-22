`timescale 1ns / 1ps

module vga_top(
	input ClkPort,
	input BtnC,
	input BtnU,
	input BtnR,
	input BtnL,
	input BtnD,
	output hSync, vSync,
	output [3:0] vgaR, vgaG, vgaB,
	output An0, An1, An2, An3, An4, An5, An6, An7,
	output Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp,
	output QuadSpiFlashCS
);

	// -----------------------------------------------------------------------
	// Reset
	// -----------------------------------------------------------------------
	wire Reset;
	assign Reset = BtnC;
    wire Qi, Qp, Qw, Ql;  
	// -----------------------------------------------------------------------
	// Clock divider
	// -----------------------------------------------------------------------
	reg [27:0] DIV_CLK;
	always @(posedge ClkPort, posedge Reset) begin : CLOCK_DIVIDER
		if (Reset) DIV_CLK <= 28'b0;
		else       DIV_CLK <= DIV_CLK + 1'b1;
	end
	wire move_clk;
	assign move_clk = DIV_CLK[19];

	// -----------------------------------------------------------------------
	// VGA signals
	// -----------------------------------------------------------------------
	wire bright;
	wire [9:0] hc, vc;

	// -----------------------------------------------------------------------
	// Position wires
	// -----------------------------------------------------------------------
	wire [9:0] mario_x, mario_y;
	wire [9:0] mario_x_next, mario_y_next;
	wire [9:0] mario_y_fc;
	wire [9:0] mario_x_final, mario_y_final;
	wire on_floor;
	wire moving_up, moving_down, moving_left, moving_right;

	// tie off unused collision inputs for now
	wire on_brick     = 1'b0;
	wire head_bumped  = 1'b0;
	wire blocked_left = 1'b0;
	wire blocked_right= 1'b0;

	// bypass brick_collision — feed floor resolved pos directly to final
	assign mario_x_final = mario_x_next;
	assign mario_y_final = mario_y_fc;

	// -----------------------------------------------------------------------
	// RGB wires
	// -----------------------------------------------------------------------
	wire [11:0] mario_rgb, floor_rgb;
	wire        mario_valid, floor_valid;
    wire mario_hit;
    wire [11:0] goomba_rgb;
    wire goomba_valid;
	// priority mux — mario on top, then floor, then sky blue background
	wire [11:0] rgb;
	assign rgb = (mario_valid) ? mario_rgb :
	             (goomba_valid) ? goomba_rgb :
	             (floor_valid) ? floor_rgb :
	             12'b010110001111; // sky blue

	assign vgaR = rgb[11:8];
	assign vgaG = rgb[7:4];
	assign vgaB = rgb[3:0];
    
    
	// -----------------------------------------------------------------------
	// Module instantiations
	// -----------------------------------------------------------------------
	display_controller dc(
		.clk(ClkPort),
		.hSync(hSync), .vSync(vSync),
		.bright(bright),
		.hCount(hc), .vCount(vc)
	);
   

    goomba_controller gc(
        .clk(ClkPort),
        .bright(bright),
        .rst(BtnC),
        .hCount(hc), .vCount(vc),
        .mario_x(mario_x), .mario_y(mario_y),
        .rgb(goomba_rgb),
        .mario_hit(mario_hit),
        .goomba_valid(goomba_valid)
    );

    gameplay_states gs(
        .Clk(move_clk),
        .Reset(BtnC),
        .BtnD(BtnD),
        .Start(1'b0), .Ack(BtnD),
        .marioHitGoombaFlag(mario_hit),  // ← the wire that connects them
        .Qi(Qi), .Qp(Qp), .Qw(Qw), .Ql(Ql)
    );
	mario_controller mc(
		.clk(move_clk),
		.rst(BtnC),
		.btnU(BtnU), .btnL(BtnL), .btnR(BtnR),
		.hCount(hc), .vCount(vc),
		.mario_x_final(mario_x_final),
		.mario_y_final(mario_y_final),
		.on_floor(on_floor),
		.on_brick(on_brick),
		.head_bumped(head_bumped),
		.blocked_left(blocked_left),
		.blocked_right(blocked_right),
		.mario_x_next(mario_x_next),
		.mario_y_next(mario_y_next),
		.mario_x(mario_x),
		.mario_y(mario_y),
		.moving_up(moving_up),
		.moving_down(moving_down),
		.moving_left(moving_left),
		.moving_right(moving_right),
		.rgb(mario_rgb),
		.valid(mario_valid),
		.bright(bright)
	);

	floor_collision fc(
		.clk(move_clk),
		.rst(BtnC),
		.mario_x(mario_x),
		.mario_y(mario_y),
		.mario_y_next(mario_y_next),
		.mario_y_out(mario_y_fc),
		.on_floor(on_floor)
	);

	floor_controller flc(
		.clk(ClkPort),
		.bright(bright),
		.hCount(hc), .vCount(vc),
		.rgb(floor_rgb),
		.floor_valid(floor_valid)
	);

	// -----------------------------------------------------------------------
	// SSD — displaying mario_x on SSD for debug
	// -----------------------------------------------------------------------
	reg [3:0]  SSD;
	wire [3:0] SSD3, SSD2, SSD1, SSD0;
	reg [7:0]  SSD_CATHODES;
	wire [1:0] ssdscan_clk;

	// show mario_x on SSD for easy debugging
	assign SSD3 = 4'b0000;
	assign SSD2 = 4'b0000;
	assign SSD1 = mario_x[7:4];
	assign SSD0 = mario_x[3:0];

	assign ssdscan_clk = DIV_CLK[19:18];
	assign An0 = !(~ssdscan_clk[1] && ~ssdscan_clk[0]);
	assign An1 = !(~ssdscan_clk[1] &&  ssdscan_clk[0]);
	assign An2 = !( ssdscan_clk[1] && ~ssdscan_clk[0]);
	assign An3 = !( ssdscan_clk[1] &&  ssdscan_clk[0]);
	assign {An7, An6, An5, An4} = 4'b1111;

	always @(ssdscan_clk, SSD0, SSD1, SSD2, SSD3) begin : SSD_SCAN_OUT
		case (ssdscan_clk)
			2'b00: SSD = SSD0;
			2'b01: SSD = SSD1;
			2'b10: SSD = SSD2;
			2'b11: SSD = SSD3;
		endcase
	end

	always @(SSD) begin : HEX_TO_SSD
		case (SSD)
			4'b0000: SSD_CATHODES = 8'b00000010;
			4'b0001: SSD_CATHODES = 8'b10011110;
			4'b0010: SSD_CATHODES = 8'b00100100;
			4'b0011: SSD_CATHODES = 8'b00001100;
			4'b0100: SSD_CATHODES = 8'b10011000;
			4'b0101: SSD_CATHODES = 8'b01001000;
			4'b0110: SSD_CATHODES = 8'b01000000;
			4'b0111: SSD_CATHODES = 8'b00011110;
			4'b1000: SSD_CATHODES = 8'b00000000;
			4'b1001: SSD_CATHODES = 8'b00001000;
			4'b1010: SSD_CATHODES = 8'b00010000;
			4'b1011: SSD_CATHODES = 8'b11000000;
			4'b1100: SSD_CATHODES = 8'b01100010;
			4'b1101: SSD_CATHODES = 8'b10000100;
			4'b1110: SSD_CATHODES = 8'b01100000;
			4'b1111: SSD_CATHODES = 8'b01110000;
			default: SSD_CATHODES = 8'bXXXXXXXX;
		endcase
	end

	assign {Ca, Cb, Cc, Cd, Ce, Cf, Cg, Dp} = SSD_CATHODES;
	assign QuadSpiFlashCS = 1'b1;

endmodule