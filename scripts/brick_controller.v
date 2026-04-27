`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2026 12:47:22 PM
// Design Name: 
// Module Name: brick_controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps
module brick_controller(
    input clk,
    input bright,
    input [9:0] hCount,
    input [9:0] vCount,

    // brick position (set from top-level)
    input [9:0] brick_x,
    input [9:0] brick_y,

    // whether brick is active (not yet broken)
    input brick_active,

    output reg [11:0] rgb,
    output reg brick_valid
);
    localparam WIDTH  = 32;
    localparam HEIGHT = 32;

    // is current pixel inside the brick?
    wire brick_area;
    assign brick_area = brick_active &&
                        (hCount >= brick_x) && (hCount < brick_x + WIDTH) &&
                        (vCount >= brick_y) && (vCount < brick_y + HEIGHT);

    // local sprite coordinates
    wire [4:0] sprite_row = vCount - brick_y;
    wire [4:0] sprite_col = hCount - brick_x;

    // ROM
    wire [11:0] sprite_color;
    breaking_brick_rom brick_rom_inst(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(sprite_color)
    );

    // draw
    always @(*) begin
        if (~bright) begin
            rgb        = 12'b000000000000;
            brick_valid = 1'b0;
        end else if (brick_area && sprite_color != 12'b000000000000) begin
            rgb        = sprite_color;
            brick_valid = 1'b1;
        end else begin
            rgb        = 12'b000000000000;
            brick_valid = 1'b0;
        end
    end

endmodule
