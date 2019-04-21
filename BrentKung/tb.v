module tb;

  reg [15:0] A, B;
  reg Cin;
  wire Cout;
  wire [15:0] S;
  reg [16:0] ans;
  reg [15:0] inputVec[100:0];
  integer i, j, f;
  
  BrentKung bk16(A, B, Cin, S, Cout); 
  initial
  begin
    f = $fopen("output.txt","w");
    $readmemh("input.txt", inputVec);

    Cin = 1'b0;
    for (i = 0; i < 100; i = i + 1) begin
      for (j = 0; j < 100; j = j + 1) begin
        A = inputVec[i];
        B = inputVec[j];
        ans = A + B + Cin;

        #20
        $fwrite(f, "A = %h, B = %h, Cin = %b, Cout = %b, S = %h", A, B, Cin, Cout, S);
        if ({Cout,S} !== ans)  $fwrite(f, "ERROR: incorrect sum", ans);
        $fwrite(f, "\n");
      end
    end

    $fclose(f);
  end

endmodule