`timescale 1ns / 1ps

module goomba_controller(
    input clk,          // same clock style used by sprite ROM
    input bright,
    input rst,
    input [9:0] hCount,
    input [9:0] vCount,

    input [9:0] mario_x,
    input [9:0] mario_y,

    output reg [11:0] rgb,
    output reg mario_hit
);

    reg [9:0] goomba_x, goomba_y;
    reg direction;  // 0 = right, 1 = left

    wire goomba_area;
    wire [3:0] sprite_row, sprite_col;
    wire [11:0] sprite_color;

    parameter LEFT_EDGE  = 10'd144;
    parameter RIGHT_EDGE = 10'd783;
    parameter GOOMBA_SIZE = 10'd16;

    parameter MARIO_W = 10'd16;
    parameter MARIO_H = 10'd16;

    // Is current pixel inside the 16x16 goomba box?
    assign goomba_area =
        (hCount >= goomba_x) && (hCount < goomba_x + GOOMBA_SIZE) &&
        (vCount >= goomba_y) && (vCount < goomba_y + GOOMBA_SIZE);

    // Local sprite coordinates
    assign sprite_col = hCount - goomba_x;
    assign sprite_row = vCount - goomba_y;

    // Your generated sprite ROM
    goomba_rom goomba_rom_inst (
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(sprite_color)
    );

    // Movement
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            goomba_x <= 10'd300;
            goomba_y <= 10'd400;
            direction <= 1'b0;
        end
        else begin
            if (direction == 1'b0) begin
                if (goomba_x + GOOMBA_SIZE >= RIGHT_EDGE)
                    direction <= 1'b1;
                else
                    goomba_x <= goomba_x + 10'd1;
            end
            else begin
                if (goomba_x <= LEFT_EDGE)
                    direction <= 1'b0;
                else
                    goomba_x <= goomba_x - 10'd1;
            end
        end
    end

    // Collision with Mario (simple box overlap)
    always @(*) begin
        if (
            (mario_x < goomba_x + GOOMBA_SIZE) &&
            (mario_x + MARIO_W > goomba_x) &&
            (mario_y < goomba_y + GOOMBA_SIZE) &&
            (mario_y + MARIO_H > goomba_y)
        )
            mario_hit = 1'b1;
        else
            mario_hit = 1'b0;
    end

    // Draw
    always @(*) begin
        if (~bright)
            rgb = 12'b000000000000;
        else if (goomba_area && sprite_color != 12'b000000000000)
            rgb = sprite_color;
        else
            rgb = 12'b000000000000; // or background pixel if top-level handles bg
    end

endmodule