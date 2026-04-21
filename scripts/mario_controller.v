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
    localparam WIDTH        = 10'b0000010000; // 16
    localparam HEIGHT       = 10'b0000010000; // 16

    // screen bounds
    localparam SCREEN_LEFT  = 10'b0000000000; // 0
    localparam SCREEN_RIGHT = 10'b1001110000; // 624

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
        if (mario_bound && sprite_color != 12'b000000000000) begin
            rgb   = sprite_color;
            valid = 1'b1;
        end else begin
            rgb   = 12'b000000000000;
            valid = 1'b0;
        end
    end

    // physics
    reg signed [4:0] v_y;
    reg jumping;

    // grounded = on floor OR standing on a brick
    wire grounded = on_floor | on_brick;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mario_x      <= 10'b0001100100; // 100
            mario_y      <= 10'b0110100000; // 416
            v_y          <= 5'b00000;
            jumping      <= 1'b0;
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
                if (v_y < 5'b01001)        // max fall speed = 9
                    v_y <= v_y + 5'b00001;
            end else begin
                if (v_y > 5'b00000)
                    v_y <= 5'b00000;       // stop falling when grounded
            end

            // --- jump ---
            if (btnU && !jumping && grounded) begin
                v_y     <= -5'b01000;      // jump velocity = -8
                jumping <= 1'b1;
            end

            // --- head bump kills upward velocity ---
            if (head_bumped && v_y < 5'b00000)
                v_y <= 5'b00000;

            // --- reset jumping flag when grounded ---
            if (grounded)
                jumping <= 1'b0;

            // --- propose next Y ---
            mario_y_next <= mario_y + v_y;

            // --- propose next X ---
            if (btnR && !btnL && !blocked_right && mario_x < SCREEN_RIGHT)
                mario_x_next <= mario_x + 10'b0000000010; // +2
            else if (btnL && !btnR && !blocked_left && mario_x > SCREEN_LEFT)
                mario_x_next <= mario_x - 10'b0000000010; // -2
            else
                mario_x_next <= mario_x;

            // --- direction flags ---
            moving_down  <= (v_y > 5'b00000);
            moving_up    <= (v_y < 5'b00000);
            moving_right <= (btnR && !btnL);
            moving_left  <= (btnL && !btnR);

        end
    end

endmodule