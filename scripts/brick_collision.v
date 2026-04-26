module brick_collision (
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
    output reg         on_brick,
    output reg         head_bumped,
    output reg         blocked_left,
    output reg         blocked_right
);

    parameter MARIO_WIDTH  = 16;
    parameter MARIO_HEIGHT = 16;
    parameter BRICK_SIZE   = 16;

    // hardcode your brick positions here
    localparam NUM_BRICKS = 4;
    wire [9:0] brick_x [0:NUM_BRICKS-1];
    wire [9:0] brick_y [0:NUM_BRICKS-1];
    assign brick_x[0] = 10'd312; assign brick_y[0] = 10'd300;
    assign brick_x[1] = 10'd328; assign brick_y[1] = 10'd300;
    assign brick_x[2] = 10'd344; assign brick_y[2] = 10'd300;
    assign brick_x[3] = 10'd360; assign brick_y[3] = 10'd300;

    wire [9:0] mario_right_cur  = mario_x + MARIO_WIDTH  - 1;
    wire [9:0] mario_bottom_cur = mario_y + MARIO_HEIGHT - 1;

    integer i;
    reg [9:0] resolved_x, resolved_y;
    reg       hit_top, hit_bottom, hit_left, hit_right;
    reg [9:0] bx, by, bx_right, by_bottom;

    always @(*) begin
        // default: pass through unchanged
        resolved_x = mario_x_next;
        resolved_y = mario_y_next;
        hit_top    = 1'b0;
        hit_bottom = 1'b0;
        hit_left   = 1'b0;
        hit_right  = 1'b0;

        for (i = 0; i < NUM_BRICKS; i = i + 1) begin
            bx        = brick_x[i];
            by        = brick_y[i];
            bx_right  = bx + BRICK_SIZE - 1;
            by_bottom = by + BRICK_SIZE - 1;

            if (resolved_x                  <= bx_right  &&
                resolved_x + MARIO_WIDTH - 1 >= bx       &&
                resolved_y                  <= by_bottom  &&
                resolved_y + MARIO_HEIGHT - 1 >= by) begin

                if (mario_bottom_cur <= by &&
                    resolved_x + MARIO_WIDTH - 1 >= bx &&
                    resolved_x <= bx_right) begin
                    resolved_y = by - MARIO_HEIGHT;
                    hit_top    = 1'b1;

                end else if (mario_moving_up &&
                             mario_y >= by_bottom + 1 &&
                             resolved_x + MARIO_WIDTH - 1 >= bx &&
                             resolved_x <= bx_right) begin
                    resolved_y = by_bottom + 1;
                    hit_bottom = 1'b1;

                end else if (mario_moving_right &&
                             mario_right_cur <= bx) begin
                    resolved_x = bx - MARIO_WIDTH;
                    hit_right  = 1'b1;

                end else if (mario_moving_left &&
                             mario_x >= bx_right + 1) begin
                    resolved_x = bx_right + 1;
                    hit_left   = 1'b1;
                end
            end
        end

        mario_x_out   = resolved_x;
        mario_y_out   = resolved_y;
        on_brick      = hit_top;
        head_bumped   = hit_bottom;
        blocked_right = hit_right;
        blocked_left  = hit_left;
    end

endmodule