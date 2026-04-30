`timescale 1ns / 1ps

module vga_top(
    input  ClkPort,
    input  BtnC,
    input  BtnU,
    input  BtnR,
    input  BtnL,
    input  BtnD,
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
    assign move_clk = DIV_CLK[20];

    // -----------------------------------------------------------------------
    // Scene register
    // -----------------------------------------------------------------------
    reg in_scene2;
    always @(posedge move_clk or posedge Reset) begin
        if (Reset)       in_scene2 <= 1'b0;
        else if (scroll_next) in_scene2 <= 1'b1;
    end

    // -----------------------------------------------------------------------
    // VGA signals
    // -----------------------------------------------------------------------
    wire bright;
    wire [9:0] hc, vc;
    wire clk25;
    wire [5:0] v_y;

    // -----------------------------------------------------------------------
    // Position wires
    // -----------------------------------------------------------------------
    wire [9:0] mario_x, mario_y;
    wire [9:0] mario_x_next, mario_y_next;
    wire [9:0] mario_y_fc;
    wire [9:0] mario_x_after_brick, mario_y_after_brick;
    wire [9:0] mario_x_after_stair, mario_y_after_stair;
    wire [9:0] mario_x_final, mario_y_final;

    wire on_floor;
    wire on_brick;
    wire on_stair;
    wire head_bumped_brick, head_bumped_stair;
    wire head_bumped = head_bumped_brick || head_bumped_stair;
    wire blocked_left_brick,  blocked_left_stair;
    wire blocked_right_brick, blocked_right_stair;
    wire blocked_left  = blocked_left_brick  || blocked_left_stair;
    wire blocked_right = blocked_right_brick || blocked_right_stair;

    // Collision chain final outputs
    // Scene 1: after brick_collision
    // Scene 2: after staircase_collision (chained after brick_collision)
    assign mario_x_final = in_scene2 ? mario_x_after_stair : mario_x_after_brick;
    assign mario_y_final = in_scene2 ? mario_y_after_stair : mario_y_after_brick;

    // on_brick is true if on a regular brick OR a staircase
    wire on_brick_combined = on_brick || on_stair;

    wire moving_up, moving_down, moving_left, moving_right;

    // -----------------------------------------------------------------------
    // Scene-1 brick wires (3 bricks)
    // -----------------------------------------------------------------------
    wire [11:0] brick_rgb0, brick_rgb1, brick_rgb2;
    wire        brick_valid0, brick_valid1, brick_valid2;

    wire any_brick_valid = (brick_valid0 | brick_valid1 | brick_valid2) && !in_scene2;
    wire [11:0] any_brick_rgb = brick_valid0 ? brick_rgb0 :
                                brick_valid1 ? brick_rgb1 :
                                               brick_rgb2;

    // -----------------------------------------------------------------------
    // RGB wires
    // -----------------------------------------------------------------------
    wire [11:0] mario_rgb, floor_rgb, bg_rgb;
    wire        mario_valid, floor_valid, bg_valid;

    wire mario_hit;
    wire [11:0] goomba_rgb;
    wire        goomba_valid;

    wire respawn;

    wire [11:0] coin_rgb;
    wire        coin_valid;
    wire        coin_collected;
    wire [2:0]  coin_count;

    wire [11:0] qblock_rgb;
    wire        qblock_valid;
    wire        qblock_hit;

    wire [11:0] flag_rgb;
    wire        flag_valid;
    wire        mario_touching_flag;
    wire        flag_slide;
    wire        mario_slide_done;

    wire [11:0] stair_rgb;
    wire        stair_valid;

    wire scroll_next;
	wire fell_in_pit;

    // -----------------------------------------------------------------------
    // Priority RGB mux
    // Mario > flag (slide sprite inside) > coins > qblocks > bricks/stairs >
    // goomba (scene 1 only) > floor > background
    // -----------------------------------------------------------------------
    wire [11:0] rgb;
    assign rgb =
        mario_valid                    ? mario_rgb   :
        flag_valid  && in_scene2       ? flag_rgb    :
        coin_valid  && !in_scene2      ? coin_rgb    :
        qblock_valid && !in_scene2     ? qblock_rgb  :
        any_brick_valid                ? any_brick_rgb :
        stair_valid && in_scene2       ? stair_rgb   :
        goomba_valid && !in_scene2     ? goomba_rgb  :
        floor_valid                    ? floor_rgb   :
        bg_valid                       ? bg_rgb      :
        12'b0;

    assign vgaR = rgb[11:8];
    assign vgaG = rgb[7:4];
    assign vgaB = rgb[3:0];

    // -----------------------------------------------------------------------
    // Module instantiations
    // -----------------------------------------------------------------------

    display_controller dc(
        .clk      (ClkPort),
        .clk25_out(clk25),
        .hSync    (hSync), .vSync(vSync),
        .bright   (bright),
        .hCount   (hc),    .vCount(vc)
    );

    // Goomba — only active in scene 1
    goomba_controller gc(
        .clk       (ClkPort),
        .move_clk  (move_clk),
        .bright    (bright),
        .rst       (BtnC),
        .hCount    (hc),    .vCount(vc),
        .mario_x   (mario_x), .mario_y(mario_y),
        .rgb       (goomba_rgb),
        .mario_hit (mario_hit),
        .goomba_valid(goomba_valid)
    );

    // Coins — only active in scene 1
    coin_controller cc(
        .clk          (ClkPort),
        .move_clk     (move_clk),
        .bright       (bright),
        .rst          (BtnC),
        .hCount       (hc),
        .vCount       (vc),
        .mario_x      (mario_x),
        .mario_y      (mario_y),
        .rgb          (coin_rgb),
        .coin_valid   (coin_valid),
        .coin_collected(coin_collected),
        .coin_count   (coin_count)
    );

    // Flag — only active in scene 2
    flag_controller flag_inst(
        .clk               (ClkPort),
        .bright            (bright),
        .hCount            (hc),
        .vCount            (vc),
        .mario_x           (mario_x),
        .mario_y           (mario_y),
        .flag_slide        (flag_slide),
        .rgb               (flag_rgb),
        .flag_valid        (flag_valid),
        .mario_touching_flag(mario_touching_flag)
    );

    // Gameplay state machine
    gameplay_states gs(
        .Clk              (move_clk),
        .Reset            (BtnC),
        .BtnD             (BtnD),
        .respawn          (respawn),
        .Start            (1'b0),   .Ack(BtnD),
        .marioHitGoombaFlag(mario_hit && !in_scene2),  // goomba only in scene 1
        .marioTouchFlag   (mario_touching_flag && in_scene2),
        .marioSlideDone   (mario_slide_done),
        .flag_slide       (flag_slide),
        .coinCollected    (coin_collected),   // fixed port name
        .qblockHit        (qblock_hit),
        .Qi(Qi), .Qp(Qp), .Qw(Qw), .Ql(Ql)
    );

    mario_controller mc(
        .clk           (clk25),
        .move_clk      (move_clk),
        .rst           (BtnC),
        .respawn       (respawn),
        .flag_slide    (flag_slide),
        .slide_done    (mario_slide_done),
        .btnU          (BtnU), .btnL(BtnL), .btnR(BtnR),
        .hCount        (hc),   .vCount(vc),
        .mario_x_final (mario_x_final),
        .mario_y_final (mario_y_final),
        .on_floor      (on_floor),
        .on_brick      (on_brick_combined),   // bricks + stairs
        .head_bumped   (head_bumped),
        .blocked_left  (blocked_left),
        .blocked_right (blocked_right),
        .mario_x_next  (mario_x_next),
        .mario_y_next  (mario_y_next),
        .mario_x       (mario_x),
        .mario_y       (mario_y),
        .moving_up     (moving_up),
        .moving_down   (moving_down),
        .moving_left   (moving_left),
        .moving_right  (moving_right),
        .rgb           (mario_rgb),
        .valid         (mario_valid),
        .bright        (bright),
        .v_y           (v_y),
        .in_scene2(in_scene2),
		.fell_in_pit(fell_in_pit)
    );

    floor_collision fc(
        .clk         (move_clk),
        .rst         (BtnC),
        .mario_x     (mario_x),
        .mario_y     (mario_y),
        .mario_y_next(mario_y_next),
        .mario_y_out (mario_y_fc),
        .on_floor    (on_floor)
    );

    // Scene 1 brick collision (always active — bricks only draw when !in_scene2)
    brick_collision bc(
        .clk              (move_clk),
        .rst              (BtnC),
        .mario_x          (mario_x),
        .mario_y          (mario_y),
        .mario_x_next     (mario_x_next),
        .mario_y_next     (mario_y_fc),
        .mario_moving_right(moving_right),
        .mario_moving_left (moving_left),
        .mario_moving_down (moving_down),
        .mario_moving_up   (moving_up),
        .mario_x_out      (mario_x_after_brick),
        .mario_y_out      (mario_y_after_brick),
        .on_brick         (on_brick),
        .head_bumped      (head_bumped_brick),
        .blocked_left     (blocked_left_brick),
        .blocked_right    (blocked_right_brick)
    );

    // Scene 2 staircase collision (chained after brick_collision)
    staircase_collision sc(
        .clk              (move_clk),
        .rst              (BtnC),
        .mario_x          (mario_x),
        .mario_y          (mario_y),
        .mario_x_next     (mario_x_after_brick),
        .mario_y_next     (mario_y_after_brick),
        .mario_moving_right(moving_right),
        .mario_moving_left (moving_left),
        .mario_moving_down (moving_down),
        .mario_moving_up   (moving_up),
        .mario_x_out      (mario_x_after_stair),
        .mario_y_out      (mario_y_after_stair),
        .on_stair         (on_stair),
        .head_bumped_s    (head_bumped_stair),
        .blocked_left_s   (blocked_left_stair),
        .blocked_right_s  (blocked_right_stair)
    );

    background_controller bgc(
        .clk        (ClkPort),
        .bright     (bright),
        .hCount     (hc),
        .vCount     (vc),
        .in_scene2(in_scene2)
        .rgb        (bg_rgb),
        .bg_valid   (bg_valid)
    );

    question_block_controller qbc(
        .clk         (ClkPort),
        .move_clk    (move_clk),
        .bright      (bright),
        .rst         (BtnC),
        .hCount      (hc),
        .vCount      (vc),
        .mario_x     (mario_x),
        .mario_y     (mario_y),
        .mario_moving_up(moving_up),
        .rgb         (qblock_rgb),
        .qblock_valid(qblock_valid),
        .qblock_hit  (qblock_hit)
    );

    floor_controller flc(
        .clk       (ClkPort),
        .bright    (bright),
        .hCount    (hc), .vCount(vc),
        .rgb       (floor_rgb),
        .floor_valid(floor_valid)
    );

    // Scene 1 bricks (suppressed in scene 2 via any_brick_valid gating)
    brick_controller brick_inst0(
        .clk        (ClkPort),
        .bright     (bright),
        .hCount     (hc),  .vCount(vc),
        .brick_x    (288),
        .brick_y    (300),
        .brick_active(1'b1),
        .rgb        (brick_rgb0),
        .brick_valid(brick_valid0)
    );
    brick_controller brick_inst1(
        .clk        (ClkPort),
        .bright     (bright),
        .hCount     (hc),  .vCount(vc),
        .brick_x    (352),
        .brick_y    (300),
        .brick_active(1'b1),
        .rgb        (brick_rgb1),
        .brick_valid(brick_valid1)
    );
    brick_controller brick_inst2(
        .clk        (ClkPort),
        .bright     (bright),
        .hCount     (hc),  .vCount(vc),
        .brick_x    (416),
        .brick_y    (300),
        .brick_active(1'b1),
        .rgb        (brick_rgb2),
        .brick_valid(brick_valid2)
    );

    // Scene 2 staircases
    staircase_controller stair_ctrl(
        .clk       (ClkPort),
        .bright    (bright),
        .hCount    (hc),  .vCount(vc),
        .rgb       (stair_rgb),
        .stair_valid(stair_valid)
    );

    // -----------------------------------------------------------------------
    // SSD
    // -----------------------------------------------------------------------
    reg [3:0]  SSD;
    wire [3:0] SSD3, SSD2, SSD1, SSD0;
    reg [7:0]  SSD_CATHODES;
    wire [1:0] ssdscan_clk;

    assign SSD3 = 4'b0000;
    assign SSD2 = 4'b0000;
    assign SSD1 = {3'b0, in_scene2};   // shows which scene we're in
    assign SSD0 = {1'b0, coin_count};

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