//clocking block specifies timing and synchronization for group of signals(only for testbench)
/*advantage of using clocking block:-
1. provides race free operation
2. testbench will drive signals at the right time
3. clock edge(posedge/negedge) can be changed at the interface level
*/
/*
syntax:-
clocking cb @(posedge clk); //clocking event @(posedge clk)
  default input #2 output #3; //input skew-1 time unit and output skew is 2 time unit
  input  from_Dut; //output signals of the DUT is declared here i.e signals which are input to the testbench
  output to_Dut;  //input signals of the DUT is declared here i.e signals going out from the testbench
endclocking
//input skew:- all the input signals(output of the DUT) are sanpled just before the clock event
in above, all the input signals are sampled at  time unit before clocking event i.e posedge clk
//output skew:- all the output signals(input of the DUT or signals going out of the testbench) are driven 2 time unit after the clocking event i.e posedge clk
*/

//this code,illustrate above concept
//you can find the explaination below after test module
interface intf(input bit clk,rst);
  logic [3:0]in1,in2;
  logic [4:0]out;
  clocking cb@(posedge clk);
    default input #2 output #3;
    input out;
    output in1,in2,rst;
  endclocking
endinterface

module syn_adder(input [3:0]a,b,input clk,rst,output reg[4:0]out);
  always@(posedge clk)
    begin
      if(rst)
        out<=0;
      else
        out<=a+b;
    end
endmodule

module test;
  bit clk,rst;
  always #5 clk=~clk;
  intf f(clk,rst);
  syn_adder dut(f.in1,f.in2,f.clk,f.rst,f.out);
  initial
    begin
      f.cb.rst<=1;
      f.cb.in1<=0;
      f.cb.in2<=0;
      repeat(2)@f.cb;
      f.cb.rst<=0;
      /////////////////////
      @f.cb;
      f.cb.in1<=10;
      f.cb.in2<=15;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,test.dut);
      #60 $finish;
    end
endmodule

/////Explaination
/*
if you open the waveform window,you will see there are 5 positive edges
**at 1st positive edge t=5ns,i have included reset as output skew,the reset will be applied at t=5+output skew time=5+3=8ns
**at 2nd positive edge t=15ns,reset will become zero at t=15+output skew time=15+3=18ns
**at 3rd positive edge t=25ns,inputs a and b are applied,you can see it at t=25+output skew time=25+3=28ns
**at 5th positive edge t=45ns,the output of DUT 10+15=5'd25 or 5'h19 will be sampled(just before positive edge) by testbench at t=45-input skew time=45-2=43ns
*/












