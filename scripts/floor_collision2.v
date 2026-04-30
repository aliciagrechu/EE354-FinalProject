`timescale 1ns / 1ps

// floor_controller_scene2.v
//
// Draws two floor segments for scene 2, leaving a gap between them
// that matches the pit between the two staircases.
//
// Left  segment: x = 144 to 271 (128px wide), y = 448 to 511
// Right segment: x = 400 to 623 (224px wide), y = 448 to 511
// Gap           : x = 272 to 399 — no floor drawn here (pit)
//
// Both ROMs are 64 rows tall so they cover y=448..511 (below the floor line).

module floor_controller_scene2(
    input  wire        clk,
    input  wire        bright,
    input  wire [9:0]  hCount,
    input  wire [9:0]  vCount,
    output reg  [11:0] rgb,
    output wire        floor2_valid
);

    // -----------------------------------------------------------------------
    // Segment positions — must match staircase_controller localparams
    // -----------------------------------------------------------------------
    localparam LEFT_FLOOR_X  = 10'd144;   // left edge of screen active area
    localparam LEFT_FLOOR_W  = 10'd128;   // = LEFT_X + STAIR_W - LEFT_FLOOR_X
                                           //   = 144 + 128 = 272, width = 128
    localparam RIGHT_FLOOR_X = 10'd400;   // = RIGHT_X (start of right staircase)
    localparam RIGHT_FLOOR_W = 10'd224;   // = 624 - 400
    localparam FLOOR_Y       = 10'd448;   // top of floor strip
    localparam FLOOR_H       = 10'd32;    // visible floor height

    // -----------------------------------------------------------------------
    // Bounding box tests
    // -----------------------------------------------------------------------
    wire in_left  = (hCount >= LEFT_FLOOR_X) &&
                    (hCount <  LEFT_FLOOR_X + LEFT_FLOOR_W) &&
                    (vCount >= FLOOR_Y) &&
                    (vCount <  FLOOR_Y + FLOOR_H);

    wire in_right = (hCount >= RIGHT_FLOOR_X) &&
                    (hCount <  RIGHT_FLOOR_X + RIGHT_FLOOR_W) &&
                    (vCount >= FLOOR_Y) &&
                    (vCount <  FLOOR_Y + FLOOR_H);

    // -----------------------------------------------------------------------
    // ROM addresses
    // -----------------------------------------------------------------------
    wire [5:0] row_addr   = vCount - FLOOR_Y;

    wire [7:0] left_col   = hCount - LEFT_FLOOR_X;
    wire [8:0] right_col  = hCount - RIGHT_FLOOR_X;

    // -----------------------------------------------------------------------
    // ROM instances
    // -----------------------------------------------------------------------
    wire [11:0] left_color;
    floor_2a_rom left_floor_rom (
        .clk        (clk),
        .row        (row_addr),
        .col        (left_col),
        .color_data (left_color)
    );

    wire [11:0] right_color;
    floor_2b_rom right_floor_rom (
        .clk        (clk),
        .row        (row_addr),
        .col        (right_col),
        .color_data (right_color)
    );

    // -----------------------------------------------------------------------
    // Pixel validity
    // -----------------------------------------------------------------------
    wire left_pixel  = in_left  && (left_color  != 12'b0);
    wire right_pixel = in_right && (right_color != 12'b0);

    assign floor2_valid = bright && (left_pixel || right_pixel);

    // -----------------------------------------------------------------------
    // RGB output
    // -----------------------------------------------------------------------
    always @(*) begin
        if (!bright)
            rgb = 12'b0;
        else if (left_pixel)
            rgb = left_color;
        else if (right_pixel)
            rgb = right_color;
        else
            rgb = 12'b0;
    end

endmodule