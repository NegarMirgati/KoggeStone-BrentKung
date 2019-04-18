module GrayCell(input [1:0] pg, input pg0, output pgo);
  wire and_out;
  and and1(and_out, pg0, pg[1]);
  or or1(pgo, pg[0], and_out);
  
endmodule
