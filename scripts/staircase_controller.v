`timescale 1ns / 1ps

// Draws both staircases that appear in scene 2.
// Left staircase  : left_staircase_rom  (128×128, row[6:0] col[6:0])
// Right staircase : right_staircase_rom (128×128, row[6:0] col[6:0])
//
// Positions are tunable via localparams.
// Transparency: pixel is transparent when color_data == 12'b000000000000.

module staircase_controller(
    input  wire        clk,
    input  wire        bright,
    input  wire [9:0]  hCount,
    input  wire [9:0]  vCount,
    output reg  [11:0] rgb,
    output wire        stair_valid
);

    // -----------------------------------------------------------------------
    // Position parameters — adjust to match background2.png layout
    // -----------------------------------------------------------------------
    localparam LEFT_X  = 10'd144;   // left edge of left staircase
    localparam LEFT_Y  = 10'd320;   // top  edge of left staircase
    localparam RIGHT_X = 10'd400;   // left edge of right staircase
    localparam RIGHT_Y = 10'd320;   // top  edge of right staircase

    localparam STAIR_W = 10'd128;
    localparam STAIR_H = 10'd128;

    // -----------------------------------------------------------------------
    // Bounding-box hit tests
    // -----------------------------------------------------------------------
    wire in_left  = (hCount >= LEFT_X)  && (hCount < LEFT_X  + STAIR_W) &&
                    (vCount >= LEFT_Y)   && (vCount < LEFT_Y  + STAIR_H);
    wire in_right = (hCount >= RIGHT_X) && (hCount < RIGHT_X + STAIR_W) &&
                    (vCount >= RIGHT_Y)  && (vCount < RIGHT_Y + STAIR_H);

    // -----------------------------------------------------------------------
    // Sprite-relative pixel coords
    // -----------------------------------------------------------------------
    wire [6:0] left_col  = hCount - LEFT_X;
    wire [6:0] left_row  = vCount - LEFT_Y;
    wire [6:0] right_col = hCount - RIGHT_X;
    wire [6:0] right_row = vCount - RIGHT_Y;

    // -----------------------------------------------------------------------
    // ROM instances
    // -----------------------------------------------------------------------
    wire [11:0] left_color;
    left_staircase_rom left_rom (
        .clk        (clk),
        .row        (left_row),
        .col        (left_col),
        .color_data (left_color)
    );

    wire [11:0] right_color;
    right_staircase_rom right_rom (
        .clk        (clk),
        .row        (right_row),
        .col        (right_col),
        .color_data (right_color)
    );

    // -----------------------------------------------------------------------
    // Pixel valid — non-black pixel inside either staircase
    // -----------------------------------------------------------------------
    // ROM has 1-cycle latency; gate visibility on the registered-address window
    // by using combinational bounds (the ROM itself is registered so color_data
    // lags by 1 pixel — this is fine for display because hCount also advances).
    wire left_pixel_valid  = in_left  && (left_color  != 12'b0);
    wire right_pixel_valid = in_right && (right_color != 12'b0);

    assign stair_valid = bright && (left_pixel_valid || right_pixel_valid);

    // -----------------------------------------------------------------------
    // RGB output
    // -----------------------------------------------------------------------
    always @(*) begin
        if (!bright)
            rgb = 12'b0;
        else if (left_pixel_valid)
            rgb = left_color;
        else if (right_pixel_valid)
            rgb = right_color;
        else
            rgb = 12'b0;
    end

endmodule