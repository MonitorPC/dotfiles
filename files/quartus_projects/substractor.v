module substractor(
input [3:0] a,
input [3:0] b,
output reg [3:0] q
);
always @ (*)
begin
	q[0] = a[0] ^ b[0];

end
endmodule