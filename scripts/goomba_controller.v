`timescale 1ns / 1ps

module goomba_controller(
    input clk,
    input move_clk,
    input bright,
    input rst,
    input [9:0] hCount,
    input [9:0] vCount,
    input [9:0] mario_x,
    input [9:0] mario_y,
    output reg [11:0] rgb,
    output reg mario_hit,
    output reg goomba_valid    // ← added here in port list
);

    reg [9:0] goomba_x, goomba_y;
    reg direction;

    wire goomba_area;
    wire [3:0] sprite_row, sprite_col;
    wire [11:0] sprite_color;

    parameter LEFT_EDGE   = 10'd174;
    parameter RIGHT_EDGE  = 10'd624;
    parameter GOOMBA_SIZE = 10'd16;
    parameter MARIO_W     = 10'd16;
    parameter MARIO_H     = 10'd16;

    assign goomba_area =
        (hCount >= goomba_x) && (hCount < goomba_x + GOOMBA_SIZE) &&
        (vCount >= goomba_y) && (vCount < goomba_y + GOOMBA_SIZE);

    assign sprite_col = hCount - goomba_x;
    assign sprite_row = vCount - goomba_y;

    goomba_right_rom goomba_right_rom_inst(
        .clk(clk),
        .row(sprite_row),
        .col(sprite_col),
        .color_data(sprite_color)
    );

    // movement
    always @(posedge move_clk or posedge rst) begin
        if (rst) begin
            goomba_x  <= 10'd300;
            goomba_y  <= 10'd432;
            direction <= 1'b0;
        end else begin
            if (direction == 1'b0) begin
                if (goomba_x + GOOMBA_SIZE >= RIGHT_EDGE)
                    direction <= 1'b1;
                else
                    goomba_x <= goomba_x + 10'd1;
            end else begin
                if (goomba_x <= LEFT_EDGE)
                    direction <= 1'b0;
                else
                    goomba_x <= goomba_x - 10'd1;
            end
        end
    end

    // mario hit detection
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

    // draw — updated to also drive goomba_valid
    always @(*) begin
        if (~bright) begin
            rgb          = 12'b000000000000;
            goomba_valid = 1'b0;
        end else if (goomba_area && sprite_color != 12'b000000000000) begin
            rgb          = sprite_color;
            goomba_valid = 1'b1;    // ← visible pixel
        end else begin
            rgb          = 12'b000000000000;
            goomba_valid = 1'b0;    // ← transparent pixel
        end
    end

endmodule