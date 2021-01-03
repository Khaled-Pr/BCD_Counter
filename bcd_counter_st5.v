module bcd_counter_st5
(
input clock, reset,
output [3:0]count

);
reg[3:0] tempCount; // temporary count
always @( posedge clock or posedge reset)
begin
	if(reset)
		tempCount <=4'd0101;

	else 
		tempCount <= tempCount+ 4'd0001;
		if(tempCount >= 4'd1001)
			tempCount <= 4'd0000;

end	
assign count = tempCount;	
endmodule


	


