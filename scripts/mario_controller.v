`timescale 1ns / 1ps

module mario_controller(
    input clk,
    input move_clk,
    input rst,
    input btnU, btnL, btnR,
    input [9:0] hCount, vCount,

    // change betwee mario sprites (left, right, jump, slide)
    input flag_slide,
    // input jump,
    output reg slide_done,
    // output reg jump_done,

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
    localparam WIDTH        = 32;
    localparam HEIGHT       = 32;

    // screen bounds
    localparam SCREEN_LEFT  = 144; // 0
    localparam SCREEN_RIGHT = 624; // 

    // TODO: flag location, update as needed based on flag_controller 
    localparam FLAG_SLIDE_X = 570;
    localparam FLAG_BOTTOM_Y = 400;

    // is current pixel inside mario's bounding box?
    wire mario_bound;
    assign mario_bound = (hCount >= mario_x && hCount < mario_x + WIDTH &&
                          vCount >= mario_y && vCount < mario_y + HEIGHT);

    // sprite pixel coordinates
    wire [4:0] sprite_x = hCount - mario_x;
    wire [4:0] sprite_y = vCount - mario_y;
    
    //goomba collision flash
    reg [7:0] respawn_flash_timer;
    reg visible;
    
    // walking vs jumping vs sliding
    // wire [11:0] normal_color; again can keep for testing OG mario that WAS showing
    wire [11:0] jump_color;
    wire [11:0] slide_color;

    // walking direction sprites
    wire [11:0] right_color;
    wire [11:0] left_color;
    wire [11:0] walk_right_color;
    wire [11:0] walk_left_color;

    // walking animation
    reg [3:0] walk_anim_counter;
    reg walk_frame;
    reg facing_left; // only need left reg cuz he faces right by default

    // keep for testing, this is the OG mario that WAS showing up (before 4/26 changes)
    // mario_sprite_rom normal_rom(
    //     .clk(clk),
    //     .row(sprite_y),
    //     .col(sprite_x),
    //     .color_data(normal_color)
    // );

    mario_right_rom right_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(right_color)
    );

    mario_left_rom left_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(left_color)
    );

    mario_walk_right_rom walk_right_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(walk_right_color)
    );

    mario_walk_left_rom walk_left_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(walk_left_color)
    );

    mario_jump_rom jump_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(jump_color)
    );

    mario_slide_rom slide_rom(
        .clk(clk),
        .row(sprite_y),
        .col(sprite_x),
        .color_data(slide_color)
    );

    // assign correct mario sprite
    wire [11:0] sprite_color;

    // deciding how to draw mario (walk left/right, jump, slide)
    assign sprite_color =
        flag_slide ? slide_color :
        (up) ? jump_color :
        (btnR && !btnL) ? (walk_frame ? walk_right_color : right_color) :
        (btnL && !btnR) ? (walk_frame ? walk_left_color : left_color) :
        (facing_left) ? left_color :
        right_color;

    // draw mario
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
        mario_y      <= 384;
        mario_x_next <= 144;
        mario_y_next <= 384;
        v_y          <= 0;
        jumping      <= 1'b0;
        up           <= 1'b0;
        btnU_prev    <= 1'b0;
        respawn_flash_timer <= 1'b0;
        visible <= 1'b1;
        slide_done <= 1'b0;
        jump_done <= 1'b0;
        walk_anim_counter <= 1'b0;
        walk_frame <= 1'b0;
        facing_left <= 1'b0;

    end else begin
        // accept resolved position from collision modules
        btnU_prev <= btnU; 
        
        mario_x <= mario_x_final;
        mario_y <= mario_y_final;

        // default next positions start from resolved current position
        mario_x_next <= mario_x_final;
        mario_y_next <= mario_y_final;

        // flag slide movement
        if (flag_slide) begin
            mario_x <= FLAG_SLIDE_X;
            mario_x_next <= FLAG_SLIDE_X;

           if (mario_y_final < FLAG_BOTTOM_Y) begin
                mario_y <= mario_y_final + 2;
                mario_y_next <= mario_y_final + 2;
            end else begin
                mario_y <= FLAG_BOTTOM_Y;
                mario_y_next <= FLAG_BOTTOM_Y;
                slide_done <= 1'b1;
            end

            v_y <= 0;
            jumping <= 1'b0;
            up <= 1'b0;
        end else begin
            slide_done <= 1'b0;

        // gravity / normal movement
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

        // after movement happens, check what direction he is walking to animate left / right properly
        if (btnR && !btnL) begin
            facing_left <= 1'b0;

            if (walk_anim_counter == 4'd8) begin
                walk_anim_counter <= 0;
                walk_frame <= ~walk_frame;
            end else begin
                walk_anim_counter <= walk_anim_counter + 1;
            end
        end
        else if (btnL && !btnR) begin
            facing_left <= 1'b1;

            if (walk_anim_counter == 4'd8) begin
                walk_anim_counter <= 0;
                walk_frame <= ~walk_frame;
            end else begin
                walk_anim_counter <= walk_anim_counter + 1;
            end
        end
        else begin
            walk_anim_counter <= 0;
            walk_frame <= 0;
        end
        
        if(respawn)begin
            mario_x       <= 144;
            mario_y       <= 384;
            mario_x_next  <= 144;
            mario_y_next  <= 384;
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
    end
    assign moving_up    = up && (v_y > 0);
    assign moving_down  = !up && (v_y > 0);
    assign moving_right = btnR && !btnL;
    assign moving_left  = btnL && !btnR;
endmodule