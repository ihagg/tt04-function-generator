`default_nettype none

module tt_um_ihagg_testchip1 (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // output pins
    assign uo_out[7] = !ui_in[7];
    assign uo_out[6] = !ui_in[6];
    assign uo_out[5] = !ui_in[5];
    assign uo_out[4] = !ui_in[4];
    assign uo_out[3] = !ui_in[3];
    assign uo_out[2] = !ui_in[2];
    assign uo_out[1] = !ui_in[1];
    assign uo_out[0] = !ui_in[0];

endmodule
