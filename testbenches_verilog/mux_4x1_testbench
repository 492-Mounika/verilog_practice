// Code your testbench here
module tb;
  reg a,b,c,d;
  reg [1:0]s;
  wire z;
  mux_4x1 uut(.a(a), .b(b), .c(c), .d(d),.s(s),.z(z));
  initial begin
    $monitor("a=%b b=%b c=%b d=%b s=%b z=%b",a,b,c,d,s,z);
    //case1
    a=0;b=0;c=0;d=0;s=2'b00;#10;
    //case2
    a=1;b=1;c=0;d=0;s=2'b01;#10;
    //case3
    a=1;b=1;c=0;d=0;s=2'b10;#10;
    //case4
    a=0;b=0;c=0;d=1;s=2'b11;#10;
    $finish;
  end
endmodule
