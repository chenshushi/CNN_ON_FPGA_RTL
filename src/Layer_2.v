module Layer_2(
    input                           clk           ,
    input                           rst_n         ,
    input         [ 63:0]           i_data_0      ,
    input         [ 63:0]           i_data_1      ,
    input         [ 63:0]           i_data_2      ,
    input         [ 63:0]           i_data_3      ,
    input         [127:0]           i_weight      ,
    output        [ 63:0]           o_result_0    ,
    output        [ 63:0]           o_result_1    ,
    output        [ 63:0]           o_result_2    ,
    output        [ 63:0]           o_result_3    ,
    output        [ 63:0]           o_result_4    ,
    output        [ 63:0]           o_result_5    ,
    output        [ 63:0]           o_result_6    ,
    output        [ 63:0]           o_result_7
    );
    wire  valid;
    wire  [63:0] w_tmp_result_0[7:0];
    wire  [63:0] w_tmp_result_1[7:0];
    wire  [63:0] w_tmp_result_2[7:0];
    wire  [63:0] w_tmp_result_3[7:0];

    assign o_result_0[ 0 +:16] = (w_tmp_result_0[0][ 0 +:16] + w_tmp_result_1[0][ 0 +:16] + w_tmp_result_2[0][ 0 +:16] + w_tmp_result_3[0][ 0 +:16] + 2) >> 2;
    assign o_result_1[ 0 +:16] = (w_tmp_result_0[1][ 0 +:16] + w_tmp_result_1[1][ 0 +:16] + w_tmp_result_2[1][ 0 +:16] + w_tmp_result_3[1][ 0 +:16] + 2) >> 2;
    assign o_result_2[ 0 +:16] = (w_tmp_result_0[2][ 0 +:16] + w_tmp_result_1[2][ 0 +:16] + w_tmp_result_2[2][ 0 +:16] + w_tmp_result_3[2][ 0 +:16] + 2) >> 2;
    assign o_result_3[ 0 +:16] = (w_tmp_result_0[3][ 0 +:16] + w_tmp_result_1[3][ 0 +:16] + w_tmp_result_2[3][ 0 +:16] + w_tmp_result_3[3][ 0 +:16] + 2) >> 2;
    assign o_result_4[ 0 +:16] = (w_tmp_result_0[4][ 0 +:16] + w_tmp_result_1[4][ 0 +:16] + w_tmp_result_2[4][ 0 +:16] + w_tmp_result_3[4][ 0 +:16] + 2) >> 2;
    assign o_result_5[ 0 +:16] = (w_tmp_result_0[5][ 0 +:16] + w_tmp_result_1[5][ 0 +:16] + w_tmp_result_2[5][ 0 +:16] + w_tmp_result_3[5][ 0 +:16] + 2) >> 2;
    assign o_result_6[ 0 +:16] = (w_tmp_result_0[6][ 0 +:16] + w_tmp_result_1[6][ 0 +:16] + w_tmp_result_2[6][ 0 +:16] + w_tmp_result_3[6][ 0 +:16] + 2) >> 2;
    assign o_result_7[ 0 +:16] = (w_tmp_result_0[7][ 0 +:16] + w_tmp_result_1[7][ 0 +:16] + w_tmp_result_2[7][ 0 +:16] + w_tmp_result_3[7][ 0 +:16] + 2) >> 2;

    assign o_result_0[16 +:16] = (w_tmp_result_0[0][16 +:16] + w_tmp_result_1[0][16 +:16] + w_tmp_result_2[0][16 +:16] + w_tmp_result_3[0][16 +:16] + 2) >> 2;
    assign o_result_1[16 +:16] = (w_tmp_result_0[1][16 +:16] + w_tmp_result_1[1][16 +:16] + w_tmp_result_2[1][16 +:16] + w_tmp_result_3[1][16 +:16] + 2) >> 2;
    assign o_result_2[16 +:16] = (w_tmp_result_0[2][16 +:16] + w_tmp_result_1[2][16 +:16] + w_tmp_result_2[2][16 +:16] + w_tmp_result_3[2][16 +:16] + 2) >> 2;
    assign o_result_3[16 +:16] = (w_tmp_result_0[3][16 +:16] + w_tmp_result_1[3][16 +:16] + w_tmp_result_2[3][16 +:16] + w_tmp_result_3[3][16 +:16] + 2) >> 2;
    assign o_result_4[16 +:16] = (w_tmp_result_0[4][16 +:16] + w_tmp_result_1[4][16 +:16] + w_tmp_result_2[4][16 +:16] + w_tmp_result_3[4][16 +:16] + 2) >> 2;
    assign o_result_5[16 +:16] = (w_tmp_result_0[5][16 +:16] + w_tmp_result_1[5][16 +:16] + w_tmp_result_2[5][16 +:16] + w_tmp_result_3[5][16 +:16] + 2) >> 2;
    assign o_result_6[16 +:16] = (w_tmp_result_0[6][16 +:16] + w_tmp_result_1[6][16 +:16] + w_tmp_result_2[6][16 +:16] + w_tmp_result_3[6][16 +:16] + 2) >> 2;
    assign o_result_7[16 +:16] = (w_tmp_result_0[7][16 +:16] + w_tmp_result_1[7][16 +:16] + w_tmp_result_2[7][16 +:16] + w_tmp_result_3[7][16 +:16] + 2) >> 2;

    assign o_result_0[32 +:16] = (w_tmp_result_0[0][32 +:16] + w_tmp_result_1[0][32 +:16] + w_tmp_result_2[0][32 +:16] + w_tmp_result_3[0][32 +:16] + 2) >> 2;
    assign o_result_1[32 +:16] = (w_tmp_result_0[1][32 +:16] + w_tmp_result_1[1][32 +:16] + w_tmp_result_2[1][32 +:16] + w_tmp_result_3[1][32 +:16] + 2) >> 2;
    assign o_result_2[32 +:16] = (w_tmp_result_0[2][32 +:16] + w_tmp_result_1[2][32 +:16] + w_tmp_result_2[2][32 +:16] + w_tmp_result_3[2][32 +:16] + 2) >> 2;
    assign o_result_3[32 +:16] = (w_tmp_result_0[3][32 +:16] + w_tmp_result_1[3][32 +:16] + w_tmp_result_2[3][32 +:16] + w_tmp_result_3[3][32 +:16] + 2) >> 2;
    assign o_result_4[32 +:16] = (w_tmp_result_0[4][32 +:16] + w_tmp_result_1[4][32 +:16] + w_tmp_result_2[4][32 +:16] + w_tmp_result_3[4][32 +:16] + 2) >> 2;
    assign o_result_5[32 +:16] = (w_tmp_result_0[5][32 +:16] + w_tmp_result_1[5][32 +:16] + w_tmp_result_2[5][32 +:16] + w_tmp_result_3[5][32 +:16] + 2) >> 2;
    assign o_result_6[32 +:16] = (w_tmp_result_0[6][32 +:16] + w_tmp_result_1[6][32 +:16] + w_tmp_result_2[6][32 +:16] + w_tmp_result_3[6][32 +:16] + 2) >> 2;
    assign o_result_7[32 +:16] = (w_tmp_result_0[7][32 +:16] + w_tmp_result_1[7][32 +:16] + w_tmp_result_2[7][32 +:16] + w_tmp_result_3[7][32 +:16] + 2) >> 2;

    assign o_result_0[48 +:16] = (w_tmp_result_0[0][48 +:16] + w_tmp_result_1[0][48 +:16] + w_tmp_result_2[0][48 +:16] + w_tmp_result_3[0][48 +:16] + 2) >> 2;
    assign o_result_1[48 +:16] = (w_tmp_result_0[1][48 +:16] + w_tmp_result_1[1][48 +:16] + w_tmp_result_2[1][48 +:16] + w_tmp_result_3[1][48 +:16] + 2) >> 2;
    assign o_result_2[48 +:16] = (w_tmp_result_0[2][48 +:16] + w_tmp_result_1[2][48 +:16] + w_tmp_result_2[2][48 +:16] + w_tmp_result_3[2][48 +:16] + 2) >> 2;
    assign o_result_3[48 +:16] = (w_tmp_result_0[3][48 +:16] + w_tmp_result_1[3][48 +:16] + w_tmp_result_2[3][48 +:16] + w_tmp_result_3[3][48 +:16] + 2) >> 2;
    assign o_result_4[48 +:16] = (w_tmp_result_0[4][48 +:16] + w_tmp_result_1[4][48 +:16] + w_tmp_result_2[4][48 +:16] + w_tmp_result_3[4][48 +:16] + 2) >> 2;
    assign o_result_5[48 +:16] = (w_tmp_result_0[5][48 +:16] + w_tmp_result_1[5][48 +:16] + w_tmp_result_2[5][48 +:16] + w_tmp_result_3[5][48 +:16] + 2) >> 2;
    assign o_result_6[48 +:16] = (w_tmp_result_0[6][48 +:16] + w_tmp_result_1[6][48 +:16] + w_tmp_result_2[6][48 +:16] + w_tmp_result_3[6][48 +:16] + 2) >> 2;
    assign o_result_7[48 +:16] = (w_tmp_result_0[7][48 +:16] + w_tmp_result_1[7][48 +:16] + w_tmp_result_2[7][48 +:16] + w_tmp_result_3[7][48 +:16] + 2) >> 2;

    generate
    genvar i,j;
    for(i = 0; i < 8; i = i + 1)   // kernal loop
    begin:kernal_L2
        for(j = 0; j<4; j=j+1)     // parallel loop
        begin:input_L2
        PE #(5,16,16,16) PE_L2_u_0
        (
        .clk           (clk                               ),
        .rst_n         (rst_n                             ),
        .picDat        (i_data_0        [j*16 +:16]       ),
        .weightDat     (i_weight        [i*16 +:16]       ),
        .result        (w_tmp_result_0  [i][j*16 +:16]    ),
        .valid         (valid                             )
        );
        PE #(5,16,16,16) PE_L2_u_1
        (
        .clk           (clk                              ),
        .rst_n         (rst_n                            ),
        .picDat        (i_data_1        [j*16 +:16]      ),
        .weightDat     (i_weight        [i*16 +:16]      ),
        .result        (w_tmp_result_1  [i][i*16 +:16]   ),
        .valid         (valid                            )
        );
        PE #(5,16,16,16) PE_L2_u_2
        (
        .clk           (clk                              ),
        .rst_n         (rst_n                            ),
        .picDat        (i_data_2        [j*16 +:16]      ),
        .weightDat     (i_weight        [i*16 +:16]      ),
        .result        (w_tmp_result_2  [i][i*16 +:16]   ),
        .valid         (valid                            )
        );
        PE #(5,16,16,16) PE_L2_u_3
        (
        .clk           (clk                              ),
        .rst_n         (rst_n                            ),
        .picDat        (i_data_3        [j*16 +:16]      ),
        .weightDat     (i_weight        [i*16 +:16]      ),
        .result        (w_tmp_result_3  [i][i*16 +:16]   ),
        .valid         (valid                            )
        ); 
        end
    end
    endgenerate
endmodule
