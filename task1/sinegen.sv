module sinegen #(
    parameter WIDTH = 8
)(
    input logic clk, //clock
    input logic rst, //reset
    input logic en,  //counter enable
    input logic [WIDTH-1:0] incr,

    output logic [WIDTH-1:0] dout
);

logic [WIDTH-1:0] addr;

counter count1(clk,rst,en,incr,addr);
rom rom1(clk,addr,dout);

endmodule
