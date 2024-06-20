module lfsr_polytb();

reg clk,rst;
wire [3:0] q_out;
wire [4:0] count;

  lfsr_poly L(.clk(clk),.rst(rst),.count(count),.q_out(q_out));   //lfsr_polytwo l(.clk(clk),.rst(rst),.count(count),.q_out(q_out)); for other polynomial LFSR

initial begin
clk=1'b0;
rst=1'b1;
end

always #10 clk=~clk;

initial begin

rst=1'b1;
#50
rst=1'b0;

end


initial begin
$monitor("%d clock cycle : %b",count,q_out);
#500 $finish;
end

endmodule



