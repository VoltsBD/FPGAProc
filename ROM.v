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
		dataout=16'hFFFF;			
	end				
					
always@(posedge clk)					
	begin				
		if(OE)	begin		
			dokoin<=addr;		
			case(dokoin)		
					
				8'd0:	datatemp=16'h1613;
				8'd1:	datatemp=16'h007F;
				8'd2:	datatemp=16'h007F;
				8'd3:	datatemp=16'h007F;
				8'd4:	datatemp=16'h007F;
				8'd5:	datatemp=16'h007F;
				8'd6:	datatemp=16'h007F;
				8'd7:	datatemp=16'h007F;
				8'd8:	datatemp=16'h007F;
				8'd9:	datatemp=16'h007F;
				8'd10:	datatemp=16'h007F;
				8'd11:	datatemp=16'h007F;
				8'd12:	datatemp=16'h007F;
				8'd13:	datatemp=16'h007F;
				8'd14:	datatemp=16'h007F;
				8'd15:	datatemp=16'h007F;
				8'd16:	datatemp=16'h007F;
				8'd17:	datatemp=16'h007F;
				8'd18:	datatemp=16'h007F;
				8'd19:	datatemp=16'h007F;
				8'd20:	datatemp=16'h007F;
				8'd21:	datatemp=16'h007F;
				8'd22:	datatemp=16'h007F;
				8'd23:	datatemp=16'h007F;
				8'd24:	datatemp=16'h007F;
				8'd25:	datatemp=16'h007F;
				8'd26:	datatemp=16'h007F;
				8'd27:	datatemp=16'h007F;
				8'd28:	datatemp=16'h007F;
				8'd29:	datatemp=16'h007F;
				8'd30:	datatemp=16'h007F;
				8'd31:	datatemp=16'h007F;
				8'd32:	datatemp=16'h007F;
				8'd33:	datatemp=16'h007F;
				8'd34:	datatemp=16'h007F;
				8'd35:	datatemp=16'h007F;
				8'd36:	datatemp=16'h007F;
				8'd37:	datatemp=16'h007F;
				8'd38:	datatemp=16'h007F;
				8'd39:	datatemp=16'h007F;
				8'd40:	datatemp=16'h007F;
				8'd41:	datatemp=16'h007F;
				8'd42:	datatemp=16'h007F;
				8'd43:	datatemp=16'h007F;
				8'd44:	datatemp=16'h007F;
				8'd45:	datatemp=16'h007F;
				8'd46:	datatemp=16'h007F;
				8'd47:	datatemp=16'h007F;
				8'd48:	datatemp=16'h007F;
				8'd49:	datatemp=16'h007F;
				8'd50:	datatemp=16'h007F;
				8'd51:	datatemp=16'h007F;
				8'd52:	datatemp=16'h007F;
				8'd53:	datatemp=16'h007F;
				8'd54:	datatemp=16'h007F;
				8'd55:	datatemp=16'h007F;
				8'd56:	datatemp=16'h007F;
				8'd57:	datatemp=16'h007F;
				8'd58:	datatemp=16'h007F;
				8'd59:	datatemp=16'h007F;
				8'd60:	datatemp=16'h007F;
				8'd61:	datatemp=16'h007F;
				8'd62:	datatemp=16'h007F;
				8'd63:	datatemp=16'h007F;
				8'd64:	datatemp=16'h007F;
				8'd65:	datatemp=16'h007F;
				8'd66:	datatemp=16'h007F;
				8'd67:	datatemp=16'h007F;
				8'd68:	datatemp=16'h007F;
				8'd69:	datatemp=16'h007F;
				8'd70:	datatemp=16'h007F;
				8'd71:	datatemp=16'h007F;
				8'd72:	datatemp=16'h007F;
				8'd73:	datatemp=16'h007F;
				8'd74:	datatemp=16'h007F;
				8'd75:	datatemp=16'h007F;
				8'd76:	datatemp=16'h007F;
				8'd77:	datatemp=16'h007F;
				8'd78:	datatemp=16'h007F;
				8'd79:	datatemp=16'h007F;
				8'd80:	datatemp=16'h007F;
				8'd81:	datatemp=16'h007F;
				8'd82:	datatemp=16'h007F;
				8'd83:	datatemp=16'h007F;
				8'd84:	datatemp=16'h007F;
				8'd85:	datatemp=16'h007F;
				8'd86:	datatemp=16'h007F;
				8'd87:	datatemp=16'h007F;
				8'd88:	datatemp=16'h007F;
				8'd89:	datatemp=16'h007F;
				8'd90:	datatemp=16'h007F;
				8'd91:	datatemp=16'h007F;
				8'd92:	datatemp=16'h007F;
				8'd93:	datatemp=16'h007F;
				8'd94:	datatemp=16'h007F;
				8'd95:	datatemp=16'h007F;
				8'd96:	datatemp=16'h007F;
				8'd97:	datatemp=16'h007F;
				8'd98:	datatemp=16'h007F;
				8'd99:	datatemp=16'h007F;
				8'd100:	datatemp=16'h007F;
				8'd101:	datatemp=16'h007F;
				8'd102:	datatemp=16'h007F;
				8'd103:	datatemp=16'h007F;
				8'd104:	datatemp=16'h007F;
				8'd105:	datatemp=16'h007F;
				8'd106:	datatemp=16'h007F;
				8'd107:	datatemp=16'h007F;
				8'd108:	datatemp=16'h007F;
				8'd109:	datatemp=16'h007F;
				8'd110:	datatemp=16'h007F;
				8'd111:	datatemp=16'h007F;
				8'd112:	datatemp=16'h007F;
				8'd113:	datatemp=16'h007F;
				8'd114:	datatemp=16'h007F;
				8'd115:	datatemp=16'h007F;
				8'd116:	datatemp=16'h007F;
				8'd117:	datatemp=16'h007F;
				8'd118:	datatemp=16'h007F;
				8'd119:	datatemp=16'h007F;
				8'd120:	datatemp=16'h007F;
				8'd121:	datatemp=16'h007F;
				8'd122:	datatemp=16'h007F;
				8'd123:	datatemp=16'h007F;
				8'd124:	datatemp=16'h007F;
				8'd125:	datatemp=16'h007F;
				8'd126:	datatemp=16'h007F;
				8'd127:	datatemp=16'h007F;
				8'd128:	datatemp=16'h007F;
				8'd129:	datatemp=16'h007F;
				8'd130:	datatemp=16'h007F;
				8'd131:	datatemp=16'h007F;
				8'd132:	datatemp=16'h007F;
				8'd133:	datatemp=16'h007F;
				8'd134:	datatemp=16'h007F;
				8'd135:	datatemp=16'h007F;
				8'd136:	datatemp=16'h007F;
				8'd137:	datatemp=16'h007F;
				default:	16'h;
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
