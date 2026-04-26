// floor_collision.v
// Handles Mario's collision with the floor (640x32 block at bottom of screen)
// Screen: 640x480. Floor occupies y=[448, 479] (32px tall, full width).
//
// Usage: instantiate alongside mario_controller.v
// mario_controller feeds mario_y_next (proposed next Y position),
// this module outputs mario_y (clamped, collision-resolved Y)
// and on_floor (high when Mario is standing on the floor).

module floor_collision (
    input  wire        clk,
    input  wire        rst,

    // Mario's current bounding box (top-left corner)
    input  wire [9:0]  mario_x,          // current X (not needed for floor, but useful for future)
    input  wire [9:0]  mario_y,          // current Y (top of Mario sprite)

    // Proposed next position from mario_controller (after gravity/jump applied)
    input  wire [9:0]  mario_y_next,

    // Mario sprite height (typically 32px for SMB)
    // Parameterized so you can swap sprite sizes easily
    // Mario bottom = mario_y + MARIO_HEIGHT - 1

    // Outputs
    output wire  [9:0]  mario_y_out,      // collision-resolved Y position
    output wire         on_floor          // 1 = Mario is standing on floor
);

    // -----------------------------------------------------------------------
    // Parameters — adjust to match your sprite and screen layout
    // -----------------------------------------------------------------------
    parameter SCREEN_HEIGHT  = 480;
    parameter SCREEN_WIDTH   = 640;
    parameter FLOOR_HEIGHT   = 32;       // floor block is 32px tall
    parameter MARIO_HEIGHT   = 16;       // Mario sprite height in pixels

    // Floor top edge: floor occupies rows [FLOOR_TOP, SCREEN_HEIGHT-1]
    localparam FLOOR_TOP = SCREEN_HEIGHT - FLOOR_HEIGHT;   // = 448

    // The Y position where Mario's feet rest ON the floor
    // mario_y is top-left, so feet = mario_y + MARIO_HEIGHT
    // Standing position: feet == FLOOR_TOP  =>  mario_y == FLOOR_TOP - MARIO_HEIGHT
    localparam MARIO_STAND_Y = FLOOR_TOP - MARIO_HEIGHT;   // = 416

    // -----------------------------------------------------------------------
    // Collision logic (combinational first, then registered)
    // -----------------------------------------------------------------------
    wire [9:0] mario_bottom_next;
    assign mario_bottom_next = mario_y_next + MARIO_HEIGHT;

    // Detect if the proposed next position would penetrate the floor
    wire floor_collision_detected;
    assign floor_collision_detected = (mario_bottom_next >= FLOOR_TOP);
    // replace the always block with pure assigns
    assign mario_y_out = floor_collision_detected ? MARIO_STAND_Y : mario_y_next;
    assign on_floor    = floor_collision_detected;
    // -----------------------------------------------------------------------
    // Output register — update every clock cycle
    // -----------------------------------------------------------------------
//    always @(posedge clk or posedge rst) begin
//        if (rst) begin
//            mario_y_out <= MARIO_STAND_Y;  // spawn Mario standing on floor
//            on_floor    <= 1'b1;
//        end else begin
//            if (floor_collision_detected) begin
//                // Clamp Mario so his feet sit exactly on the floor top edge
//                mario_y_out <= MARIO_STAND_Y;
//                on_floor    <= 1'b1;
//            end else begin
//                mario_y_out <= mario_y_next;
//                on_floor    <= 1'b0;
//            end
//        end
//    end

endmodule