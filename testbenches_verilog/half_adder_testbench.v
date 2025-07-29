module tb;
  reg a,b;
  wire sum,cout;
  half_adder uut(.a(a), .b(b), .sum(sum), .cout(cout));
  initial begin
    $monitor("a=%b b=%b sum=%b c=%b",a,b,sum,cout);
    a=0;b=0;#10;
    a=0;b=1;#10;
    a=1;b=0;#10;
    a=1;b=1;#10;
    $finish;
  end
endmodule
  
