`timescale 1ns / 1ps

module background_controller(
    input clk,
    input bright,
    input [9:0] hCount,
    input [9:0] vCount,
    input scroll_next,
    output reg [11:0] rgb,
    output reg bg_valid
);

    // full 640x480 background
    // row is 9 bits (0-479), col is 10 bits (0-639)
    wire [8:0] sprite_row = vCount[8:0];
    wire [9:0] sprite_col = hCount - 144;

    wire [11:0] bg_color;
    wire [11:0] bg_color2;

    background_1_rom bg_rom(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(bg_color)
    );
    background_2_rom bg_rom2(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(bg_color2)
    );
    always @(*) begin
        if (~bright|| hCount < 10'd144 || hCount >= 10'd784) begin
            rgb      = 12'b000000000000;
            bg_valid = 1'b0;
        end else begin
            if(scroll_next)
                rgb = bg_color2;
            else
                rgb = bg_color;
            bg_valid = 1'b1;   // always valid — covers every pixel
        end
    end

endmodule