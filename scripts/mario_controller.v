`timescale 1ns / 1ps

module mario_controller(
    input clk,
    input rst,
    input btnU, btnL, btnR,
    input [9:0] hCount, vCount,

    // final resolved position fed back from collision modules
    input [9:0] mario_x_final,
    input [9:0] mario_y_final,

    // collision flags from floor_collision and brick_collision
    input on_floor,
    input on_brick,
    input head_bumped,
    input blocked_left,
    input blocked_right,
    input bright,
    // proposed next position out to collision chain
    output reg [9:0] mario_x_next, mario_y_next,

    // current position (driven by resolved final pos)
    output reg [9:0] mario_x, mario_y,

    // velocity direction flags for brick_collision
    output reg moving_up, moving_down,
    output reg moving_left, moving_right,

    // drawing
    output reg [11:0] rgb,
    output reg valid
);

    // sprite size
    localparam WIDTH        = 16; // 16
    localparam HEIGHT       = 16; // 16

    // screen bounds
    localparam SCREEN_LEFT  = 0; // 0
    localparam SCREEN_RIGHT = 624; // 624

    // is current pixel inside mario's bounding box?
    wire mario_bound;
    assign mario_bound = (hCount >= mario_x && hCount < mario_x + WIDTH &&
                          vCount >= mario_y && vCount < mario_y + HEIGHT);

    // sprite pixel coordinates
    wire [3:0] sprite_x = hCount - mario_x;
    wire [3:0] sprite_y = vCount - mario_y;

    // ROM
    wire [11:0] sprite_color;
    mario_sprite_rom u_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(sprite_color)
    );

    // draw
    
    always @(*) begin
        if (~bright) begin
            rgb   = 12'b000000000000;
            valid = 1'b0;
        end else if (mario_bound && sprite_color != 12'b000000000000) begin
            rgb   = sprite_color;
            valid = 1'b1;
        end else begin
            rgb   = 12'b000000000000;
            valid = 1'b0;
        end
    end

    // physics
    reg [4:0] v_y;
    reg jumping;
    reg up;

    // grounded = on floor OR standing on a brick
    wire grounded = on_floor | on_brick;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mario_x      <= 100; // 100
            mario_y      <= 416; // 416
            v_y          <= 0;
            jumping      <= 1'b0;
            up           <=0;
            moving_up    <= 1'b0;
            moving_down  <= 1'b0;
            moving_left  <= 1'b0;
            moving_right <= 1'b0;
        end else begin

            // accept resolved position from collision modules
            mario_x <= mario_x_final;
            mario_y <= mario_y_final;

            // --- gravity ---
            if (!grounded) begin
                if (up) begin//if we are going up (v_y<0
                    if (v_y > 0)
                        v_y <= v_y - 1;   // decelerating upward
                end else begin
                    if (v_y < 9)
                        v_y <= v_y + 1;   // accelerating downward
                end
            end else begin
                v_y <= 0;
            end

            // --- jump ---
            if (btnU && !jumping && grounded) begin
                v_y     <= 8;      // jump velocity = -8
                jumping <= 1'b1;
                up <= 1'b1;
            end

            // --- head bump kills upward velocity ---
            if (head_bumped && up)begin
                v_y <= 0;
                up<=0;
            end
            // --- reset jumping flag when grounded ---
            if (grounded)begin
                jumping <= 1'b0;
                up<=1'b0;
            end
            // --- propose next Y ---
            if(up)
                mario_y_next <= mario_y - v_y;
            else
                mario_y_next <= mario_y + v_y;
            if(up && v_y == 0) //when we reach the peak of our jump
                up<=0;
            // --- propose next X ---
            if (btnR && !btnL && !blocked_right && mario_x < SCREEN_RIGHT)
                mario_x_next <= mario_x + 2; // +2
            else if (btnL && !btnR && !blocked_left && mario_x > SCREEN_LEFT)
                mario_x_next <= mario_x - 2; // -2
            else
                mario_x_next <= mario_x;

            // --- direction flags ---
            moving_right <= (btnR && !btnL);
            moving_left  <= (btnL && !btnR);

        end
    end

endmodule