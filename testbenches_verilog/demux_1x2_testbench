module tb;
  reg s,d;
  wire y1,y0;
  demux_1x2 uut(.s(s),.d(d),.y1(y1),.y0(y0));
  initial begin
    $monitor("s = %b, d = %b ,y1 = %b, y0 = %b",s,d,y1,y0);
    s = 0;d = 0;#10;
    s = 0;d = 1;#10;
    s = 1;d = 0;#10;
    s = 1;d = 1;#10;
    $finish;
  end
endmodule
