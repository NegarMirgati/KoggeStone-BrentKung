module tb;
  reg [15:0] A, B;
  reg Cin;
  wire Cout;
  wire [15:0] S;
  reg [16:0] ans;
  reg [15:0] testv[15:0];
  integer i, j;

  KoggeStone bk16(A, B, Cin, S, Cout); 

  initial
  begin
    $readmemh("testcases16.txt", testv);

    Cin = 1'b0;
    for (i = 0; i < 16; i = i + 1) begin
      for (j = 0; j < 16; j = j + 1) begin
        A = testv[i];
        B = testv[j];
        ans = A + B + Cin;

        #20
        $display("A = %h, B = %h, Cin = %b, Cout = %b, S = %h", A, B, Cin, Cout, S);
        if ({Cout,S} !== ans) $display("ERROR: Sum not %h!", ans);
      end
    end

    $finish;
  end

endmodule