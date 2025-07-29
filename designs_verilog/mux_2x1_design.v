// Code your design here
module mux_2x1(a,b,sel,z);
  input a,b,sel;
  output reg z;
  assign z = (sel == 0) ? a:b;
endmodule
