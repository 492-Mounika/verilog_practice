module demux_1x4(s1,s0,d,y3,y2,y1,y0);
  input s1,s0,d;
  output y3,y2,y1,y0;
  assign y0 = ~s1 & ~s0 & d;
  assign y1 = ~s1 & s0 & d;
  assign y2 = s1 & ~s0 & d;
  assign y3 = s1 & s0 & d;
endmodule
