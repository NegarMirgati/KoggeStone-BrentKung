module BlackCell(input [1:0] pg, pg0, output [1:0] pgo);
  
wire and1out;    
and and1(and1out, pg0[0], pg[1]);
or or1(pgo[0], and1out, pg[0]);
and and2(pgo[1], pg[1], pg0[1]);
  
endmodule