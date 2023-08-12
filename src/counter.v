`default_nettype none
`timescale 1ps / 1ps

module counter
  (
    input clk,
    input rst,
    output [7:0] count
  );
	
  // state registers
  reg [7:0] reg_count;

  // state state
  wire [7:0] next_count;

  // update state
  always @ (posedge clk, posedge rst)
  begin
    if (rst)
      reg_count <= 0;
    else
      reg_count <= next_count;
  end

  // compute next value
  assign next_count = reg_count + 1;

  // output logic
  assign count = reg_count;
	
endmodule 
