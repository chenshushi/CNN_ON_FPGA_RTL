module Layer_1_pool(
    //input                  clk          ,
    //input                  rst_n        ,
    input        [255:0]     data_in_1    ,
    input        [255:0]     data_in_2    ,
    input        [255:0]     data_in_3    ,
    input        [255:0]     data_in_4    ,
    output       [ 63:0]     data_out_1   ,
    output       [ 63:0]     data_out_2   ,
    output       [ 63:0]     data_out_3   ,
    output       [ 63:0]     data_out_4   
    );
   
    assign data_out_1[15: 0] = (data_in_1[  0+:16] + data_in_1[ 16 +:16] + data_in_1[64 +:16] + data_in_1[80 +:16] + 2) >> 2;
    assign data_out_1[31:16] = (data_in_1[ 32+:16] + data_in_1[ 48 +:16] + data_in_1[96 +:16] + data_in_1[112+:16] + 2) >> 2;
    assign data_out_1[47:32] = (data_in_1[128+:16] + data_in_1[144 +:16] + data_in_1[192+:16] + data_in_1[208+:16] + 2) >> 2;
    assign data_out_1[63:48] = (data_in_1[160+:16] + data_in_1[176 +:16] + data_in_1[224+:16] + data_in_1[240+:80] + 2) >> 2;
 
    assign data_out_2[15: 0] = (data_in_2[  0+:16] + data_in_2[ 16 +:16] + data_in_2[64 +:16] + data_in_2[80 +:16] + 2) >> 2;
    assign data_out_2[31:16] = (data_in_2[ 32+:16] + data_in_2[ 48 +:16] + data_in_2[96 +:16] + data_in_2[112+:16] + 2) >> 2;
    assign data_out_2[47:32] = (data_in_2[128+:16] + data_in_2[144 +:16] + data_in_2[192+:16] + data_in_2[208+:16] + 2) >> 2;
    assign data_out_2[63:48] = (data_in_2[160+:16] + data_in_2[176 +:16] + data_in_2[224+:16] + data_in_2[240+:80] + 2) >> 2;
    
    assign data_out_3[15: 0] = (data_in_3[  0+:16] + data_in_3[ 16 +:16] + data_in_3[64 +:16] + data_in_3[80 +:16] + 2) >> 2;
    assign data_out_3[31:16] = (data_in_3[ 32+:16] + data_in_3[ 48 +:16] + data_in_3[96 +:16] + data_in_3[112+:16] + 2) >> 2;
    assign data_out_3[47:32] = (data_in_3[128+:16] + data_in_3[144 +:16] + data_in_3[192+:16] + data_in_3[208+:16] + 2) >> 2;
    assign data_out_3[63:48] = (data_in_3[160+:16] + data_in_3[176 +:16] + data_in_3[224+:16] + data_in_3[240+:80] + 2) >> 2;

    assign data_out_4[15: 0] = (data_in_4[  0+:16] + data_in_4[ 16 +:16] + data_in_4[64 +:16] + data_in_4[80 +:16] + 2) >> 2;
    assign data_out_4[31:16] = (data_in_4[ 32+:16] + data_in_4[ 48 +:16] + data_in_4[96 +:16] + data_in_4[112+:16] + 2) >> 2;
    assign data_out_4[47:32] = (data_in_4[128+:16] + data_in_4[144 +:16] + data_in_4[192+:16] + data_in_4[208+:16] + 2) >> 2;
    assign data_out_4[63:48] = (data_in_4[160+:16] + data_in_4[176 +:16] + data_in_4[224+:16] + data_in_4[240+:80] + 2) >> 2;

endmodule
