module BrentKung(input [15:0] A, input [15:0] B, input Cin, output[15:0] S, output Cout);
  wire [1:0] r1c16, r1c15, r1c14, r1c13, r1c12, r1c11, r1c10, r1c9;
  wire [1:0] r1c8, r1c7, r1c6, r1c5, r1c4, r1c3, r1c2, r1c1;
    
  pg16 ipg16(.A(A), .B(B), .pg15(r1c16),.pg14(r1c15),.pg13(r1c14),
        .pg12(r1c13),.pg11(r1c12),.pg10(r1c11),.pg9(r1c10),.pg8(r1c9),
        .pg7(r1c8),.pg6(r1c7),.pg5(r1c6),.pg4(r1c5),.pg3(r1c4),
        .pg2(r1c3),.pg1(r1c2),.pg0(r1c1));

  /**** FIRST ROW *****/      
   wire [1:0] r2c15, r2c13, r2c11, r2c9, r2c7, r2c5, r2c3;
   wire r2c1;

    GrayCell blockr1c1(.pg(r1c1), .pg0(Cin), .pgo(r2c1));
    BlackCell blockr1c3(.pg(r1c3), .pg0(r1c2), .pgo(r2c3));
    BlackCell blockr1c5(.pg(r1c5), .pg0(r1c4), .pgo(r2c5));
    BlackCell blockr1c7(.pg(r1c7), .pg0(r1c6), .pgo(r2c7));
    BlackCell blockr1c9(.pg(r1c9), .pg0(r1c8), .pgo(r2c9));
    BlackCell blockr1c11(.pg(r1c11), .pg0(r1c10), .pgo(r2c11));
    BlackCell blockr1c13(.pg(r1c13), .pg0(r1c12), .pgo(r2c13));
    BlackCell blockr1c15(.pg(r1c15), .pg0(r1c14), .pgo(r2c15));


    /**** SECOND  ROW *****/      
    wire [1:0] r3c15, r3c11, r3c7;
    wire r3c3;

    BlackCell blockr2c15(.pg(r2c15), .pg0(r2c13), .pgo(r3c15));
    BlackCell blockr2c11(.pg(r2c11), .pg0(r2c9), .pgo(r3c11));
    BlackCell blockr2c7(.pg(r2c7), .pg0(r2c5), .pgo(r3c7));
    GrayCell blockr2c3(.pg(r2c3), .pg0(r2c1), .pgo(r3c3));

    /**** THIRD  ROW *****/  
    wire [1:0] r4c15;
    wire r4c7;

    GrayCell blockr3c7(.pg(r3c7), .pg0(r3c3), .pgo(r4c7));
    BlackCell blockr3c15(.pg(r3c15), .pg0(r3c11), .pgo(r4c15));


    /**** FOURTH ROW *****/  
    wire r5c15, r5c11;

    GrayCell blockr6c11(.pg(r3c11), .pg0(r4c7), .pgo(r5c11));
    GrayCell blockr4c15(.pg(r4c15), .pg0(r4c7), .pgo(r5c15));


    /**** FIFTH ROW *****/  
    wire r6c13, r6c9, r6c5;
    GrayCell blockr5c5(.pg(r2c5), .pg0(r3c3), .pgo(r6c5));
    GrayCell blockr5c9(.pg(r2c9), .pg0(r4c7), .pgo(r6c9));
    GrayCell blockr5c13(.pg(r2c13), .pg0(r5c11), .pgo(r6c13));



    /**** SIXTH ROW *****/   
    wire r7c14, r7c12, r7c10, r7c8, r7c6, r7c4, r7c2;

    GrayCell blockr6c2(.pg(r1c2), .pg0(r2c1), .pgo(r7c2));
    GrayCell blockr6c4(.pg(r1c4), .pg0(r3c3), .pgo(r7c4));
    GrayCell blockr6c6(.pg(r1c6), .pg0(r6c5), .pgo(r7c6));
    GrayCell blockr6c8(.pg(r1c8), .pg0(r4c7), .pgo(r7c8));
    GrayCell blockr6c10(.pg(r1c10), .pg0(r6c9), .pgo(r7c10));
    GrayCell blockr6c12(.pg(r1c12), .pg0(r5c11), .pgo(r7c12));
    GrayCell blockr6c14(.pg(r1c14), .pg0(r6c13), .pgo(r7c14));


    xor16 xor16_1(.A({r5c15,r7c14,r6c13,r7c12,r5c11,r7c10,r6c9,r7c8,r4c7,r7c6,
        r6c5,r7c4,r3c3,r7c2,r2c1,Cin}), .B({r1c16[1],r1c15[1],r1c14[1],
        r1c13[1],r1c12[1],r1c11[1],r1c10[1],r1c9[1],r1c8[1],r1c7[1],r1c6[1],
        r1c5[1],r1c4[1],r1c3[1],r1c2[1],r1c1[1]}), .S(S));


    GrayCell genCout(.pg(r1c16), .pg0(r5c15), .pgo(Cout));

endmodule