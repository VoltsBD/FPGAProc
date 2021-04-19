	
//Virtual Processor using Verilog Created by V. Dupo	
// How to use at the start of everythin make sure to set rst = 1 for 100 nS to reset the counters.
// Before starting to use the processor.
module MARIE(	
input wire vld,	
input wire clk,	
input wire rst,	
input wire [15:0] mdata,	
input wire [7:0] PA,	
output reg [7:0] Pcdata,	
output reg [7:0] PC,	
output reg [7:0] PB,
output reg CS,
output reg OE
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
reg [1:0] state;
	
initial
begin
	PC=7'd0;
	CS=0'b0;
	OE=0'b0;
	state=1'd0;
end
	
always@(rst)	
begin	
	if(rst) begin 
			Pcdata = 1'b0; 
			PC =1'b0; 
			A=1'b0; 
			B =1'b0; 
			PortA=1'b0; 
			PB=1'b0;  
			IR=1'b0; 
			state=1'd0;
			end
end	
	
	
// Fetch Cycle	
always@(posedge clk)	
begin	
	//Fetch 
	if(state=1'd0) begin
					if(!rst) begin
								OE=0'b1;
								CS=0'b1;
								state=1'd1;
							  end
					end
	if(state==1'd1) 
				begin
					if(!rst) 
						begin
						PC <= Pcdata; 
						IR <=mdata[7:0]; 
						DecReg<=IR; 
						literals = mdata[15:8];	
						state=1'd2;
						end	
				end
	// Decode and Execute
    if(state==1'd2) begin 
			    OE=0'b0;
				CS=0'b0;
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
				state=1'd3;
				end				
// PC++ 
	if(state==1'd3)
				begin
				Pcdata=Pcdata+1;
				state=1'd0;
				end
end	
	
	
always@(PA)	
begin	
PortA=PA;	
end	
	
endmodule	