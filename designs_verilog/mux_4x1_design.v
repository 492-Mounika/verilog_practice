// Code your design here
module mux_4x1(a,b,c,d,s,z);
  input a,b,c,d;
  input [1:0]s;
  output wire z;
  assign z = (s==2'b00) ? a:
    		 (s==2'b01) ? b:
    	 	 (s==2'b10) ? c:
    		  d;
endmodule
