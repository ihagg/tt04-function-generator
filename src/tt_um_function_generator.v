`default_nettype none

module tt_um_function_generator (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    wire rst;
    wire [1:0] sel;
    wire [5:0] div;
    wire [7:0] duty;
    wire [7:0] duty_sin;
    wire [7:0] duty_saw;
    wire [7:0] duty_tri;
    wire [7:0] count;
    wire clk_duty;
    wire pwm;
  
    assign rst = !rst_n;
    assign sel[1:0] = ui_in[1:0];
    assign div[5:0] = ui_in[7:2];

    assign duty = sel[1] ?
                 (sel[0] ? duty_tri : duty_saw) :
                 (sel[0] ? duty_sin : 0) ;

    assign uo_out[0] = pwm;

    // unsued output pins
    assign uo_out[7] = 1'b0;
    assign uo_out[6] = 1'b0;
    assign uo_out[5] = 1'b0;
    assign uo_out[4] = 1'b0;
    assign uo_out[3] = 1'b0;
    assign uo_out[2] = 1'b0;
    assign uo_out[1] = 1'b0;

    // unsued inout pins
    assign uio_out[7] = 1'b0;
    assign uio_out[6] = 1'b0;
    assign uio_out[5] = 1'b0;
    assign uio_out[4] = 1'b0;
    assign uio_out[3] = 1'b0;
    assign uio_out[2] = 1'b0;
    assign uio_out[1] = 1'b0;
    assign uio_out[0] = 1'b0;

    // unsued inout enable pins
    assign uio_oe[7] = 1'b0;
    assign uio_oe[6] = 1'b0;
    assign uio_oe[5] = 1'b0;
    assign uio_oe[4] = 1'b0;
    assign uio_oe[3] = 1'b0;
    assign uio_oe[2] = 1'b0;
    assign uio_oe[1] = 1'b0;
    assign uio_oe[0] = 1'b0;
  
    clkdiv clkdiv(
      .clkin(clk),
      .rst(rst),
      .div(div),
      .clkout(clk_duty)
     );
  
    counter counter(
      .clk(clk_duty),
      .rst(rst),
      .count(count)
     );
  
    lutsin lutsin(
      .addr(count),
      .value(duty_sin)
     );
  
    lutsaw lutsaw(
      .addr(count),
      .value(duty_saw)
     );
  
    luttri luttri(
      .addr(count),
      .value(duty_tri)
     );
  
    pwmgen pwmgen(
      .clk(clk),
      .rst(rst),
      .duty(duty),
      .pwm(pwm)
     );

endmodule
