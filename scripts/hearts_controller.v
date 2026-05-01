`timescale 1ns / 1ps

// hearts_controller.v
// Draws up to 3 hearts in the top-left corner of the screen.
// Each heart is 32x32. They are spaced 40px apart.
// Hearts disappear as lives are lost.

module hearts_controller(
    input  wire        clk,
    input  wire        bright,
    input  wire [9:0]  hCount,
    input  wire [9:0]  vCount,
    input  wire [1:0]  lives,       // from gameplay_states lives_out
    output reg  [11:0] rgb,
    output wire        hearts_valid
);

    // -----------------------------------------------------------------------
    // Position parameters — adjust as needed
    // -----------------------------------------------------------------------
    localparam HEART_Y   = 8;    // top edge of hearts
    localparam HEART_W   = 32;
    localparam HEART_H   = 32;
    localparam SPACING   = 40;   // distance between heart left edges

    localparam HEART1_X  = 152;  // leftmost heart
    localparam HEART2_X  = HEART1_X + SPACING;   // 192
    localparam HEART3_X  = HEART1_X + SPACING*2; // 232

    // -----------------------------------------------------------------------
    // Which hearts are visible based on lives count
    // lives=3 → all 3, lives=2 → 2, lives=1 → 1, lives=0 → none
    // -----------------------------------------------------------------------
    wire heart1_active = (lives >= 2'd1);
    wire heart2_active = (lives >= 2'd2);
    wire heart3_active = (lives == 2'd3);

    // -----------------------------------------------------------------------
    // Bounding box tests
    // -----------------------------------------------------------------------
    wire in_heart1 = heart1_active &&
                     (hCount >= HEART1_X) && (hCount < HEART1_X + HEART_W) &&
                     (vCount >= HEART_Y)  && (vCount < HEART_Y  + HEART_H);

    wire in_heart2 = heart2_active &&
                     (hCount >= HEART2_X) && (hCount < HEART2_X + HEART_W) &&
                     (vCount >= HEART_Y)  && (vCount < HEART_Y  + HEART_H);

    wire in_heart3 = heart3_active &&
                     (hCount >= HEART3_X) && (hCount < HEART3_X + HEART_W) &&
                     (vCount >= HEART_Y)  && (vCount < HEART_Y  + HEART_H);

    // -----------------------------------------------------------------------
    // ROM pixel coordinates
    // -----------------------------------------------------------------------
    wire [4:0] row1 = vCount - HEART_Y;
    wire [4:0] col1 = hCount - HEART1_X;
    wire [4:0] col2 = hCount - HEART2_X;
    wire [4:0] col3 = hCount - HEART3_X;

    // -----------------------------------------------------------------------
    // ROM instances — one per heart
    // -----------------------------------------------------------------------
    wire [11:0] color1, color2, color3;

    heart_rom heart_rom1(
        .clk(clk), .row(row1), .col(col1), .color_data(color1)
    );
    heart_rom heart_rom2(
        .clk(clk), .row(row1), .col(col2), .color_data(color2)
    );
    heart_rom heart_rom3(
        .clk(clk), .row(row1), .col(col3), .color_data(color3)
    );

    // -----------------------------------------------------------------------
    // Pixel validity — non-transparent pixel inside an active heart
    // -----------------------------------------------------------------------
    wire p1 = in_heart1 && (color1 != 12'b0);
    wire p2 = in_heart2 && (color2 != 12'b0);
    wire p3 = in_heart3 && (color3 != 12'b0);

    assign hearts_valid = bright && (p1 || p2 || p3);

    // -----------------------------------------------------------------------
    // RGB output
    // -----------------------------------------------------------------------
    always @(*) begin
        if (!bright)
            rgb = 12'b0;
        else if (p1)
            rgb = color1;
        else if (p2)
            rgb = color2;
        else if (p3)
            rgb = color3;
        else
            rgb = 12'b0;
    end

endmodule