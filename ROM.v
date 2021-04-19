module ROM(					
input wire[7:0] addr,					
input wire clk,					
input wire CS,					
input wire OE,					
output reg[15:0] dataout					
);					
					
reg[7:0] dokoin;					
reg[15:0] datatemp;					
					
initial					
	begin				
		dataout=15'hFFFF;			
	end				
					
always@(posedge clk)					
	begin				
		if(OE)	begin		
			dokoin<=addr;		
			case(dokoin)		
				begin	
				7'd1:	datatemp=15'h007F;
				7d2:	datatemp=15'h007F;
				7'd3:	datatemp=15'h007F;
				7d4:	datatemp=15'h007F;
				7'd5:	datatemp=15'h007F;
				7d6:	datatemp=15'h007F;
				7'd7:	datatemp=15'h007F;
				7d8:	datatemp=15'h007F;
				7'd9:	datatemp=15'h007F;
				7d10:	datatemp=15'h007F;
				7'd11:	datatemp=15'h007F;
				7d12:	datatemp=15'h007F;
				7'd13:	datatemp=15'h007F;
				7d14:	datatemp=15'h007F;
				7'd15:	datatemp=15'h007F;
				7d16:	datatemp=15'h007F;
				7'd17:	datatemp=15'h007F;
				7d18:	datatemp=15'h007F;
				7'd19:	datatemp=15'h007F;
				7d20:	datatemp=15'h007F;
				7'd21:	datatemp=15'h007F;
				7d22:	datatemp=15'h007F;
				7'd23:	datatemp=15'h007F;
				7d24:	datatemp=15'h007F;
				7'd25:	datatemp=15'h007F;
				7d26:	datatemp=15'h007F;
				7'd27:	datatemp=15'h007F;
				7d28:	datatemp=15'h007F;
				7'd29:	datatemp=15'h007F;
				7d30:	datatemp=15'h007F;
				7'd31:	datatemp=15'h007F;
				7d32:	datatemp=15'h007F;
				7'd33:	datatemp=15'h007F;
				7d34:	datatemp=15'h007F;
				7'd35:	datatemp=15'h007F;
				7d36:	datatemp=15'h007F;
				7'd37:	datatemp=15'h007F;
				7d38:	datatemp=15'h007F;
				7'd39:	datatemp=15'h007F;
				7d40:	datatemp=15'h007F;
				7'd41:	datatemp=15'h007F;
				7d42:	datatemp=15'h007F;
				7'd43:	datatemp=15'h007F;
				7d44:	datatemp=15'h007F;
				7'd45:	datatemp=15'h007F;
				7d46:	datatemp=15'h007F;
				7'd47:	datatemp=15'h007F;
				7d48:	datatemp=15'h007F;
				7'd49:	datatemp=15'h007F;
				7d50:	datatemp=15'h007F;
				7'd51:	datatemp=15'h007F;
				7d52:	datatemp=15'h007F;
				7'd53:	datatemp=15'h007F;
				7d54:	datatemp=15'h007F;
				7'd55:	datatemp=15'h007F;
				7d56:	datatemp=15'h007F;
				7'd57:	datatemp=15'h007F;
				7d58:	datatemp=15'h007F;
				7'd59:	datatemp=15'h007F;
				7d60:	datatemp=15'h007F;
				7'd61:	datatemp=15'h007F;
				7d62:	datatemp=15'h007F;
				7'd63:	datatemp=15'h007F;
				7d64:	datatemp=15'h007F;
				7'd65:	datatemp=15'h007F;
				7d66:	datatemp=15'h007F;
				7'd67:	datatemp=15'h007F;
				7d68:	datatemp=15'h007F;
				7'd69:	datatemp=15'h007F;
				7d70:	datatemp=15'h007F;
				7'd71:	datatemp=15'h007F;
				7d72:	datatemp=15'h007F;
				7'd73:	datatemp=15'h007F;
				7d74:	datatemp=15'h007F;
				7'd75:	datatemp=15'h007F;
				7d76:	datatemp=15'h007F;
				7'd77:	datatemp=15'h007F;
				7d78:	datatemp=15'h007F;
				7'd79:	datatemp=15'h007F;
				7d80:	datatemp=15'h007F;
				7'd81:	datatemp=15'h007F;
				7d82:	datatemp=15'h007F;
				7'd83:	datatemp=15'h007F;
				7d84:	datatemp=15'h007F;
				7'd85:	datatemp=15'h007F;
				7d86:	datatemp=15'h007F;
				7'd87:	datatemp=15'h007F;
				7d88:	datatemp=15'h007F;
				7'd89:	datatemp=15'h007F;
				7d90:	datatemp=15'h007F;
				7'd91:	datatemp=15'h007F;
				7d92:	datatemp=15'h007F;
				7'd93:	datatemp=15'h007F;
				7d94:	datatemp=15'h007F;
				7'd95:	datatemp=15'h007F;
				7d96:	datatemp=15'h007F;
				7'd97:	datatemp=15'h007F;
				7d98:	datatemp=15'h007F;
				7'd99:	datatemp=15'h007F;
				7d100:	datatemp=15'h007F;
				7'd101:	datatemp=15'h007F;
				7d102:	datatemp=15'h007F;
				7'd103:	datatemp=15'h007F;
				7d104:	datatemp=15'h007F;
				7'd105:	datatemp=15'h007F;
				7d106:	datatemp=15'h007F;
				7'd107:	datatemp=15'h007F;
				7d108:	datatemp=15'h007F;
				7'd109:	datatemp=15'h007F;
				7d110:	datatemp=15'h007F;
				7'd111:	datatemp=15'h007F;
				7d112:	datatemp=15'h007F;
				7'd113:	datatemp=15'h007F;
				7d114:	datatemp=15'h007F;
				7'd115:	datatemp=15'h007F;
				7d116:	datatemp=15'h007F;
				7'd117:	datatemp=15'h007F;
				7d118:	datatemp=15'h007F;
				7'd119:	datatemp=15'h007F;
				7d120:	datatemp=15'h007F;
				7'd121:	datatemp=15'h007F;
				7d122:	datatemp=15'h007F;
				7'd123:	datatemp=15'h007F;
				7d124:	datatemp=15'h007F;
				7'd125:	datatemp=15'h007F;
				7d126:	datatemp=15'h007F;
				7'd127:	datatemp=15'h007F;
				7d128:	datatemp=15'h007F;
				7'd129:	datatemp=15'h007F;
				7d130:	datatemp=15'h007F;
				7'd131:	datatemp=15'h007F;
				7d132:	datatemp=15'h007F;
				7'd133:	datatemp=15'h007F;
				7d134:	datatemp=15'h007F;
				7'd135:	datatemp=15'h007F;
				7d136:	datatemp=15'h007F;
				7'd137:	datatemp=15'h007F;
				default:	datatemp=15'hFFFF;
				endcase	
			end		
		else			
			begin		
				datatemp=15'hFFFF;	
			end		
	end				
					
	always@(negedgeclk)				
	begin				
	if(OE)				
		begin			
			data=datatemp;		
		end			
	end				
					
					
	endmodule				