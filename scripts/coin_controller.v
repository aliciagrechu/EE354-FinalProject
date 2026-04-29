`timescale 1ns / 1ps

module coin_controller(
    input clk,
    input move_clk,
    input bright,
    input rst,
    input [9:0] hCount,
    input [9:0] vCount,
    input [9:0] mario_x,
    input [9:0] mario_y,
    output reg [11:0] rgb,
    output reg coin_valid,
    output reg [2:0] coin_count,
    output reg coin_collected    // pulses high when mario touches a coin
);

    parameter COIN_SIZE  = 32;
    parameter MARIO_W    = 32;
    parameter MARIO_H    = 32;
    parameter NUM_COINS  = 5;

    // -----------------------------------------------------------------------
    // Coin positions — based on your reference images
    // coins are floating above the floor, spread across the level
    // -----------------------------------------------------------------------
    wire [9:0] coin_x [0:4];
    wire [9:0] coin_y [0:4];

    // TODO: adjust position for each coin as needed. this is just mockup
    assign coin_x[0] = 200;  // 192  — left cluster
    assign coin_y[0] = 250;  // 192

    assign coin_x[1] = 288;  // 256  — left cluster
    assign coin_y[1] = 250;  // 192

    assign coin_x[2] = 352;  // 320  — center
    assign coin_y[2] = 150;  // 160  — slightly higher

    assign coin_x[3] = 352;  // 384  — right cluster
    assign coin_y[3] = 250;  // 192

    assign coin_x[4] = 416;  // 448  — right cluster
    assign coin_y[4] = 250;  // 192

    // -----------------------------------------------------------------------
    // Collected flags — one per coin
    // -----------------------------------------------------------------------
    reg [4:0] collected;   // bit i = 1 means coin i is gone

    // -----------------------------------------------------------------------
    // Collision detection — which coin is mario touching right now?
    // -----------------------------------------------------------------------
    reg [4:0] touching;
    integer i;

    always @(*) begin
        for (i = 0; i < NUM_COINS; i = i + 1) begin
            touching[i] = !collected[i] &&
                (mario_x < coin_x[i] + COIN_SIZE) &&
                (mario_x + MARIO_W > coin_x[i]) &&
                (mario_y < coin_y[i] + COIN_SIZE) &&
                (mario_y + MARIO_H > coin_y[i]);
        end
    end

    // -----------------------------------------------------------------------
    // Collect coins on rising edge of touch — update collected flags
    // -----------------------------------------------------------------------
    reg [4:0] touching_last;
    always @(posedge move_clk or posedge rst) begin
        if (rst) begin
            collected     <= 5'b00000;
            touching_last <= 5'b00000;
            coin_collected <= 1'b0;
            coin_count <= 3'b0;
        end else begin
            touching_last  <= touching;
            coin_collected <= 1'b0;   // default low
            for (i = 0; i < NUM_COINS; i = i + 1) begin
                if (touching[i] && !touching_last[i]) begin
                    collected[i]   <= 1'b1;
                    coin_count <= coin_count + 1'b1;
                    coin_collected <= 1'b1;   // pulse high for one cycle
                end
            end
        end
    end

    // -----------------------------------------------------------------------
    // Drawing — iterate over all coins each pixel
    // -----------------------------------------------------------------------
    // We need one ROM per coin since each draws simultaneously
    // Instead we check which coin the current pixel belongs to
    // and only read from one ROM (coins don't overlap so only one fires)

    wire [4:0] sprite_row [0:4];
    wire [4:0] sprite_col [0:4];
    wire       in_coin    [0:4];
    wire [11:0] coin_color [0:4];

    genvar g;
    generate
        for (g = 0; g < NUM_COINS; g = g + 1) begin : COIN_DRAW
            assign in_coin[g]    = !collected[g] &&
                                   (hCount >= coin_x[g]) &&
                                   (hCount < coin_x[g] + COIN_SIZE) &&
                                   (vCount >= coin_y[g]) &&
                                   (vCount < coin_y[g] + COIN_SIZE);
            assign sprite_row[g] = vCount - coin_y[g];
            assign sprite_col[g] = hCount - coin_x[g];

            coin_1_rom coin_rom_inst (
                .clk(clk),
                .row(sprite_row[g]),
                .col(sprite_col[g]),
                .color_data(coin_color[g])
            );
        end
    endgenerate

    // pick whichever coin pixel is active
    always @(*) begin
        rgb        = 12'b000000000000;
        coin_valid = 1'b0;
        if (~bright) begin
            rgb        = 12'b000000000000;
            coin_valid = 1'b0;
        end else if (in_coin[0] && coin_color[0] != 12'b000000000000) begin
            rgb        = coin_color[0];
            coin_valid = 1'b1;
        end else if (in_coin[1] && coin_color[1] != 12'b000000000000) begin
            rgb        = coin_color[1];
            coin_valid = 1'b1;
        end else if (in_coin[2] && coin_color[2] != 12'b000000000000) begin
            rgb        = coin_color[2];
            coin_valid = 1'b1;
        end else if (in_coin[3] && coin_color[3] != 12'b000000000000) begin
            rgb        = coin_color[3];
            coin_valid = 1'b1;
        end else if (in_coin[4] && coin_color[4] != 12'b000000000000) begin
            rgb        = coin_color[4];
            coin_valid = 1'b1;
        end
    end

endmodule