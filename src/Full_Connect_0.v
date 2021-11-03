module Full_Connect_0 #(
    parameter              input_channel_num     =   16          ,
    //parameter              output_channel_num    =   100         ,
    parameter              word_size             =   16          
)
(
    input                                                    clk      ,
    input                                                    rst_n    ,
    input  [word_size*input_channel_num      - 1 :0]         i_weight ,
    input  [word_size*input_channel_num      - 1 :0]         i_data   ,
    output [word_size                        - 1 :0]         o_result
);

reg [32*input_channel_num - 1 : 0]                           r_result ;
wire [35:0]                                                  w_tmp_result;
assign w_tmp_result = (r_result[ 0*32 +:32]
                    +  r_result[ 1*32 +:32]
                    +  r_result[ 2*32 +:32]
                    +  r_result[ 3*32 +:32]
                    +  r_result[ 4*32 +:32]
                    +  r_result[ 5*32 +:32]
                    +  r_result[ 6*32 +:32]
                    +  r_result[ 7*32 +:32]
                    +  r_result[ 8*32 +:32]
                    +  r_result[ 9*32 +:32]
                    +  r_result[10*32 +:32]
                    +  r_result[11*32 +:32]
                    +  r_result[12*32 +:32]
                    +  r_result[13*32 +:32]
                    +  r_result[14*32 +:32]
                    +  r_result[15*32 +:32] + 8) >> 4;

assign o_result = w_tmp_result[35:20];


generate
    genvar k;
    for (k = 0; k < 16; k = k + 1)
    begin : mult_loop
        mul mul_u(
         .CLK    (clk                   ),
         .A      (i_data  [16*k +:16]   ),
         .B      (i_weight[16*k +:16]   ),
         .P      (r_result[32*k +:32]   )
        );
    end
endgenerate



always @(posedge clk or negedge rst_n) begin
    
end
endmodule