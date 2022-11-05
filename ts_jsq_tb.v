//----testbench of ts_jsq----

`timescale 1ns/10ps
module ts_jsq_tb;
reg		clk1;
reg		res1;
wire[7:0]	y1;


ts_jsq	ts_jsq(
		.clk(clk1),
		.res(res1),
		.y(y1)
		);
initial begin
	clk1<=0;res1<=0;
	#17	res1<=1;
	#6000	$stop;
end

always #5 clk1=~clk1;

initial begin
	$dumpfile("test8.vcd");
	$dumpvars(0,ts_jsq_tb);

end


endmodule
