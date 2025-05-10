# DIGITAL-FILTER-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: PALREDDY JWALITHA REDDY

*INTERN ID*: CT4MKLN

*DOMAIN*: VLSI

*DURATION*: 16 WEEKS

*MENTOR*: NEELA SANTHOSH

*DESCRIPTION*: The digital Finite Impulse Response (FIR) filter designed is a parameterized, clocked verilog module that implements a basic yet functional low-pass FIR filter. FIR filters are widely used in digital signal processing (DSP) due to their inherent stability and linear phase properties. This filter is designed with fixed-point arithmetic using signed 8-bit input data and signed 8-bit coefficients, producing a 16-bit output to accommodate the product sum. This verilog FIR filter uses a parameter N, defining the number of coefficients. The filter architecture includes three main components, Coefficient storage is implemented as a local array, these values remain constant and are used in every clock cycle fr convolution with the input, Input Shift Register (Delay Line) stores the most recent N input samples. On each clock edge, the current input is loaded into the front of the shift register, and the previous samples are shifted back by one position, MAC Operation (Multiply-Accumulate), after shifting, the filter computes the weighted sum of products by multiplying each input sample in the delay line with its corresponding coefficient and accumulating the result. This is performed sequentially within a for-loop across N coefficients during the same clock cycle. The design is synchronous and includes an active-high reset signal. On reset, both the delay line and output register are cleared to zero, ensuring predictable behaviour on startup or during system recovery. To test the FIR filter, verilog generates a 100MHz clock signal and applies a sequence of input values over time while observing the output. The testbench uses monitor system function task to track the filter's input and output values for debugging and verification. This FIR filter is useful in a wide range of DSP applications such as audio filtering, signal smoothing, or channel equalization. Overall, this design forms a solid base for understanding and implementing FIR filters in digital hardware.
