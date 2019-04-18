module KoggeStone(input [15:0] A, input [15:0] B, input Cin, output[15:0] S, output Cout);

  wire [1:0] r1c16, r1c15, r1c14, r1c13, r1c12, r1c11, r1c10, r1c9;
  wire [1:0] r1c8, r1c7, r1c6, r1c5, r1c4, r1c3, r1c2, r1c1;
    
  pg16 pg16_1(.A(A), .B(B), .pg15(r1c16),.pg14(r1c15),.pg13(r1c14),
        .pg12(r1c13),.pg11(r1c12),.pg10(r1c11),.pg9(r1c10),.pg8(r1c9),
        .pg7(r1c8),.pg6(r1c7),.pg5(r1c6),.pg4(r1c5),.pg3(r1c4),
        .pg2(r1c3),.pg1(r1c2),.pg0(r1c1));


/* FIRST ROW */
    wire r2c1;  
    wire [1:0]  r2c2, r2c3,  r2c4,  r2c5,  r2c6,  r2c7,  r2c8,  r2c9,  r2c10,  r2c11,  r2c12,  r2c13,  r2c14,  r2c15;
    GrayCell blockr1c1(.pg(r1c1), .pg0(Cin), .pgo(r2c1));

    BlackCell blockr1c2(.pg(r1c2), .pg0(r1c1), .pgo(r2c2));
    BlackCell blockr1c3(.pg(r1c3), .pg0(r1c2), .pgo(r2c3));
    BlackCell blockr1c4(.pg(r1c4), .pg0(r1c3), .pgo(r2c4));
    BlackCell blockr1c5(.pg(r1c5), .pg0(r1c4), .pgo(r2c5));
    BlackCell blockr1c6(.pg(r1c6), .pg0(r1c5), .pgo(r2c6));
    BlackCell blockr1c7(.pg(r1c7), .pg0(r1c6), .pgo(r2c7));
    BlackCell blockr1c8(.pg(r1c8), .pg0(r1c7), .pgo(r2c8));
    BlackCell blockr1c9(.pg(r1c9), .pg0(r1c8), .pgo(r2c9));
    BlackCell blockr1c10(.pg(r1c10), .pg0(r1c9), .pgo(r2c10));
    BlackCell blockr1c11(.pg(r1c11), .pg0(r1c10), .pgo(r2c11));
    BlackCell blockr1c12(.pg(r1c12), .pg0(r1c11), .pgo(r2c12));
    BlackCell blockr1c13(.pg(r1c13), .pg0(r1c12), .pgo(r2c13));
    BlackCell blockr1c14(.pg(r1c14), .pg0(r1c13), .pgo(r2c14));
    BlackCell blockr1c15(.pg(r1c15), .pg0(r1c14), .pgo(r2c15));

/* SECOND ROW */
    wire r3c2, r3c3;
    wire [1:0] r3c4, r3c5, r3c6, r3c7, r3c8, r3c9, r3c10, r3c11, r3c12, r3c13, r3c14, r3c15;
    GrayCell blockr2c2(.pg(r2c2), .pg0(Cin), .pgo(r3c2));
    GrayCell blockr2c3(.pg(r2c3), .pg0(r2c1), .pgo(r3c3));

    BlackCell blockr2c4(.pg(r2c4), .pg0(r2c2), .pgo(r3c4));
    BlackCell blockr2c5(.pg(r2c5), .pg0(r2c3), .pgo(r3c5));
    BlackCell blockr2c6(.pg(r2c6), .pg0(r2c4), .pgo(r3c6));
    BlackCell blockr2c7(.pg(r2c7), .pg0(r2c5), .pgo(r3c7));
    BlackCell blockr2c8(.pg(r2c8), .pg0(r2c6), .pgo(r3c8));
    BlackCell blockr2c9(.pg(r2c9), .pg0(r2c7), .pgo(r3c9));
    BlackCell blockr2c10(.pg(r2c10), .pg0(r2c8), .pgo(r3c10));
    BlackCell blockr2c11(.pg(r2c11), .pg0(r2c9), .pgo(r3c11));
    BlackCell blockr2c12(.pg(r2c12), .pg0(r2c10), .pgo(r3c12));
    BlackCell blockr2c13(.pg(r2c13), .pg0(r2c11), .pgo(r3c13));
    BlackCell blockr2c14(.pg(r2c14), .pg0(r2c12), .pgo(r3c14));
    BlackCell blockr2c15(.pg(r2c15), .pg0(r2c13), .pgo(r3c15));


/* THIRD ROW */
    wire r4c4;
    wire r4c5;
    wire r4c6;
    wire r4c7;

    wire  [1:0] r4c8, r4c9, r4c10, r4c11, r4c12,  r4c13, r4c14, r4c15;

    GrayCell blockr3c4(.pg(r3c4), .pg0(Cin), .pgo(r4c4));
    GrayCell blockr3c5(.pg(r3c5), .pg0(r2c1), .pgo(r4c5));
    GrayCell blockr3c6(.pg(r3c6), .pg0(r3c2), .pgo(r4c6));
    GrayCell blockr3c7(.pg(r3c7), .pg0(r3c3), .pgo(r4c7));

    BlackCell blockr3c8(.pg(r3c8), .pg0(r3c4), .pgo(r4c8));
    BlackCell blockr3c9(.pg(r3c9), .pg0(r3c5), .pgo(r4c9));
    BlackCell blockr3c10(.pg(r3c10), .pg0(r3c6), .pgo(r4c10));
    BlackCell blockr3c11(.pg(r3c11), .pg0(r3c7), .pgo(r4c11));
    BlackCell blockr3c12(.pg(r3c12), .pg0(r3c8), .pgo(r4c12));
    BlackCell blockr3c13(.pg(r3c13), .pg0(r3c9), .pgo(r4c13));
    BlackCell blockr3c14(.pg(r3c14), .pg0(r3c10), .pgo(r4c14));
    BlackCell blockr3c15(.pg(r3c15), .pg0(r3c11), .pgo(r4c15));


/* FOURTH ROW */
    wire r5c8;
    wire r5c9;
    wire r5c10;
    wire r5c11;
    wire r5c12;
    wire r5c13;
    wire r5c14;
    wire r5c15;

    GrayCell blockr4c8(.pg(r4c8), .pg0(Cin), .pgo(r5c8));
    GrayCell blockr4c9(.pg(r4c9), .pg0(r2c1), .pgo(r5c9));

    GrayCell blockr4c10(.pg(r4c10), .pg0(r3c2), .pgo(r5c10));
    GrayCell blockr4c11(.pg(r4c11), .pg0(r3c3), .pgo(r5c11));
    GrayCell blockr4c12(.pg(r4c12), .pg0(r4c4), .pgo(r5c12));
    GrayCell blockr4c13(.pg(r4c13), .pg0(r4c5), .pgo(r5c13));
    GrayCell blockr4c14(.pg(r4c14), .pg0(r4c6), .pgo(r5c14));
    GrayCell blockr4c15(.pg(r4c15), .pg0(r4c7), .pgo(r5c15));


/* finally */

    xor16 xor16_1(.A({r5c15, r5c14, r5c13, r5c12, r5c11, r5c10, r5c9, r5c8, r4c7, r4c6, r4c5, r4c4, r3c3, r3c2, r2c1, Cin}),
                  .B({r1c16[1],r1c15[1],r1c14[1], r1c13[1],r1c12[1],r1c11[1],r1c10[1],r1c9[1],r1c8[1],r1c7[1],r1c6[1], r1c5[1],r1c4[1],r1c3[1],r1c2[1],r1c1[1]}),
                  .S(S));


    GrayCell genCout(.pg(r1c16), .pg0(r5c15), .pgo(Cout));
  
endmodule
