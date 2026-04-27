module flag_controller(
    input clk,
    input bright,
    input [9:0] hCount, vCount,
    input [9:0] mario_x,
    input [9:0] mario_y,
    output reg [11:0] rgb,
    output reg flag_valid,
    output mario_touching_flag
);

    // TO DO: update X,Y location of flag as needed, this is just a mockup
    localparam FLAG_X = 580;
    localparam FLAG_Y = 160;
    localparam FLAG_W = 48;
    localparam FLAG_H = 360;

    localparam MARIO_W = 32;
    localparam MARIO_H = 32;

    wire flag_bound =
        hCount >= FLAG_X && hCount < FLAG_X + FLAG_W &&
        vCount >= FLAG_Y && vCount < FLAG_Y + FLAG_H;

    wire [8:0] flag_row = vCount - FLAG_Y;
    wire [5:0] flag_col = hCount - FLAG_X;

    wire [11:0] flag_color;

    flag_pole_rom flag_pole_rom_inst(
        .clk(clk),
        .row(flag_row),
        .col(flag_col),
        .color_data(flag_color)
    );

    assign mario_touching_flag =
        (mario_x + MARIO_W >= FLAG_X + 14) &&
        (mario_x <= FLAG_X + 22) &&
        (mario_y + MARIO_H >= FLAG_Y) &&
        (mario_y <= FLAG_Y + FLAG_H);

    always @(*) begin
        if (bright && flag_bound && flag_color != 12'b000000000000) begin
            rgb = flag_color;
            flag_valid = 1'b1;
        end else begin
            rgb = 12'b000000000000;
            flag_valid = 1'b0;
        end
    end

endmodule