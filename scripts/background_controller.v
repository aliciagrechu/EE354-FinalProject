`timescale 1ns / 1ps

module background_controller(
    input clk,
    input bright,
    input [9:0] hCount,
    input [9:0] vCount,
    output reg [11:0] rgb,
    output reg bg_valid
);

    // full 640x480 background
    // row is 9 bits (0-479), col is 10 bits (0-639)
    wire [8:0] sprite_row = vCount[8:0];
    wire [9:0] sprite_col = hCount;

    wire [11:0] bg_color;

    new_background1_sky_nofloor_rom bg_rom(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(bg_color)
    );

    always @(*) begin
        if (~bright) begin
            rgb      = 12'b000000000000;
            bg_valid = 1'b0;
        end else begin
            rgb      = bg_color;
            bg_valid = 1'b1;   // always valid — covers every pixel
        end
    end

endmodule