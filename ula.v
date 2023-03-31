module ula
(
	input [31:0]In1,In2,
	input [3:0]OP,  
	output [31:0]o_S ,
	output reg Zero
);

reg [31:0] result;
assign o_S =result;  // aqui se enviara valor da função

always @ (*)
begin	
case(OP)
	4'b0000:result= In1+In2; // soma
	4'b0001:result= In1-In2; // subtração
	4'b0010:result= In1*In2; // multiplicação
	4'b0011:result= In1/In2; // divisão
	4'b0100:result= In1 & In2; // and
	4'b0101:result= In1|In2; // or
	4'b0110:result= In1^In2; // xor
	4'b0111:
	begin
		if(In1<In2) //Definido em menos
		begin
			result=1;
		end
		else result=0;
	end
	4'b1000:result= In1%In2;//modulo
	default:result= 0; 
endcase
end
always@(result) begin
	if(result==0)Zero=1;
	else Zero=0;
end
endmodule 