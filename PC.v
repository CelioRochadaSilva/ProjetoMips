
module PC(
	input [31:0] nextPC,
	input clock,
	output reg [31:0]pcOut
);
always@(posedge clock)
begin
	pcOut=nextPC;
end
//initial pcOut=0;
endmodule 