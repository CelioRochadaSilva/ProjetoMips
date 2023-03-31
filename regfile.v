module regfile(
	input [4:0] ReadAddr1 , ReadAddr2,//direção de leitura
	input [4:0] WriteAddr,	//direção de escrever
	input [31:0] WriteData,
	input RegWrite, Reset,clock,
	output reg [31:0] ReadData1,ReadData2
);
reg [31:0]celula[31:0];

always @(*)
begin
	if (RegWrite==0)	//opção escrever
	begin		
		celula[WriteAddr]=WriteData;
	end
	ReadData1=celula[ReadAddr1];
	ReadData2=celula[ReadAddr2];
end
endmodule 