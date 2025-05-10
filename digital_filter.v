module digital_filter#(parameter N = 4)(input clk,
                                        input reset,
                                        input signed[7:0]x_in,
                                        output reg signed[15:0]y_out);

//Filter Coefficients(example : low-pass)
reg signed[7:0]h[0:N-1];
intial
  begin
    h[0] = 8'd1;
    h[1] = 8'd2;
    h[2] = 8'd3;
    h[3] = 8'd4;
  end

//Input delay line(shift register)
reg signed[7:0]x_reg[0:N-1];

integer i;

always@(posedge clk or posedge reset)
  begin
    if(reset)
      begin
        for(i=0; i<N; i=i+1)
          begin
            x_reg[i] <= 0;
          end
        y_out <= 0;
      end
    else
      begin
      //Shift input samples
        for(i=N-1; i>0; i=i-1)
          begin
            x_reg[i] <= x_reg[i-1];
          end
          x_reg[0] <= x_in;

          //Computation
            y_out <= 0;
              for(i=0; i<N; i=i+1)
                begin
                  y_out <= y_out + x_reg[i] * h[i];
                end
      end
  end
endmodule