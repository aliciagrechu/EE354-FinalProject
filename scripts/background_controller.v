`timescale 1ns / 1ps

module background_controller(
    input  wire        clk,
    input  wire        bright,
    input  wire [9:0]  hCount,
    input  wire [9:0]  vCount,
    
    input wire scroll_next,
    output reg  [11:0] rgb,
    output reg     in_scene2,
    output wire        bg_valid
);

    // -----------------------------------------------------------------------
    // Scene register — latches on scroll_next pulse
    // -----------------------------------------------------------------------
    reg in_scene2;

    always @(posedge clk) begin
        if (scroll_next)
            in_scene2 <= 1'b1;
        else
            in_scene2 <= 1'b0;
    end

    // -----------------------------------------------------------------------
    // ROM address computation — both ROMs are 480×640 (row[8:0], col[9:0])
    // -----------------------------------------------------------------------
    wire [8:0] row_addr = vCount[8:0];
    wire [9:0] col_addr = hCount[9:0];

    // Scene 1 background ROM
    wire [11:0] bg1_color;
    new_background1_sky_nofloor_rom bg1_rom (
        .clk   (clk),
        .row   (row_addr),
        .col   (col_addr),
        .color_data (bg1_color)
    );

    // Scene 2 background ROM
    wire [11:0] bg2_color;
    background2_rom bg2_rom (
        .clk   (clk),
        .row   (row_addr),
        .col   (col_addr),
        .color_data (bg2_color)
    );

    // -----------------------------------------------------------------------
    // Output mux
    // -----------------------------------------------------------------------
    assign bg_valid = bright;   // background always fills every visible pixel

    always @(*) begin
        if (!bright)
            rgb = 12'b0;
        else if (in_scene2)
            rgb = bg2_color;
        else
            rgb = bg1_color;
    end

endmodule