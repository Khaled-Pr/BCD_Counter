module bcd_counter_st5_tb();

reg clock, reset;

wire [3:0]count;

bcd_counter_st5 counter( clock, reset, count);

initial begin
clock=0;
forever #5 clock=~clock;
end

initial begin
	reset =1; //assert the reset	
	#15; 
	reset =0; // disAssert the reset
end
endmodule
