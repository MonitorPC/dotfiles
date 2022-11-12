module dem(i, c, q1, q2);
	input i, c;
	output reg q1, q2;
	
	always @ (c)
	
	begin
		case(c)
			0:
			begin
			q1 = i;
			q2 = 1;
			end
			
			1:
			begin
			q1 = 1;
			q2 = i;
			end
			
		endcase
	end
endmodule