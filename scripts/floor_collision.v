`timescale 1ns / 1ps

// floor_collision.v
// Handles Mario's collision with the floor.
//
// Scene 1: full-width floor at y=448
// Scene 2: two floor segments with a gap between the staircases
//   Left  segment: x = 144–271
//   Right segment: x = 400–623
//   Gap           : x = 272–399 — no floor, Mario falls through

module floor_collision (
    input  wire        clk,
    input  wire        rst,

    input  wire        in_scene2,        // NEW: scene selector

    input  wire [9:0]  mario_x,
    input  wire [9:0]  mario_y,
    input  wire [9:0]  mario_y_next,

    output wire [9:0]  mario_y_out,
    output wire        on_floor
);

    parameter SCREEN_HEIGHT = 480;
    parameter SCREEN_WIDTH  = 640;
    parameter FLOOR_HEIGHT  = 64;
    parameter MARIO_HEIGHT  = 32;
    parameter MARIO_WIDTH   = 32;

    localparam FLOOR_TOP     = SCREEN_HEIGHT - FLOOR_HEIGHT;  // 448
    localparam MARIO_STAND_Y = FLOOR_TOP - MARIO_HEIGHT;      // 416

    // -----------------------------------------------------------------------
    // Scene 2 floor segment x ranges — must match floor_controller_scene2
    // and staircase_controller localparams
    // -----------------------------------------------------------------------
    localparam LEFT_FLOOR_X_MIN  = 10'd144;
    localparam LEFT_FLOOR_X_MAX  = 10'd272;   // LEFT_X + STAIR_W
    localparam RIGHT_FLOOR_X_MIN = 10'd400;   // RIGHT_X
    localparam RIGHT_FLOOR_X_MAX = 10'd624;

    // -----------------------------------------------------------------------
    // Is Mario's x position over a valid floor segment in scene 2?
    // Use Mario's center x for the check to feel natural
    // -----------------------------------------------------------------------
    wire [9:0] mario_center_x = mario_x + (MARIO_WIDTH / 2);

    wire on_left_segment  = (mario_center_x >= LEFT_FLOOR_X_MIN) &&
                            (mario_center_x <  LEFT_FLOOR_X_MAX);

    wire on_right_segment = (mario_center_x >= RIGHT_FLOOR_X_MIN) &&
                            (mario_center_x <  RIGHT_FLOOR_X_MAX);

    // In scene 1 the full floor is always valid.
    // In scene 2 only the two segments count.
    wire over_valid_floor = !in_scene2 ||
                            on_left_segment ||
                            on_right_segment;

    // -----------------------------------------------------------------------
    // Collision logic — combinational
    // -----------------------------------------------------------------------
    wire mario_bottom_next = mario_y_next + MARIO_HEIGHT;

    wire floor_hit = over_valid_floor &&
                     (mario_y_next + MARIO_HEIGHT >= FLOOR_TOP);

    assign mario_y_out = floor_hit ? MARIO_STAND_Y : mario_y_next;
    assign on_floor    = floor_hit;

endmodule