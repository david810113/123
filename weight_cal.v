module weight_cal(weight_in_0, reff_0, e, rstn, clk, weight_out_0, weight_cal_state);
input [31:0] weight_in_0, reff_0, e;
input rstn, clk, weight_cal_state;
output [31:0] weight_out_0;
  



 always@(posedge clk or negedge rstn)
    begin
    if (rstn == 0)
        weight_in_0 <= #2  32'd0;
    else if(weight_cal_state == 1'b1)
	weight_in_0 <= #2 weight_in_0 +(e * reff_0);//not yet
    else
        weight_in_0 <= #2  weight_in_0;
    end 
	
	
endmodule
