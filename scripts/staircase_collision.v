`timescale 1ns / 1ps

module staircase_collision(
    input  wire        clk,
    input  wire        rst,

    input  wire [9:0]  mario_x,
    input  wire [9:0]  mario_y,
    input  wire [9:0]  mario_x_next,
    input  wire [9:0]  mario_y_next,

    input  wire        mario_moving_right,
    input  wire        mario_moving_left,
    input  wire        mario_moving_down,
    input  wire        mario_moving_up,

    output reg  [9:0]  mario_x_out,
    output reg  [9:0]  mario_y_out,
    output reg         on_stair,
    output reg         head_bumped_s,
    output reg         blocked_left_s,
    output reg         blocked_right_s
);

    localparam LEFT_X  = 10'd144;
    localparam LEFT_Y  = 10'd320;
    localparam RIGHT_X = 10'd400;
    localparam RIGHT_Y = 10'd320;
    localparam STAIR_W = 10'd128;
    localparam STAIR_H = 10'd128;
    localparam MARIO_W = 10'd32;
    localparam MARIO_H = 10'd32;

    wire land_on_left =
        mario_moving_down &&
        (mario_x_next + MARIO_W > LEFT_X) && (mario_x_next < LEFT_X + STAIR_W) &&
        (mario_y      + MARIO_H <= LEFT_Y) &&
        (mario_y_next + MARIO_H >  LEFT_Y);

    wire bump_left_ceil =
        mario_moving_up &&
        (mario_x_next + MARIO_W > LEFT_X) && (mario_x_next < LEFT_X + STAIR_W) &&
        (mario_y      >= LEFT_Y + STAIR_H) &&
        (mario_y_next <  LEFT_Y + STAIR_H);

    wire block_left_l =
        mario_moving_left &&
        (mario_y_next + MARIO_H > LEFT_Y) && (mario_y_next < LEFT_Y + STAIR_H) &&
        (mario_x      >= LEFT_X + STAIR_W) &&
        (mario_x_next <  LEFT_X + STAIR_W);

    wire block_left_r =
        mario_moving_right &&
        (mario_y_next + MARIO_H > LEFT_Y) && (mario_y_next < LEFT_Y + STAIR_H) &&
        (mario_x      + MARIO_W <= LEFT_X) &&
        (mario_x_next + MARIO_W >  LEFT_X);

    wire land_on_right =
        mario_moving_down &&
        (mario_x_next + MARIO_W > RIGHT_X) && (mario_x_next < RIGHT_X + STAIR_W) &&
        (mario_y      + MARIO_H <= RIGHT_Y) &&
        (mario_y_next + MARIO_H >  RIGHT_Y);

    wire bump_right_ceil =
        mario_moving_up &&
        (mario_x_next + MARIO_W > RIGHT_X) && (mario_x_next < RIGHT_X + STAIR_W) &&
        (mario_y      >= RIGHT_Y + STAIR_H) &&
        (mario_y_next <  RIGHT_Y + STAIR_H);

    wire block_right_l =
        mario_moving_left &&
        (mario_y_next + MARIO_H > RIGHT_Y) && (mario_y_next < RIGHT_Y + STAIR_H) &&
        (mario_x      >= RIGHT_X + STAIR_W) &&
        (mario_x_next <  RIGHT_X + STAIR_W);

    wire block_right_r =
        mario_moving_right &&
        (mario_y_next + MARIO_H > RIGHT_Y) && (mario_y_next < RIGHT_Y + STAIR_H) &&
        (mario_x      + MARIO_W <= RIGHT_X) &&
        (mario_x_next + MARIO_W >  RIGHT_X);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mario_x_out     <= 10'd144;
            mario_y_out     <= 10'd384;
            on_stair        <= 1'b0;
            head_bumped_s   <= 1'b0;
            blocked_left_s  <= 1'b0;
            blocked_right_s <= 1'b0;
        end else begin
            mario_x_out     <= mario_x_next;
            mario_y_out     <= mario_y_next;
            on_stair        <= 1'b0;
            head_bumped_s   <= 1'b0;
            blocked_left_s  <= 1'b0;
            blocked_right_s <= 1'b0;

            if (land_on_left) begin
                mario_y_out <= LEFT_Y - MARIO_H;
                on_stair    <= 1'b1;
            end

            if (land_on_right) begin
                mario_y_out <= RIGHT_Y - MARIO_H;
                on_stair    <= 1'b1;
            end

            if (!mario_moving_down && !mario_moving_up) begin
                if ((mario_x + MARIO_W > LEFT_X) && (mario_x < LEFT_X + STAIR_W) &&
                    (mario_y + MARIO_H == LEFT_Y))
                    on_stair <= 1'b1;

                if ((mario_x + MARIO_W > RIGHT_X) && (mario_x < RIGHT_X + STAIR_W) &&
                    (mario_y + MARIO_H == RIGHT_Y))
                    on_stair <= 1'b1;
            end

            if (bump_left_ceil || bump_right_ceil) begin
                head_bumped_s <= 1'b1;
                mario_y_out   <= mario_y_next + 2;
            end

            if (block_left_l) begin
                blocked_left_s <= 1'b1;
                mario_x_out    <= LEFT_X + STAIR_W;
            end
            if (block_right_l) begin
                blocked_left_s <= 1'b1;
                mario_x_out    <= RIGHT_X + STAIR_W;
            end

            if (block_left_r) begin
                blocked_right_s <= 1'b1;
                mario_x_out     <= LEFT_X - MARIO_W;
            end
            if (block_right_r) begin
                blocked_right_s <= 1'b1;
                mario_x_out     <= RIGHT_X - MARIO_W;
            end
        end
    end

endmodule