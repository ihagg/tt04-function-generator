`default_nettype none
`timescale 1ps / 1ps

module clkdiv 
  (
    input clkin,
    input rst,
    input [5:0] div,
    output clkout
  );

  // state registers
  reg reg_clkout;
  reg [5:0] reg_count;
  
  // state state
  wire next_clkout;
  wire [5:0] next_count;
  
  // update state
  always @ (posedge clkin, posedge rst)
  begin
    if (rst) begin
      reg_clkout <= 1'b0;
      reg_count <= 0;
    end
    else if (next_count == div/2)
    begin 
      reg_count <= 0;
      reg_clkout <= ~reg_clkout;
    end
    else
      reg_count <= next_count;
  end
    
  // compute next value
  assign next_count = reg_count + 1;
   
  // output logic
  assign clkout = reg_clkout;
        
endmodule 
