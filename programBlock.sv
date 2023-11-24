//program block provides race-free interaction between design and testbench,all the elements declared inside program block gets executed in reactive region
//in below example,blocking assignemt gets executed in active region and $display of module tb1 also scheduled in active region
//therefore,there is race between design module and testbench module
//program block provides race free interaction between design and testbench by scheduling $disply of program block in reactive region.
/*
1. program block can be instantiated like module and it can have ports i.e input,output,inout
2. it can contain one or more initial block
3. it cannot contain always block,module,interface.
4. variable can only be assigned using blocking assignment
*/

module adder(output reg[6:0]y);
  initial
    begin
      y=56+65;
    end
endmodule

module tb1(input reg [6:0]y1);
  initial
    begin
      $display("inside module :: value of y: %0d",y1);
    end
endmodule

program tb(input reg [6:0]y1);
  initial
    begin
      $display("inside program block:: value of y: %0d",y1);
    end
endprogram

module top;
  wire [6:0]y;
  adder design1(y);
  tb test(y);
  tb1 test1(y);
endmodule
