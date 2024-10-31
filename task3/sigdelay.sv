module sigdelay  #(
    parameter   A_WIDTH = 9,
                D_WIDTH = 8
)(
    input logic clk,
    input logic rst,
    input logic wr,
    input logic rd,
    input logic en,
    input logic [A_WIDTH-1:0] offset,
    input logic [A_WIDTH-1:0] incr,
    input logic [D_WIDTH-1:0] mic_signal,
    output logic [D_WIDTH-1:0] delayed_signal
);

logic [A_WIDTH-1:0] address, addr2;
    

counter addCounter(
    .clk (clk),
    .rst (rst),
    .en (en),
    .incr (incr),
    .count (address)
);

assign addr2 = (address + offset) % (2**A_WIDTH);

ram2ports sineRam(
    .clk (clk),
    .wr_en (wr),
    .rd_en (rd),
    .wr_addr (address),
    .rd_addr (addr2),
    .din (mic_signal),
    .dout (delayed_signal)
);

endmodule
