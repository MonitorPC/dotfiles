module encoder
(
input i_1, i_2, i_3, i_4,
output reg q_1, q_2
);
	always @ (*)
	begin
		if (i_1 == 1) begin
			q_1 = 0;
			q_2 = 0;
		end

		else if (i_2 == 1) begin
			q_1 = 0;
			q_2 = 1;
		end

		else if (i_2 == 1) begin
			q_1 = 1;
			q_2 = 0;
		end

		else if (i_3 == 1) begin
			q_1 = 1;
			q_2 = 1;
		end
	end
endmodule