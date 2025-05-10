module digital_filter_tb;
reg clk;
reg reset;
reg signed[7:0]x_in;
wire signed[15:0]y_out;

//Instantiate the filter
digital_filter uut(.clk(clk), .reset(reset), .x_in(x_in), .y_out(y_out));

//Clock generation
initial
  begin
    clk = 0;
    forever #5 clk = ~clk; //100MHz
  end

//Stimulus
intial
  begin
    reset = 1;
    x_in = 0;
    #10;
    reset = 0;

    //Apply a simple input signal
    #10 x_in = 8'd1;
    #10 x_in = 8'd2;
    #10 x_in = 8'd3;
    #10 x_in = 8'd4;
    #10 x_in = 8'd0;
    #10 x_in = 8'd0;
    #10 x_in = 8'd0;
    #10 x_in = 8'd0;

    //Wait and finish
    #50;
    $finish;
  end
//Output monitoring
intial
  begin
    $monitor("Time = %0t | x_in = %d | y_out = %d", $time, x_in, y_out);
  end

endmodule