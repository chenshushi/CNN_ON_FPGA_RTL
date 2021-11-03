module Layer_3 #(
    parameter              input_channel_num     =   8             ,
    parameter              output_channel_num    =   16            ,
    parameter              word_size             =   16            
)
(
    input                                                             clk            ,
    input                                                             rst_n          ,
    input          [word_size * output_channel_num  -1  : 0]          i_weight       ,
    input          [word_size * input_channel_num  - 1  : 0]          i_data         ,
    output  signed [word_size * output_channel_num - 1  : 0]          o_data
    );

    wire [(word_size -1):0] w_tmp_result_0 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_1 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_2 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_3 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_4 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_5 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_6 [0:(output_channel_num -1)];
    wire [(word_size -1):0] w_tmp_result_7 [0:(output_channel_num -1)];
    wire valid;

    assign o_data[  0 +:16] = (w_tmp_result_0[ 0][ 0 +:16] + w_tmp_result_1[ 0][ 0 +:16] + w_tmp_result_2[ 0][ 0 +:16] + w_tmp_result_3[ 0][ 0 +:16]
                            +  w_tmp_result_4[ 0][ 0 +:16] + w_tmp_result_5[ 0][ 0 +:16] + w_tmp_result_6[ 0][ 0 +:16] + w_tmp_result_7[ 0][ 0 +:16]+ 4) >> 3;
    assign o_data[ 16 +:16] = (w_tmp_result_0[ 1][ 0 +:16] + w_tmp_result_1[ 1][ 0 +:16] + w_tmp_result_2[ 1][ 0 +:16] + w_tmp_result_3[ 1][ 0 +:16]
                            +  w_tmp_result_4[ 1][ 0 +:16] + w_tmp_result_5[ 1][ 0 +:16] + w_tmp_result_6[ 1][ 0 +:16] + w_tmp_result_7[ 1][ 0 +:16]+ 4) >> 3;
    assign o_data[ 32 +:16] = (w_tmp_result_0[ 2][ 0 +:16] + w_tmp_result_1[ 2][ 0 +:16] + w_tmp_result_2[ 2][ 0 +:16] + w_tmp_result_3[ 2][ 0 +:16]
                            +  w_tmp_result_4[ 2][ 0 +:16] + w_tmp_result_5[ 2][ 0 +:16] + w_tmp_result_6[ 2][ 0 +:16] + w_tmp_result_7[ 2][ 0 +:16]+ 4) >> 3;
    assign o_data[ 48 +:16] = (w_tmp_result_0[ 3][ 0 +:16] + w_tmp_result_1[ 3][ 0 +:16] + w_tmp_result_2[ 3][ 0 +:16] + w_tmp_result_3[ 3][ 0 +:16]
                            +  w_tmp_result_4[ 3][ 0 +:16] + w_tmp_result_5[ 3][ 0 +:16] + w_tmp_result_6[ 3][ 0 +:16] + w_tmp_result_7[ 3][ 0 +:16]+ 4) >> 3;
    assign o_data[ 64 +:16] = (w_tmp_result_0[ 4][ 0 +:16] + w_tmp_result_1[ 4][ 0 +:16] + w_tmp_result_2[ 4][ 0 +:16] + w_tmp_result_3[ 4][ 0 +:16]
                            +  w_tmp_result_4[ 4][ 0 +:16] + w_tmp_result_5[ 4][ 0 +:16] + w_tmp_result_6[ 4][ 0 +:16] + w_tmp_result_7[ 4][ 0 +:16]+ 4) >> 3;
    assign o_data[ 80 +:16] = (w_tmp_result_0[ 5][ 0 +:16] + w_tmp_result_1[ 5][ 0 +:16] + w_tmp_result_2[ 5][ 0 +:16] + w_tmp_result_3[ 5][ 0 +:16]
                            +  w_tmp_result_4[ 5][ 0 +:16] + w_tmp_result_5[ 5][ 0 +:16] + w_tmp_result_6[ 5][ 0 +:16] + w_tmp_result_7[ 5][ 0 +:16]+ 4) >> 3;
    assign o_data[ 96 +:16] = (w_tmp_result_0[ 6][ 0 +:16] + w_tmp_result_1[ 6][ 0 +:16] + w_tmp_result_2[ 6][ 0 +:16] + w_tmp_result_3[ 6][ 0 +:16]
                            +  w_tmp_result_4[ 6][ 0 +:16] + w_tmp_result_5[ 6][ 0 +:16] + w_tmp_result_6[ 6][ 0 +:16] + w_tmp_result_7[ 6][ 0 +:16]+ 4) >> 3;
    assign o_data[112 +:16] = (w_tmp_result_0[ 7][ 0 +:16] + w_tmp_result_1[ 7][ 0 +:16] + w_tmp_result_2[ 7][ 0 +:16] + w_tmp_result_3[ 7][ 0 +:16]
                            +  w_tmp_result_4[ 7][ 0 +:16] + w_tmp_result_5[ 7][ 0 +:16] + w_tmp_result_6[ 7][ 0 +:16] + w_tmp_result_7[ 7][ 0 +:16]+ 4) >> 3;
    assign o_data[128 +:16] = (w_tmp_result_0[ 8][ 0 +:16] + w_tmp_result_1[ 8][ 0 +:16] + w_tmp_result_2[ 8][ 0 +:16] + w_tmp_result_3[ 8][ 0 +:16]
                            +  w_tmp_result_4[ 8][ 0 +:16] + w_tmp_result_5[ 8][ 0 +:16] + w_tmp_result_6[ 8][ 0 +:16] + w_tmp_result_7[ 8][ 0 +:16]+ 4) >> 3;
    assign o_data[144 +:16] = (w_tmp_result_0[ 9][ 0 +:16] + w_tmp_result_1[ 9][ 0 +:16] + w_tmp_result_2[ 9][ 0 +:16] + w_tmp_result_3[ 9][ 0 +:16]
                            +  w_tmp_result_4[ 9][ 0 +:16] + w_tmp_result_5[ 9][ 0 +:16] + w_tmp_result_6[ 9][ 0 +:16] + w_tmp_result_7[ 9][ 0 +:16]+ 4) >> 3;
    assign o_data[160 +:16] = (w_tmp_result_0[10][ 0 +:16] + w_tmp_result_1[10][ 0 +:16] + w_tmp_result_2[10][ 0 +:16] + w_tmp_result_3[10][ 0 +:16]
                            +  w_tmp_result_4[10][ 0 +:16] + w_tmp_result_5[10][ 0 +:16] + w_tmp_result_6[10][ 0 +:16] + w_tmp_result_7[10][ 0 +:16]+ 4) >> 3;
    assign o_data[176 +:16] = (w_tmp_result_0[11][ 0 +:16] + w_tmp_result_1[11][ 0 +:16] + w_tmp_result_2[11][ 0 +:16] + w_tmp_result_3[11][ 0 +:16]
                            +  w_tmp_result_4[11][ 0 +:16] + w_tmp_result_5[11][ 0 +:16] + w_tmp_result_6[11][ 0 +:16] + w_tmp_result_7[11][ 0 +:16]+ 4) >> 3;
    assign o_data[192 +:16] = (w_tmp_result_0[12][ 0 +:16] + w_tmp_result_1[12][ 0 +:16] + w_tmp_result_2[12][ 0 +:16] + w_tmp_result_3[12][ 0 +:16]
                            +  w_tmp_result_4[12][ 0 +:16] + w_tmp_result_5[12][ 0 +:16] + w_tmp_result_6[12][ 0 +:16] + w_tmp_result_7[12][ 0 +:16]+ 4) >> 3;
    assign o_data[208 +:16] = (w_tmp_result_0[13][ 0 +:16] + w_tmp_result_1[13][ 0 +:16] + w_tmp_result_2[13][ 0 +:16] + w_tmp_result_3[13][ 0 +:16]
                            +  w_tmp_result_4[13][ 0 +:16] + w_tmp_result_5[13][ 0 +:16] + w_tmp_result_6[13][ 0 +:16] + w_tmp_result_7[13][ 0 +:16]+ 4) >> 3;
    assign o_data[224 +:16] = (w_tmp_result_0[14][ 0 +:16] + w_tmp_result_1[14][ 0 +:16] + w_tmp_result_2[14][ 0 +:16] + w_tmp_result_3[14][ 0 +:16]
                            +  w_tmp_result_4[14][ 0 +:16] + w_tmp_result_5[14][ 0 +:16] + w_tmp_result_6[14][ 0 +:16] + w_tmp_result_7[14][ 0 +:16]+ 4) >> 3;
    assign o_data[240 +:16] = (w_tmp_result_0[15][ 0 +:16] + w_tmp_result_1[15][ 0 +:16] + w_tmp_result_2[15][ 0 +:16] + w_tmp_result_3[15][ 0 +:16]
                            +  w_tmp_result_4[15][ 0 +:16] + w_tmp_result_5[15][ 0 +:16] + w_tmp_result_6[15][ 0 +:16] + w_tmp_result_7[15][ 0 +:16]+ 4) >> 3;

    generate
    genvar i;
    for (i = 0; i < 16; i = i + 1) 
    begin :kernel_loop
        PE #(5,16,16,16) PE_L3_u_0
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [0           +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_0  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_1
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [16          +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_1  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_2
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [32          +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_2  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_3
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [48          +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_3  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_4
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [64          +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_4  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_5
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [80          +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_5  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_6
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [96          +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_6  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
        PE #(5,16,16,16) PE_L3_u_7
        (
        .clk           (clk                                         ),
        .rst_n         (rst_n                                       ),
        .picDat        (i_data             [112         +:16]       ),
        .weightDat     (i_weight           [i*16        +:16]       ),
        .result        (w_tmp_result_7  [i][(word_size -1):0]       ),
        .valid         (valid                                       )
        );
    end
    endgenerate

endmodule