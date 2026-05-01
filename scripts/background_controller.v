`timescale 1ns / 1ps

module background_controller(
    input  wire        clk,
    input  wire        bright,
    input  wire [9:0]  hCount,
    input  wire [9:0]  vCount,
    input  wire        in_scene2,    // driven by vga_top, no internal latch
    output reg  [11:0] rgb,
    output wire        bg_valid
);

    // ROM address computation
    wire [8:0] row_addr = vCount[8:0];
    wire [9:0] col_addr = hCount[9:0];

    // Scene 1 background ROM
    wire [11:0] bg1_color;
    new_background1_sky_nofloor_rom bg1_rom (
        .clk        (clk),
        .row        (row_addr),
        .col        (col_addr),
        .color_data (bg1_color)
    );

    // Scene 2 background ROM
    wire [11:0] bg2_color;
    background2_rom bg2_rom (
        .clk        (clk),
        .row        (row_addr),
        .col        (col_addr),
        .color_data (bg2_color)
    );

    assign bg_valid = bright;

    always @(*) begin
        if (!bright)
            rgb = 12'b0;
        else if (in_scene2)
            rgb = bg2_color;
        else
            rgb = bg1_color;
    end

endmodule