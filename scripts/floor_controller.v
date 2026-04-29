`timescale 1ns / 1ps

module floor_controller(
    input clk,
    input bright,
    input [9:0] hCount,
    input [9:0] vCount,
    output reg [11:0] rgb,
    output reg floor_valid
);

    // floor occupies full width, bottom 32 rows
    // TODO: REDO THIS MATH FOR NEW SIZE: screen is 640x480, so floor is y=[448, 479]
    parameter FLOOR_Y      = 416;
    parameter FLOOR_HEIGHT = 64;
    parameter FLOOR_WIDTH  = 640;

    // is current pixel inside the floor?
    wire [9:0] floor_x = hCount - 144;
    wire floor_area;
    assign floor_area = (hCount >= 10'd144) &&
                        (hCount < 10'd784) &&
                        (floor_x < FLOOR_WIDTH) &&
                        (vCount >= FLOOR_Y) &&
                        (vCount < FLOOR_Y + FLOOR_HEIGHT);

    // local sprite coordinates
    wire [5:0] sprite_row;
    wire [9:0] sprite_col;
    assign sprite_row = vCount - FLOOR_Y;   // 0-63  (6 bits)
    assign sprite_col = floor_x;             // 0-639 (10 bits)

    // ROM
    wire [11:0] sprite_color;
    full_floor_rom full_floor_rom_inst(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(sprite_color)
    );

    // draw
    always @(*) begin
        if (~bright) begin
            rgb         = 12'b000000000000;
            floor_valid = 1'b0;
        end else if (floor_area && sprite_color != 12'b000000000000) begin
            rgb         = sprite_color;
            floor_valid = 1'b1;
        end else begin
            rgb         = 12'b000000000000;
            floor_valid = 1'b0;
        end
    end

endmodule