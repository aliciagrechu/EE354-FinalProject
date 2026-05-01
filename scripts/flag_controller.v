`timescale 1ns / 1ps

module flag_controller(
    input  wire        clk,
    input  wire        bright,
    input  wire [9:0]  hCount, vCount,
    input  wire [9:0]  mario_x,
    input  wire [9:0]  mario_y,
    input  wire        flag_slide,        // NEW: from gameplay_states
    output reg  [11:0] rgb,
    output reg         flag_valid,
    output reg         mario_touching_flag // now a single-cycle rising-edge pulse
);

    // -----------------------------------------------------------------------
    // Positions — adjust to match your background2.png layout
    // -----------------------------------------------------------------------
    localparam FLAG_X   = 10'd580;
    localparam FLAG_Y   = 10'd88;     // top of pole
    localparam FLAG_W   = 10'd48;
    localparam FLAG_H   = 10'd360;

    // Base brick directly below the pole bottom, sits on the floor
    localparam BASE_X   = FLAG_X;
    localparam BASE_Y   = FLAG_Y + FLAG_H;  // = 448
    localparam BASE_W   = 10'd32;
    localparam BASE_H   = 10'd32;

    localparam MARIO_W  = 10'd32;
    localparam MARIO_H  = 10'd32;

    // -----------------------------------------------------------------------
    // Bounding boxes
    // -----------------------------------------------------------------------
    wire flag_bound = (hCount >= FLAG_X) && (hCount < FLAG_X + FLAG_W) &&
                      (vCount >= FLAG_Y) && (vCount < FLAG_Y + FLAG_H);

    wire base_bound = (hCount >= BASE_X) && (hCount < BASE_X + BASE_W) &&
                      (vCount >= BASE_Y) && (vCount < BASE_Y + BASE_H);

    // Sliding Mario sprite — only drawn when flag_slide is active
    wire slide_bound = flag_slide &&
                       (hCount >= mario_x) && (hCount < mario_x + MARIO_W) &&
                       (vCount >= mario_y) && (vCount < mario_y + MARIO_H);

    // -----------------------------------------------------------------------
    // ROM addresses
    // -----------------------------------------------------------------------
    wire [8:0] flag_row = vCount - FLAG_Y;
    wire [5:0] flag_col = hCount - FLAG_X;

    wire [4:0] base_row = vCount - BASE_Y;
    wire [4:0] base_col = hCount - BASE_X;

    // mario_flag_rom is 16x16 internally — scale up to 32x32 by dividing by 2
    wire [3:0] slide_row = (vCount - mario_y) >> 1;
    wire [3:0] slide_col = (hCount - mario_x) >> 1;

    // -----------------------------------------------------------------------
    // ROM instances
    // -----------------------------------------------------------------------
    wire [11:0] flag_color;
    flag_pole_rom flag_pole_rom_inst(
        .clk        (clk),
        .row        (flag_row),
        .col        (flag_col),
        .color_data (flag_color)
    );

    wire [11:0] base_color;
    breaking_brick_rom base_brick_inst(
        .clk        (clk),
        .row        (base_row),
        .col        (base_col),
        .color_data (base_color)
    );

    wire [11:0] slide_color;
    mario_slide_rom slide_mario_inst(
        .clk        (clk),
        .row        (slide_row),
        .col        (slide_col),
        .color_data (slide_color)
    );

    // -----------------------------------------------------------------------
    // Pixel validity
    // -----------------------------------------------------------------------
    wire flag_pixel  = flag_bound  && (flag_color  != 12'b0);
    wire base_pixel  = base_bound  && (base_color  != 12'b0);
    wire slide_pixel = slide_bound && (slide_color != 12'b0);

    // -----------------------------------------------------------------------
    // RGB output — sliding Mario drawn on top of the pole
    // -----------------------------------------------------------------------
    always @(*) begin
        if (!bright) begin
            rgb        = 12'b0;
            flag_valid = 1'b0;
        end else if (slide_pixel) begin
            rgb        = slide_color;
            flag_valid = 1'b1;
        end else if (flag_pixel) begin
            rgb        = flag_color;
            flag_valid = 1'b1;
        end else if (base_pixel) begin
            rgb        = base_color;
            flag_valid = 1'b1;
        end else begin
            rgb        = 12'b0;
            flag_valid = 1'b0;
        end
    end

    // -----------------------------------------------------------------------
    // Touch detection — rising-edge pulse so gameplay_states fires exactly once
    // Hitbox uses the center 8px of the pole (cols 14–22) to avoid
    // accidental triggers while walking past
    // -----------------------------------------------------------------------
    wire touching = (mario_x + MARIO_W >= FLAG_X + 14) &&
                    (mario_x            <= FLAG_X + 22) &&
                    (mario_y + MARIO_H  >= FLAG_Y)      &&
                    (mario_y            <= FLAG_Y + FLAG_H);

    reg touching_prev;
    always @(posedge clk) begin
        touching_prev       <= touching;
        mario_touching_flag <= touching && !touching_prev;
    end

endmodule