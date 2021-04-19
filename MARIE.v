	
//Virtual Processor using Verilog Created by V. Dupo	
module MARIE(	
input wire vld,	
input wire clk,	
input wire rst,	
input wire [15:0] mdata,	
input wire [7:0] PA,	
output reg [7:0] Pcdata,	
output reg [7:0] PC,	
output reg [7:0] PB	
);	
reg [7:0] TREG;	
//reg clk;	
//reg rst;	
reg [7:0]  cmd1;	
reg [7:0] cmd2;	
reg [7:0] A;	
reg [7:0] B;	
reg [7:0] PortA;	
reg [7:0] IR;	
reg [7:0] DecReg; 	
reg  pvld;	
reg [7:0] literals;	
	
	
always@(rst)	
begin	
	if(rst) Pcdata = 1'b0; PC =1'b0; A=1'b0; B =1'b0; PortA=1'b0; PB=1'b0;  IR=1'b0;
end	
	
always@(posedge clk)	
begin	
        if(!rst) PC <= Pcdata; IR <=mdata[7:0]; DecReg<=IR; literals = mdata[15:8];	
end	
	
	
	
always@(posedge clk)	
begin	
    if(!rst)	
	case(DecReg)
	8'b0000000: // Addition
	TREG = A + B ; 
	8'b0000001: // Subtraction
	TREG= A - B ;
	8'b00000010: // Multiplication
	TREG = A * B;
	8'b00000011: // Division
	TREG= A/B;
	8'b00000100: // Logical shift left
	TREG= A<<1;
	8'b00000101: // Logical shift right
	TREG = A>>1;
	8'b00000110: // Rotate left
	TREG = {A[6:0],A[7]};
	8'b00000111: // Rotate right
	TREG = {A[0],A[7:1]};
	8'b00001000: //  Logical and 
	TREG = A & B;
	8'b00001001: //  Logical or
	TREG = A | B;
	8'b00001010: //  Logical xor 
	TREG= A ^ B;
	8'b00001011: //  Logical nor
	TREG = ~(A | B);
	8'b00001100: // Logical nand 
	TREG= ~(A & B);
	8'b00001101: // Logical xnor
	TREG = ~(A ^ B);
	8'b00001110: // Greater comparison
	TREG = (A>B)?8'd1:8'd0 ;
	8'b00001111: // Equal comparison   
	TREG = (A==B)?8'd1:8'd0 ;
	8'b00010000: // Equal comparison   
	PB=A;
	8'b00010001: // Move PA to Acc  
	A=PortA;
        8'b00010010: // Move PA to PB	
	PB=PortA;
	8'b00010011: //  Move Lit to B 
        PB=literals[7:0];	
	default: TREG = A + B ; 
	endcase
Pcdata=Pcdata+1;	
end	
	
	
always@(PA)	
begin	
PortA=PA;	
end	
	
endmodule	