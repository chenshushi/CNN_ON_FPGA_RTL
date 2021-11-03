module Layer_2_pool (
    input   [ 63:0]          i_data_0    ,
    input   [ 63:0]          i_data_1    ,
    input   [ 63:0]          i_data_2    ,
    input   [ 63:0]          i_data_3    ,
    input   [ 63:0]          i_data_4    ,
    input   [ 63:0]          i_data_5    ,
    input   [ 63:0]          i_data_6    ,
    input   [ 63:0]          i_data_7    ,
    output  [127:0]          o_data
);
    wire [15:0] w_data_0, w_data_1, w_data_2, w_data_3, w_data_4, w_data_5, w_data_6, w_data_7;

    assign w_data_0 = (i_data_0[0 +:16] + i_data_0[16 +:16] + i_data_0[32 +:16] + i_data_0[48 +:16] + 2) >> 2;
    assign w_data_1 = (i_data_1[0 +:16] + i_data_1[16 +:16] + i_data_1[32 +:16] + i_data_1[48 +:16] + 2) >> 2;
    assign w_data_2 = (i_data_2[0 +:16] + i_data_2[16 +:16] + i_data_2[32 +:16] + i_data_2[48 +:16] + 2) >> 2;
    assign w_data_3 = (i_data_3[0 +:16] + i_data_3[16 +:16] + i_data_3[32 +:16] + i_data_3[48 +:16] + 2) >> 2;
    assign w_data_4 = (i_data_4[0 +:16] + i_data_4[16 +:16] + i_data_4[32 +:16] + i_data_4[48 +:16] + 2) >> 2;
    assign w_data_5 = (i_data_5[0 +:16] + i_data_5[16 +:16] + i_data_5[32 +:16] + i_data_5[48 +:16] + 2) >> 2;
    assign w_data_6 = (i_data_6[0 +:16] + i_data_6[16 +:16] + i_data_6[32 +:16] + i_data_6[48 +:16] + 2) >> 2;
    assign w_data_7 = (i_data_7[0 +:16] + i_data_7[16 +:16] + i_data_7[32 +:16] + i_data_7[48 +:16] + 2) >> 2;

    assign o_data = {w_data_7, w_data_6, w_data_5, w_data_4,w_data_3,w_data_2,w_data_1,w_data_0};

endmodule