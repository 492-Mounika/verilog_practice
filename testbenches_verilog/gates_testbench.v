// Code your testbench here
// or browse Examples
module tb;
  reg a,b;
  wire and_,or_,not_,nand_,nor_,xor_,xnor_;
  gates utt(.a(a), .b(b), .or_(or_), .and_(and_), .not_(not_), .nand_(nand_), .xor_(xor_),.nor_(nor_), .xnor_(xnor_));
  initial begin
    $monitor("a = %b b = %b and = %b or = %b not = %b nand = %b nor = %b xor = %b xnor = %b",a,b,and_,or_,not_,nand_,nor_,xor_,xnor_);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
    $finish;
  end
endmodule
