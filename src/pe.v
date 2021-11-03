module PE#(
    parameter    knl_size     =  5,
    parameter    data_width   = 16,
    parameter    weight_width = 16,
    parameter    result_width = 16  // data_width + weight_width + knl_size
)
(
    input                                              clk         ,
    input                                              rst_n       ,
    input             [(data_width  -1) :0]            picDat      ,
    input             [(weight_width-1) :0]            weightDat   ,
    output reg        [(result_width-1) :0]            result      ,
    output reg                                         valid
);

wire        [(data_width + weight_width - 1):0]        w_tmp_result;
wire        [(data_width + weight_width - 1):0]        w_tmp_result_delete;
reg         [4:0]                                      cnt;
reg         [(weight_width+         +knl_size-1):0]    r_temp_result;

always@(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        result          <= 0;     //data width ?
        r_temp_result   <= 0;
        cnt             <= 5'd0;
        valid           <= 1'd0;
    end
    else if(cnt == (knl_size*knl_size +1)) begin
        result          <= r_temp_result[36:21];
        r_temp_result   <= 0;
        cnt             <= 5'd1;
        valid           <= 1'd1;
    end
    else begin
        r_temp_result <= r_temp_result + w_tmp_result;
        cnt             <= cnt + 5'd1;
        valid           <= 1'd0;
    end
end

mul mul_u(
    .clk(clk),
    .a(picDat),
    .b(weightDat),
    .p(w_tmp_result)
);

endmodule