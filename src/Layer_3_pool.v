module Layer_3_pool(
    input                              clk       ,
    input                              rst_n     ,
    input      [255:0]                 i_data    ,
    output  reg                        valid     ,
    output     [16*16-1:0]             o_rsult
);
reg [2:0] cnt;
reg [18*16-1 :0] r_result;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt <= 2'd0;
    else if (cnt == 2'd3)
        cnt <= 2'd0;
    else
        cnt <= cnt + 2'd1;
end

always@(posedge clk or negedge rst_n) begin
    if (!rst_n)begin
        r_result[ 0*18 +:18]      <=    18'd0;
        r_result[ 1*18 +:18]      <=    18'd0;
        r_result[ 2*18 +:18]      <=    18'd0;
        r_result[ 3*18 +:18]      <=    18'd0;
        r_result[ 4*18 +:18]      <=    18'd0;
        r_result[ 5*18 +:18]      <=    18'd0;
        r_result[ 6*18 +:18]      <=    18'd0;
        r_result[ 7*18 +:18]      <=    18'd0;
        r_result[ 8*18 +:18]      <=    18'd0;
        r_result[ 9*18 +:18]      <=    18'd0;
        r_result[10*18 +:18]      <=    18'd0;
        r_result[11*18 +:18]      <=    18'd0;
        r_result[12*18 +:18]      <=    18'd0;
        r_result[13*18 +:18]      <=    18'd0;
        r_result[14*18 +:18]      <=    18'd0;
        r_result[15*18 +:18]      <=    18'd0;
    end
    else if (cnt == 2'd4)begin
        valid                     <=    1'd1                      ;
        o_rsult[  0 +:16]         <=    r_result[ 1*18 -:16]      ;
        o_rsult[ 16 +:16]         <=    r_result[ 2*18 -:16]      ;
        o_rsult[ 32 +:16]         <=    r_result[ 3*18 -:16]      ;
        o_rsult[ 48 +:16]         <=    r_result[ 4*18 -:16]      ;
        o_rsult[ 64 +:16]         <=    r_result[ 5*18 -:16]      ;
        o_rsult[ 80 +:16]         <=    r_result[ 6*18 -:16]      ;
        o_rsult[ 96 +:16]         <=    r_result[ 7*18 -:16]      ;
        o_rsult[112 +:16]         <=    r_result[ 8*18 -:16]      ;
        o_rsult[128 +:16]         <=    r_result[ 9*18 -:16]      ;
        o_rsult[144 +:16]         <=    r_result[10*18 -:16]      ;
        o_rsult[160 +:16]         <=    r_result[11*18 -:16]      ;
        o_rsult[176 +:16]         <=    r_result[12*18 -:16]      ;
        o_rsult[192 +:16]         <=    r_result[13*18 -:16]      ;
        o_rsult[208 +:16]         <=    r_result[14*18 -:16]      ;
        o_rsult[224 +:16]         <=    r_result[15*18 -:16]      ;
        o_rsult[240 +:16]         <=    r_result[16*18 -:16]      ;
    end   
    else begin   
        r_result[ 0*18 +:18]      <=    r_result[ 0*18 +:18]   +   {2{i_data[ 15]},i_data[  0 +:16]};
        r_result[ 1*18 +:18]      <=    r_result[ 1*18 +:18]   +   {2{i_data[ 31]},i_data[ 16 +:16]};
        r_result[ 2*18 +:18]      <=    r_result[ 2*18 +:18]   +   {2{i_data[ 47]},i_data[ 32 +:16]};
        r_result[ 3*18 +:18]      <=    r_result[ 3*18 +:18]   +   {2{i_data[ 63]},i_data[ 48 +:16]};
        r_result[ 4*18 +:18]      <=    r_result[ 4*18 +:18]   +   {2{i_data[ 79]},i_data[ 64 +:16]};
        r_result[ 5*18 +:18]      <=    r_result[ 5*18 +:18]   +   {2{i_data[ 95]},i_data[ 80 +:16]};
        r_result[ 6*18 +:18]      <=    r_result[ 6*18 +:18]   +   {2{i_data[111]},i_data[ 96 +:16]};
        r_result[ 7*18 +:18]      <=    r_result[ 7*18 +:18]   +   {2{i_data[127]},i_data[112 +:16]};
        r_result[ 8*18 +:18]      <=    r_result[ 8*18 +:18]   +   {2{i_data[143]},i_data[128 +:16]};
        r_result[ 9*18 +:18]      <=    r_result[ 9*18 +:18]   +   {2{i_data[159]},i_data[144 +:16]};
        r_result[10*18 +:18]      <=    r_result[10*18 +:18]   +   {2{i_data[175]},i_data[160 +:16]};
        r_result[11*18 +:18]      <=    r_result[11*18 +:18]   +   {2{i_data[191]},i_data[176 +:16]};
        r_result[12*18 +:18]      <=    r_result[12*18 +:18]   +   {2{i_data[207]},i_data[192 +:16]};
        r_result[13*18 +:18]      <=    r_result[13*18 +:18]   +   {2{i_data[223]},i_data[208 +:16]};
        r_result[14*18 +:18]      <=    r_result[14*18 +:18]   +   {2{i_data[239]},i_data[224 +:16]};
        r_result[15*18 +:18]      <=    r_result[15*18 +:18]   +   {2{i_data[255]},i_data[240 +:16]};
    end
end
endmodule