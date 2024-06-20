module lfsr_poly(clk,rst,count,q_out);
input clk,rst;
output [3:0] q_out;
output [3:0] count;
reg [4:0] count;
reg [3:0] q;

always@(posedge clk or posedge rst)

begin

if(rst)
begin
q<=4'b1000;
count<=5'b0;
end

else
begin
q[3]<=q[0]^q[3];
q[2]<=q[3];
q[1]<=q[2];
q[0]<=q[1];
count<=count+5'b00001;
end

end

assign q_out=q;

endmodule

