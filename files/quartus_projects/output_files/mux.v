module mux(
input i1, i2, i3, i4,
input [1:0] sel, 
output reg q
);

always @ (*)
begin

case(sel)
	2'b00:
	begin
		q = i1;
	end
	
	2'b01:
	begin
		q = i2;
	end
	
	2'b10:
	begin
		q = i3;
	end
	
	2'b11:
	begin
		q = i4;
	end
endcase

end
endmodule
