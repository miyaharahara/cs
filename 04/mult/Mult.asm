// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// ニーモニックバイナリ一歩手前で表現する
// Initialize
// R0の数値をR1回足したものをR2に格納する
// @ope     // 足される数値を格納
// M=M[R0]
@i       // 何回かけるか回を格納
M=0
@R2      // 演算結果格納、まずは初期化R2=0
M=0
// Main
//  
(LOOP)   // if(i-R1)=0 goto END
@i
D=M      // Dはカウンタ変数
@R1
D=D-M
@END     // ここではJMP先のアドレス
D;JGE    // if (D>=0) goto END

// else (メイン処理を行う)
@i       // indexをセット
D=
@ope     // オペランドをDレジスタにセット
D=M[R0]
@R2      // 演算結果に複合加算
M=M+D   
@i       // indexインクリメント
M=M+1
@LOOP    // 強制的にLOOPラベルにJMP
0;JMP

(END)
@END
0;JMP