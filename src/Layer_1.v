module Layer_1(
    input                      clk              ,
    input                      rst_n            ,
    input         [255:0]      picDat           ,
    input  signed [ 15:0]      weightDat_0      ,
    input  signed [ 15:0]      weightDat_1      ,
    input  signed [ 15:0]      weightDat_2      ,
    input  signed [ 15:0]      weightDat_3      ,
    output        [255:0]      result_data_0    ,
    output        [255:0]      result_data_1    ,
    output        [255:0]      result_data_2    ,
    output        [255:0]      result_data_3
    );
    wire w_valid_0;
    wire w_valid_1;
    wire w_valid_2;
    wire w_valid_3;
   
    generate
    genvar i;
        for (i = 0; i<16; i=i+1)
        begin:kernl_1
            PE #(5,16,16,37) PE_u
            (
            .clk           (clk                      ),
            .rst_n         (rst_n                    ),
            .picDat        (picDat[i*16+:16]         ),
            .weightDat     (weightDat_0              ),
            .result        (result_data_0[i*16+:16]  ),
            .valid         (w_valid_0    )
            );
        end
    endgenerate
    
    generate
    genvar j;
        for (j = 0; j<16; j=j+1)
        begin:kernl_2
            PE #(5,16,16,37) PE_u
            (
            .clk           (clk                       ),
            .rst_n         (rst_n                     ),
            .picDat        (picDat[j*16+:16]          ),
            .weightDat     (weightDat_1               ),
            .result        (result_data_1[j*16+:16]   ),
            .valid         (w_valid_1                 )
            );
        end
    endgenerate
    
    generate
        genvar m;
        for (m = 0; m<16; m=m+1)
        begin:kernl_3
            PE #(5,16,16,37) PE_u
            (
            .clk           (clk                       ),
            .rst_n         (rst_n                     ),
            .picDat        (picDat[m*16+:16]          ),
            .weightDat     (weightDat_2               ),
            .result        (result_data_2[m*16+:16]   ),
            .valid         (w_valid_2                 )
            );
        end
    endgenerate
    
    generate
        genvar n;
        for (n = 0; n<16; n=n+1)
        begin:kernl_4
            PE #(5,16,16,37) PE_u
            (
            .clk           (clk                       ),
            .rst_n         (rst_n                     ),
            .picDat        (picDat[n*16+:16]          ),
            .weightDat     (weightDat_3               ),
            .result        (result_data_3[n*16+:16]   ),
            .valid         (w_valid_3                 )
            );
        end
    endgenerate
    
    
endmodule
