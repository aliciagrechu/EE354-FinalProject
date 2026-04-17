// brick_collision.v
// Handles Mario's collision with 16x16 brick blocks (land on top, bump head on bottom).
// Supports up to MAX_BRICKS bricks, defined as arrays of (x, y) positions.
// 
// Collision sides handled:
//   TOP    — Mario lands on top of brick (falling down)
//   BOTTOM — Mario bumps head on underside (jumping up)
//   LEFT   — Mario blocked walking right into brick
//   RIGHT  — Mario blocked walking left into brick

module brick_collision (
    input  wire        clk,
    input  wire        rst,

    // Mario's current position and proposed next position
    input  wire [9:0]  mario_x,
    input  wire [9:0]  mario_y,
    input  wire [9:0]  mario_x_next,
    input  wire [9:0]  mario_y_next,

    // Mario's velocity direction flags (from mario_controller)
    input  wire        mario_moving_right,  // 1 = moving right this frame
    input  wire        mario_moving_left,   // 1 = moving left this frame
    input  wire        mario_moving_down,   // 1 = falling/gravity applied
    input  wire        mario_moving_up,     // 1 = jumping upward

    // Brick positions (loaded from ROM or set as parameters)
    // Each brick is 16x16. Positions are top-left corner.
    input  wire [9:0]  brick_x [0:MAX_BRICKS-1],
    input  wire [9:0]  brick_y [0:MAX_BRICKS-1],

    // Outputs
    output reg  [9:0]  mario_x_out,
    output reg  [9:0]  mario_y_out,
    output reg         on_brick,        // 1 = Mario standing on top of a brick
    output reg         head_bumped,     // 1 = Mario hit underside of brick (kills upward velocity)
    output reg         blocked_left,    // 1 = brick wall to Mario's left
    output reg         blocked_right    // 1 = brick wall to Mario's right
);

    // -----------------------------------------------------------------------
    // Parameters
    // -----------------------------------------------------------------------
    parameter MAX_BRICKS   = 16;   // increase as needed for your level
    parameter MARIO_WIDTH  = 16;
    parameter MARIO_HEIGHT = 16;
    parameter BRICK_SIZE   = 16;

    // -----------------------------------------------------------------------
    // Internal signals
    // -----------------------------------------------------------------------
    integer i;

    // Proposed bounding box edges for next frame
    wire [9:0] mario_right_next  = mario_x_next + MARIO_WIDTH  - 1;
    wire [9:0] mario_bottom_next = mario_y_next  + MARIO_HEIGHT - 1;

    // Current bounding box edges
    wire [9:0] mario_right_cur   = mario_x  + MARIO_WIDTH  - 1;
    wire [9:0] mario_bottom_cur  = mario_y  + MARIO_HEIGHT - 1;

    // Per-brick resolved position and collision flags
    reg [9:0]  resolved_x;
    reg [9:0]  resolved_y;
    reg        hit_top;
    reg        hit_bottom;
    reg        hit_left;
    reg        hit_right;

    // Brick edges (computed each iteration)
    reg [9:0]  bx, by, bx_right, by_bottom;

    // -----------------------------------------------------------------------
    // Collision logic — iterate over all bricks each cycle
    // -----------------------------------------------------------------------
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mario_x_out   <= mario_x;
            mario_y_out   <= mario_y;
            on_brick      <= 1'b0;
            head_bumped   <= 1'b0;
            blocked_left  <= 1'b0;
            blocked_right <= 1'b0;
        end else begin
            // Start from proposed next position
            resolved_x    = mario_x_next;
            resolved_y    = mario_y_next;
            hit_top       = 1'b0;
            hit_bottom    = 1'b0;
            hit_left      = 1'b0;
            hit_right     = 1'b0;

            for (i = 0; i < MAX_BRICKS; i = i + 1) begin
                bx        = brick_x[i];
                by        = brick_y[i];
                bx_right  = bx + BRICK_SIZE - 1;
                by_bottom = by + BRICK_SIZE - 1;

                // --- Broad phase: does Mario's next bbox overlap this brick? ---
                if (resolved_x          <= bx_right  &&
                    resolved_x + MARIO_WIDTH - 1 >= bx &&
                    resolved_y          <= by_bottom  &&
                    resolved_y + MARIO_HEIGHT - 1 >= by) begin

                    // --- Narrow phase: which face was hit? ---
                    // Determine by Mario's movement direction + previous position

                    // TOP COLLISION — Mario was above the brick and fell into it
                    if (mario_moving_down &&
                        mario_bottom_cur <= by &&
                        resolved_x + MARIO_WIDTH - 1 >= bx &&
                        resolved_x <= bx_right) begin

                        resolved_y = by - MARIO_HEIGHT;  // sit Mario on top
                        hit_top    = 1'b1;

                    // BOTTOM COLLISION — Mario was below and jumped into it
                    end else if (mario_moving_up &&
                                 mario_y >= by_bottom + 1 &&
                                 resolved_x + MARIO_WIDTH - 1 >= bx &&
                                 resolved_x <= bx_right) begin

                        resolved_y  = by_bottom + 1;     // push Mario down
                        hit_bottom  = 1'b1;

                    // RIGHT FACE — Mario was left of brick and walked into it
                    end else if (mario_moving_right &&
                                 mario_right_cur <= bx) begin

                        resolved_x = bx - MARIO_WIDTH;   // stop at left edge
                        hit_right  = 1'b1;

                    // LEFT FACE — Mario was right of brick and walked into it
                    end else if (mario_moving_left &&
                                 mario_x >= bx_right + 1) begin

                        resolved_x = bx_right + 1;       // stop at right edge
                        hit_left   = 1'b1;
                    end
                end
            end

            // Write resolved outputs
            mario_x_out   <= resolved_x;
            mario_y_out   <= resolved_y;
            on_brick      <= hit_top;
            head_bumped   <= hit_bottom;
            blocked_right <= hit_right;
            blocked_left  <= hit_left;
        end
    end

endmodule