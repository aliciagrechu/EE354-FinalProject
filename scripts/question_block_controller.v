`timescale 1ns / 1ps

module question_block_controller(
    input clk,
    input move_clk,
    input bright,
    input rst,
    input [9:0] hCount,
    input [9:0] vCount,

    // mario position and movement
    input [9:0] mario_x,
    input [9:0] mario_y,
    input       mario_moving_up,

    output reg [11:0] rgb,
    output reg        qblock_valid,
    output reg        qblock_hit       // pulses high when mario first bumps it
);

    // -----------------------------------------------------------------------
    // Position — adjust these to match your level layout
    // -----------------------------------------------------------------------
    parameter BLOCK_X = 10'd304;   // TODO: adjust x position
    parameter BLOCK_Y = 10'd250;   // TODO: adjust y position — above floor platform
    parameter BLOCK_SIZE = 10'd16;
    parameter MARIO_W    = 10'd16;
    parameter MARIO_H    = 10'd16;

    // -----------------------------------------------------------------------
    // State — has mario hit it yet?
    // -----------------------------------------------------------------------
    reg been_hit;   // 0 = question block, 1 = empty block

    // -----------------------------------------------------------------------
    // Head bump detection — mario jumping up into the underside of the block
    // fires only once thanks to been_hit flag
    // -----------------------------------------------------------------------
    wire mario_right  = mario_x + MARIO_W - 1;
    wire mario_bottom = mario_y + MARIO_H - 1;

    // mario is directly below block and moving up into it
    wire touching_underside =
        !been_hit &&
        mario_moving_up &&
        (mario_x       <= BLOCK_X + BLOCK_SIZE - 1) &&
        (mario_right   >= BLOCK_X) &&
        (mario_y       <= BLOCK_Y + BLOCK_SIZE) &&
        (mario_bottom  >= BLOCK_Y - 1);

    // edge detection so qblock_hit only pulses for one cycle
    reg touching_last;
    always @(posedge move_clk or posedge rst) begin
        if (rst) begin
            been_hit      <= 1'b0;
            touching_last <= 1'b0;
            qblock_hit    <= 1'b0;
        end else begin
            touching_last <= touching_underside;
            if (touching_underside && !touching_last) begin
                been_hit   <= 1'b1;   // permanently switch to empty block
                qblock_hit <= 1'b1;   // pulse high for one cycle
            end else
                qblock_hit <= 1'b0;
        end
    end

    // -----------------------------------------------------------------------
    // Drawing — show question_block_rom if not hit, question_block2_rom if hit
    // -----------------------------------------------------------------------
    wire block_area =
        (hCount >= BLOCK_X) && (hCount < BLOCK_X + BLOCK_SIZE) &&
        (vCount >= BLOCK_Y) && (vCount < BLOCK_Y + BLOCK_SIZE);

    wire [3:0] sprite_row = vCount - BLOCK_Y;
    wire [3:0] sprite_col = hCount - BLOCK_X;

    wire [11:0] color_active, color_hit;

    question_block_rom qb_rom(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(color_active)
    );

    question_block2_rom qb2_rom(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(color_hit)
    );

    // pick which sprite to show based on been_hit
    wire [11:0] sprite_color = been_hit ? color_hit : color_active;

    always @(*) begin
        if (~bright) begin
            rgb         = 12'b000000000000;
            qblock_valid = 1'b0;
        end else if (block_area && sprite_color != 12'b000000000000) begin
            rgb         = sprite_color;
            qblock_valid = 1'b1;
        end else begin
            rgb         = 12'b000000000000;
            qblock_valid = 1'b0;
        end
    end

endmodule