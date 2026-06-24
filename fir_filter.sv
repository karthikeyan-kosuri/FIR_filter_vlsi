module fir_filter(

    input clk,
    input signed [7:0] x,
    output reg signed [15:0] y

);

reg signed [7:0] delay [0:7];

integer i;

always @(posedge clk)
begin

    delay[0] <= x;

    for(i=1;i<8;i=i+1)
        delay[i] <= delay[i-1];

    y <=
        (-7  * delay[7]) +
        ( 0  * delay[6]) +
        (135 * delay[5]) +
        (372 * delay[4]) +
        (372 * delay[3]) +
        (135 * delay[2]) +
        ( 0  * delay[1]) +
        (-7  * delay[0]);

end

endmodule