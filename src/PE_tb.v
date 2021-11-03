`timescale 1ns/1ns
module PE_tb();
reg                         r_clk       ;
reg                         r_rst_n     ;
reg         [15:0]          r_picDat    ;
reg         [15:0]           r_weightDat ;
wire        [36:0]           w_result    ;
wire                        w_valid     ;

initial begin
    r_clk       = 1'b0;
    r_rst_n     = 1'b1;
    r_picDat    = 16'd0;
    r_weightDat = 16'd0;
    #10
    r_rst_n = 1'b0;
    #2
    r_rst_n = 1'b1;
    #2
    r_picDat    = 16'd2;
    r_weightDat = 16'd2;
    #11
    r_picDat    = 16'd1;
    r_weightDat = 16'd1;
    #240
    r_picDat    = 16'd2;
    r_weightDat = 16'd2;
    #10
    r_picDat    = 16'd1;
    r_weightDat = 16'd1;
    #10
    r_picDat    = -16'd2;
    r_weightDat = -16'd2;
    
end

always begin
    #5 r_clk = ~r_clk;
end
PE #(5,16,16,37) PE_u
(
.clk           (r_clk      ),
.rst_n         (r_rst_n    ),
.picDat        (r_picDat   ),
.weightDat     (r_weightDat),
.result        (w_result   ),
.valid         (w_valid    )
);
endmodule