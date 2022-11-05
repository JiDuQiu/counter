//2022-7-23,罗力中；
//计数器；
module ts_jsq(clk,res,y);
input		clk;
input		res;
output[7:0]		y;
reg[7:0]		y;//触发器定义成reg型变量；
wire[7:0]		sum;//assign赋值，wire型变量；
assign		sum=y+1;// 组合逻辑部分；
always@(posedge clk or negedge res)
	if(~res) begin
		y<=0;//res为低时y寄存器复位到0；
	end
	else begin
	y<=sum;//y得到sum的值；
// y<=y+1;
	end

endmodule
