module Top(
    input clk,
    input rst_n,
    input [255:0] picDat,
    output result_out
);
wire  signed [ 15:0]      w_weight_L1_1;
wire  signed [ 15:0]      w_weight_L1_2;
wire  signed [ 15:0]      w_weight_L1_3;
wire  signed [ 15:0]      w_weight_L1_0;
wire         [255:0]      w_result_data_L1_1;
wire         [255:0]      w_result_data_L1_2;
wire         [255:0]      w_result_data_L1_3;
wire         [255:0]      w_result_data_L1_4;
wire         [ 63:0]      w_data_L2_1;
wire         [ 63:0]      w_data_L2_2;
wire         [ 63:0]      w_data_L2_3;
wire         [ 63:0]      w_data_L2_4;
wire         [127:0]      w_weight_L2;
wire         [127:0]      w_weight_L3;
wire  signed [ 63:0]      w_result_data_L2_0;
wire  signed [ 63:0]      w_result_data_L2_1;
wire  signed [ 63:0]      w_result_data_L2_2;
wire  signed [ 63:0]      w_result_data_L2_3;
wire  signed [ 63:0]      w_result_data_L2_4;
wire  signed [ 63:0]      w_result_data_L2_5;
wire  signed [ 63:0]      w_result_data_L2_6;
wire  signed [ 63:0]      w_result_data_L2_7;
wire  signed [127:0]      w_data_L3;
wire  signed [255:0]      w_result_data_L3;
wire         [ 17:0]      w_data_L4_0;
wire         [ 17:0]      w_data_L4_1;
wire         [ 17:0]      w_data_L4_2;
wire         [ 17:0]      w_data_L4_3;
wire         [ 17:0]      w_data_L4_4;
wire         [ 17:0]      w_data_L4_5;
wire         [ 17:0]      w_data_L4_6;
wire         [ 17:0]      w_data_L4_7;
wire         [ 17:0]      w_data_L4_8;
wire         [ 17:0]      w_data_L4_9;
wire         [ 17:0]      w_data_L4_10;
wire         [ 17:0]      w_data_L4_11;
wire         [ 17:0]      w_data_L4_12;
wire         [ 17:0]      w_data_L4_13;
wire         [ 17:0]      w_data_L4_14;
wire         [ 17:0]      w_data_L4_15;


Weight Weight_u (
.clk                  (clk                     ),
.rst_n                (rst_n                   ),
.o_weight_L1_0        (w_weight_L1_0           ),
.o_weight_L1_1        (w_weight_L1_1           ),
.o_weight_L1_2        (w_weight_L1_2           ),
.o_weight_L1_3        (w_weight_L1_3           ),
.o_weight_L2          (w_weight_L2             ),
.o_weight_L3          (w_weight_L3             )
);

Layer_1 Layer_1_u( 
.clk                 (clk                      ),
.rst_n               (rst_n                    ),
.picDat              (picDat),
.weightDat_0         (w_weight_L1_0            ),
.weightDat_1         (w_weight_L1_1            ),
.weightDat_2         (w_weight_L1_2            ),
.weightDat_3         (w_weight_L1_3            ),

.result_data_1       (w_result_data_L1_1       ),
.result_data_2       (w_result_data_L1_2       ),
.result_data_3       (w_result_data_L1_3       ),
.result_data_4       (w_result_data_L1_4       )
);

Layer_1_pool Layer_1_pool_u(
//.clk                (clk                     ),
//.rst_n              (rst_n                   ),
.data_in_1           (w_result_data_L1_1       ),
.data_in_2           (w_result_data_L1_2       ),
.data_in_3           (w_result_data_L1_3       ),
.data_in_4           (w_result_data_L1_4       ),
.data_out_1          (w_data_L2_1              ),
.data_out_2          (w_data_L2_2              ),
.data_out_3          (w_data_L2_3              ),
.data_out_4          (w_data_L2_4              )
);
Layer_2 Layer_2_u(
.clk                 (clk                      ),
.rst_n               (rst_n                    ),
.i_data_0            (w_data_L2_1              ),
.i_data_1            (w_data_L2_2              ),
.i_data_2            (w_data_L2_3              ),
.i_data_3            (w_data_L2_4              ),
.i_weight            (w_weight_L2            ),

.o_result_0          (w_result_data_L2_0       ),
.o_result_1          (w_result_data_L2_1       ),
.o_result_2          (w_result_data_L2_2       ),
.o_result_3          (w_result_data_L2_3       ),
.o_result_4          (w_result_data_L2_4       ),
.o_result_5          (w_result_data_L2_5       ),
.o_result_6          (w_result_data_L2_6       ),
.o_result_7          (w_result_data_L2_7       )
);
Layer_2_pool Layer_2_pool_u (
.i_data_0            (w_result_data_L2_0       ),
.i_data_1            (w_result_data_L2_1       ),
.i_data_2            (w_result_data_L2_2       ),
.i_data_3            (w_result_data_L2_3       ),
.i_data_4            (w_result_data_L2_4       ),
.i_data_5            (w_result_data_L2_5       ),
.i_data_6            (w_result_data_L2_6       ),     
.i_data_7            (w_result_data_L2_7       ),
.o_data              (w_data_L3                )
);
Layer_3 Layer_3_u(
.clk                 (clk                      ),
.rst_n               (rst_n                    ),
.i_weight            (w_weight_L3              ),
.i_data              (w_data_L3                ),
.o_data              (w_result_data_L3         )
);
Layer_3_pool Layer_3_pool (
.clk                 (clk                      ),
.rst_n               (rst_n                    ),
.i_data              (w_result_data_L3         ),
.valid               (),
.r_tmp_rsult_0       (w_data_L4_0;             ),
.r_tmp_rsult_1       (w_data_L4_1;             ),
.r_tmp_rsult_2       (w_data_L4_2;             ),
.r_tmp_rsult_3       (w_data_L4_3;             ),
.r_tmp_rsult_4       (w_data_L4_4;             ),
.r_tmp_rsult_5       (w_data_L4_5;             ),
.r_tmp_rsult_6       (w_data_L4_6;             ),
.r_tmp_rsult_7       (w_data_L4_7;             ),
.r_tmp_rsult_8       (w_data_L4_8;             ),
.r_tmp_rsult_9       (w_data_L4_9;             ),
.r_tmp_rsult_10      (w_data_L4_10;            ),
.r_tmp_rsult_11      (w_data_L4_11;            ),
.r_tmp_rsult_12      (w_data_L4_12;            ),
.r_tmp_rsult_13      (w_data_L4_13;            ),
.r_tmp_rsult_14      (w_data_L4_14;            ),
.r_tmp_rsult_15      (w_data_L4_15;            )
);
endmodule
