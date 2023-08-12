`default_nettype none
`timescale 1ps / 1ps

module pwmgen
  (
    input clk,
    input rst,
    input [7:0] duty,
    output pwm
  );
	
  // state registers
  reg reg_pwm;
  reg [7:0] reg_duty;

  // next state signals
  wire next_pwm;
  wire [7:0] next_duty;

  // update state registers
  always @ (posedge clk, posedge rst)
  begin
    if (rst)
      begin
        reg_pwm <= 0;
        reg_duty <= 0; 
      end
    else
      begin
        reg_pwm <= next_pwm;
        reg_duty <= next_duty; 
      end
  end

  // compute next values
  assign next_duty = reg_duty + 1;
  assign next_pwm = reg_duty < duty;

  // output logic
  assign pwm = reg_pwm;
	
endmodule
