module xor16 (input [15:0] A, B, output [15:0] S);
xor xor0(S[0] ,A[0], B[0]);
xor xor1(S[1] ,A[1], B[1]);
xor xor2(S[2] ,A[2], B[2]);
xor xor3(S[3] ,A[3], B[3]);
xor xor4(S[4] ,A[4], B[4]);
xor xor5(S[5] ,A[5], B[5]);
xor xor6(S[6] ,A[6], B[6]);
xor xor7(S[7] ,A[7], B[7]);
xor xor8(S[8] ,A[8], B[8]);
xor xor9(S[9] ,A[9], B[9]);
xor xor10(S[10] ,A[10], B[10]);
xor xor11(S[11] ,A[11], B[11]);
xor xor12(S[12] ,A[12], B[12]);
xor xor13(S[13] ,A[13], B[13]);
xor xor14(S[14] ,A[14], B[14]);
xor xor15(S[15] ,A[15], B[15]);
endmodule
