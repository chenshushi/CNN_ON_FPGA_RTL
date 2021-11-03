module Activation_Function (
    input                      clk            ,
    input                      rst_n          ,
    input                      valid          ,
    input        [15 : 0]      i_data_0       ,
    input        [15 : 0]      i_data_1       ,
    input        [15 : 0]      i_data_2       ,
    input        [15 : 0]      i_data_3       ,
    output  reg                o_result
);
wire w_tmp_result_0,w_tmp_result_1;
wire w_result;
assign w_tmp_result_0 = i_data_0       > i_data_1       ? i_data_0       : i_data_1;
assign w_tmp_result_1 = i_data_2       > i_data_3       ? i_data_2       : i_data_3;
assign w_result       = w_tmp_result_0 > w_tmp_result_1 ? w_tmp_result_0 : w_tmp_result_1;
always@(posedge clk or negedge rst_n)
    if (!rst_n)
        o_result <= 1'd0;
    else if(w_result == i_data_0)
        o_result = 1;
    else if(w_result == i_data_1)
        o_result = 2;
    else if(w_result == i_data_2)
        o_result = 3;
    else   (w_result == i_data_3)
        o_result = 4;
endmodule