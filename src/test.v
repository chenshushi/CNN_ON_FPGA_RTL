`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/11 23:33:11
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test(
    input                      clk       ,
    input                      rst_n     ,
    input      [7:0]           i_data    ,
    output reg [9:0]           o_data
    );
    reg [2:0] cnt;
    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)
            cnt <= 2'd0;
        else if (cnt == 3'd4)
            cnt <= 2'd0;
        else
            cnt <= cnt + 2'd1;
    end
    
   reg [9:0] r_tmp_rsult;
    always@(posedge clk or negedge rst_n) begin
        if (!rst_n)begin
            r_tmp_rsult       <=   10'd0;
        end
        else if (cnt == 3'd4)begin
            o_data            <= r_tmp_rsult;
            r_tmp_rsult       <=    10'd0;
        end
        else begin
            r_tmp_rsult       <= r_tmp_rsult + i_data;;
        end  
    end
    
    
endmodule
