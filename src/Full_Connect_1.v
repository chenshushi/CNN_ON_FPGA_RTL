module Full_Connect_1 #(
   parameter              word_size             =   16          
)
(
input                                    clk              ,
input                                    rst_n            ,
input         [word_size :0]             i_data           ,
input         [word_size :0]             i_weight_0       ,
input         [word_size :0]             i_weight_1       ,
input         [word_size :0]             i_weight_2       ,
input         [word_size :0]             i_weight_3       ,
output        [word_size :0]             o_result_0       ,
output        [word_size :0]             o_result_1       ,
output        [word_size :0]             o_result_2       ,
output        [word_size :0]             o_result_3       ,
output reg                               valid
);
reg [ 6:0] cnt;
reg [38:0] r_tmp_result_0, r_tmp_result_1, r_tmp_result_2, r_tmp_result_3;
wire[31:0] w_tmp_result_0, w_tmp_result_1, w_tmp_result_2, w_tmp_result_3;
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        cnt            <=  7'd0;
        r_tmp_result_0 <= 23'd0;
        r_tmp_result_1 <= 23'd0;
        r_tmp_result_2 <= 23'd0;
        r_tmp_result_3 <= 23'd0;
    end
    else if (cnt == 7'd101) begin
        valid          <=  1'd1;
        cnt            <=  7'd0;
        r_tmp_result_0 <= 23'd0;
        r_tmp_result_1 <= 23'd0;
        r_tmp_result_2 <= 23'd0;
        r_tmp_result_3 <= 23'd0;
    end
    else begin
        cnt            <= cnt + 7'd1;
        r_tmp_result_0 <= r_tmp_result_0 + w_tmp_result_0;
        r_tmp_result_1 <= r_tmp_result_1 + w_tmp_result_1;
        r_tmp_result_2 <= r_tmp_result_2 + w_tmp_result_2;
        r_tmp_result_3 <= r_tmp_result_3 + w_tmp_result_3;
    end
end
assign o_result_0 = r_tmp_result_0[38:23];
assign o_result_1 = r_tmp_result_1[38:23];
assign o_result_2 = r_tmp_result_2[38:23];
assign o_result_3 = r_tmp_result_3[38:23];

mul mul_u0(
.CLK    (clk                   ),
.A      (i_data                ),
.B      (i_weight_0            ),
.P      (w_tmp_result_0        )
);
mul mul_u1(
.CLK    (clk                   ),
.A      (i_data                ),
.B      (i_weight_1            ),
.P      (w_tmp_result_1        )
);
mul mul_u2(
.CLK    (clk                   ),
.A      (i_data                ),
.B      (i_weight_2            ),
.P      (w_tmp_result_2        )
);
mul mul_u3(
.CLK    (clk                   ),
.A      (i_data                ),
.B      (i_weight_3            ),
.P      (w_tmp_result_3        )
);
endmodule