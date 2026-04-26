`timescale 1ns / 1ps

module mario_controller(
    input clk,
    input move_clk,
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
    input respawn,
    // proposed next position out to collision chain
    output reg [9:0] mario_x_next, mario_y_next,

    // current position (driven by resolved final pos)
    output reg [9:0] mario_x, mario_y,

    // velocity direction flags for brick_collision
    output wire moving_up, moving_down,
    output wire moving_left, moving_right,
    output reg [5:0] v_y,

    // drawing
    output reg [11:0] rgb,
    output reg valid
);

    // sprite size
    localparam WIDTH        = 16; // 16
    localparam HEIGHT       = 16; // 16

    // screen bounds
    localparam SCREEN_LEFT  = 144; // 0
    localparam SCREEN_RIGHT = 624; // 

    // is current pixel inside mario's bounding box?
    wire mario_bound;
    assign mario_bound = (hCount >= mario_x && hCount < mario_x + WIDTH &&
                          vCount >= mario_y && vCount < mario_y + HEIGHT);

    // sprite pixel coordinates
    wire [3:0] sprite_x = hCount - mario_x;
    wire [3:0] sprite_y = vCount - mario_y;

    // ROM
    wire [11:0] sprite_color;
    
    //goomba collision flash
    reg [7:0] respawn_flash_timer;
    reg visible;
    
    mario_sprite_rom u_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(sprite_color)
    );

    // draw
    
    always @(*) begin
        if (~bright || !visible ) begin
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
//    reg [4:0] v_y;
    reg jumping;
    reg up;
    reg btnU_prev;
    // grounded = on floor OR standing on a brick
    wire grounded = on_floor | on_brick;

    always @(posedge move_clk or posedge rst) begin
    if (rst) begin
        mario_x      <= 144;
        mario_y      <= 432;
        mario_x_next <= 144;
        mario_y_next <= 432;
        v_y          <= 0;
        jumping      <= 1'b0;
        up           <= 1'b0;
        btnU_prev    <= 1'b0;
        respawn_flash_timer <= 1'b0;
        visible <= 1'b1;
    end else begin
        // accept resolved position from collision modules
        btnU_prev <= btnU; 
        
        mario_x <= mario_x_final;
        mario_y <= mario_y_final;

        // default next positions start from resolved current position
        mario_x_next <= mario_x_final;
        mario_y_next <= mario_y_final;

        // gravity
        if (!grounded) begin
            if (up) begin
                if (v_y > 0)
                    v_y <= v_y - 1;
            end else begin
                if (v_y < 20)
                    v_y <= v_y + 1;
            end
        end

        // jump starts immediately
        if (btnU && !btnU_prev && !jumping && grounded && respawn_flash_timer == 0) begin
            v_y          <= 20;
            jumping      <= 1'b1;
            up           <= 1'b1;
            mario_y_next <= mario_y_final - 20;
        end else begin
            if (head_bumped && up) begin
                v_y <= 0;
                up  <= 1'b0;
            end

            if (grounded && !up) begin
                jumping <= 1'b0;
                up      <= 1'b0;
                v_y      <= 0;
            end

            if (up)
                mario_y_next <= mario_y_final - v_y;
            else
                mario_y_next <= mario_y_final + v_y;

            if (up && v_y == 0)
                up <= 1'b0;
        end

        // horizontal
        if (btnR && !btnL && !blocked_right && mario_x_final < SCREEN_RIGHT && respawn_flash_timer == 0)
            mario_x_next <= mario_x_final + 1;
        else if (btnL && !btnR && !blocked_left && mario_x_final > SCREEN_LEFT && respawn_flash_timer == 0)
            mario_x_next <= mario_x_final - 1;

        
       
        
        if(respawn)begin
            mario_x       <= 144;
            mario_y       <= 432;
            mario_x_next  <= 144;
            mario_y_next  <= 432;
            v_y           <= 0;
            jumping       <= 1'b0;
            up            <= 1'b0;
            respawn_flash_timer <= 8'd200;  // flash for 200 ticks
        end
        
        if (respawn_flash_timer > 0) begin
            respawn_flash_timer <= respawn_flash_timer - 1;
            visible       <= respawn_flash_timer[4];  // flickers at move_clk rate
        end else
            visible <= 1'b1;
        end 
    end
    assign moving_up    = up && (v_y > 0);
    assign moving_down  = !up && (v_y > 0);
    assign moving_right = btnR && !btnL;
    assign moving_left  = btnL && !btnR;
endmodule