module tb;
  reg s1,s0,d;
  wire y3,y2,y1,y0;
  demux_1x4 uut(.s1(s1),.s0(s0),.d(d),.y3(y3),.y2(y2),.y1(y1),.y0(y0));
  initial begin
    $monitor("s1=%b  s0=%b  d=%b  y3=%b  y2=%b  y1=%b  y0=%b",s1,s0,d,y3,y2,y1,y0);
    s1 = 0;s0 = 0;d = 0;#10;
    s1 = 0;s0 = 0;d = 1;#10;
    s1 = 0;s0 = 1;d = 0;#10;
    s1 = 0;s0 = 1;d = 1;#10;
    s1 = 1;s0 = 0;d = 0;#10;
    s1 = 1;s0 = 0;d = 1;#10;
    s1 = 1;s0 = 1;d = 0;#10;
    s1 = 1;s0 = 1;d = 1;#10;
    $finish;
  end
endmodule
  
