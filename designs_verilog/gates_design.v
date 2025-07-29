// Code your design here
module gates(a,b,and_,or_,not_,nand_,nor_,xor_,xnor_);
  input a,b;
  output and_,or_,not_,nand_,nor_,xor_,xnor_;
  assign and_ = (a&b);
  assign or_ = (a|b);
  assign not_ = ~(a);
  assign nand_ = ~(a&b);
  assign nor_ = ~(a|b);
  assign xor_ = (a^b);
  assign xnor_ = ~(a^b);
endmodule
