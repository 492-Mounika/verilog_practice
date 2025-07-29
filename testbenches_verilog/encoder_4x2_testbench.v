module tb;
  reg d0,d1,d2,d3;
  wire q0,q1;
  
  encoder_4x2 uut(.d0(d0), .d1(d1), .d2(d2), .d3(d3), .q0(q0), .q1(q1));
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0,tb);
    
    $monitor("d3=%b d2=%b d1=%b d0=%b q1=%b q0=%b",d3,d2,d1,d0,q1,q0);
    d3=0;d2=0;d1=0;d0=1;#10;
    d3=0;d2=0;d1=1;d0=0;#10;
    d3=0;d2=1;d1=0;d0=0;#10;
    d3=1;d2=0;d1=0;d0=0;#10;
    
    $finish;
  end
endmodule
