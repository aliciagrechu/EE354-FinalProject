`timescale 1ns / 1ps

module question_block_controller(
    input clk,
    input move_clk,
    input bright,
    input rst,
    input [9:0] hCount,
    input [9:0] vCount,
    input [9:0] mario_x,
    input [9:0] mario_y,
    input       mario_moving_up,
    output reg [11:0] rgb,
    output reg        qblock_valid,
    output reg        qblock_hit
);

    parameter BLOCK_SIZE = 32;
    parameter MARIO_W    = 32;
    parameter MARIO_H    = 32;
    parameter NUM_BLOCKS = 4;

    // -----------------------------------------------------------------------
    // Block positions — adjust these to match your level layout
    // Screen is 640x480, floor at y=448
    // -----------------------------------------------------------------------
    wire [9:0] block_x [0:3];
    wire [9:0] block_y [0:3];

    // TODO: adjust position for block coin as needed. this is just mockup
    assign block_x[0] = 288;  // TODO: adjust — higher up center block
    assign block_y[0] = 200;  // TODO: adjust — higher up center block

    assign block_x[1] = 272;  // TODO: adjust — middle left question block
    assign block_y[1] = 270;  // TODO: adjust — middle row

    assign block_x[2] = 304;  // TODO: adjust — middle right question block
    assign block_y[2] = 270;  // TODO: adjust — middle row

    assign block_x[3] = 400;  // TODO: adjust — right side question block
    assign block_y[3] = 270;  // TODO: adjust — right of brick platform

    // -----------------------------------------------------------------------
    // Per-block been_hit state
    // -----------------------------------------------------------------------
    reg [3:0] been_hit;   // bit i = 1 means block i has been hit

    // -----------------------------------------------------------------------
    // Head bump detection per block
    // -----------------------------------------------------------------------
    wire [3:0] touching_underside;
    genvar g;
    generate
        for (g = 0; g < NUM_BLOCKS; g = g + 1) begin : COLLISION
            assign touching_underside[g] =
                !been_hit[g] &&
                mario_moving_up &&
                (mario_x             <= block_x[g] + BLOCK_SIZE - 1) &&
                (mario_x + MARIO_W   >= block_x[g]) &&
                (mario_y             <= block_y[g] + BLOCK_SIZE) &&
                (mario_y + MARIO_H   >= block_y[g] - 1);
        end
    endgenerate

    // edge detection + been_hit update
    reg [3:0] touching_last;
    integer i;
    always @(posedge move_clk or posedge rst) begin
        if (rst) begin
            been_hit      <= 4'b0000;
            touching_last <= 4'b0000;
            qblock_hit    <= 1'b0;
        end else begin
            touching_last <= touching_underside;
            qblock_hit    <= 1'b0;   // default low
            for (i = 0; i < NUM_BLOCKS; i = i + 1) begin
                if (touching_underside[i] && !touching_last[i]) begin
                    been_hit[i] <= 1'b1;
                    qblock_hit  <= 1'b1;   // pulse high for one cycle
                end
            end
        end
    end

    // -----------------------------------------------------------------------
    // Drawing — one ROM pair per block
    // -----------------------------------------------------------------------
    wire [4:0] sprite_row [0:3];
    wire [4:0] sprite_col [0:3];
    wire       in_block   [0:3];
    wire [11:0] color_active [0:3];
    wire [11:0] color_hit    [0:3];

    generate
        for (g = 0; g < NUM_BLOCKS; g = g + 1) begin : DRAW
            assign in_block[g]    = (hCount >= block_x[g]) &&
                                    (hCount <  block_x[g] + BLOCK_SIZE) &&
                                    (vCount >= block_y[g]) &&
                                    (vCount <  block_y[g] + BLOCK_SIZE);
            assign sprite_row[g]  = vCount - block_y[g];
            assign sprite_col[g]  = hCount - block_x[g];

            question_block_rom qb_rom(
                .clk(clk),
                .row(sprite_row[g]),
                .col(sprite_col[g]),
                .color_data(color_active[g])
            );

            question_block2_rom qb2_rom(
                .clk(clk),
                .row(sprite_row[g]),
                .col(sprite_col[g]),
                .color_data(color_hit[g])
            );
        end
    endgenerate

    // pick active color per block based on been_hit
    wire [11:0] sprite_color [0:3];
    generate
        for (g = 0; g < NUM_BLOCKS; g = g + 1) begin : COLOR_SEL
            assign sprite_color[g] = been_hit[g] ? color_hit[g] : color_active[g];
        end
    endgenerate

    // draw whichever block the current pixel falls inside
    always @(*) begin
        rgb         = 12'b000000000000;
        qblock_valid = 1'b0;
        if (~bright) begin
            rgb         = 12'b000000000000;
            qblock_valid = 1'b0;
        end else if (in_block[0] && sprite_color[0] != 12'b000000000000) begin
            rgb         = sprite_color[0];
            qblock_valid = 1'b1;
        end else if (in_block[1] && sprite_color[1] != 12'b000000000000) begin
            rgb         = sprite_color[1];
            qblock_valid = 1'b1;
        end else if (in_block[2] && sprite_color[2] != 12'b000000000000) begin
            rgb         = sprite_color[2];
            qblock_valid = 1'b1;
        end else if (in_block[3] && sprite_color[3] != 12'b000000000000) begin
            rgb         = sprite_color[3];
            qblock_valid = 1'b1;
        end
    end

endmodule