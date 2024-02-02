//ref port in system verilog
/*
1.a ref port can be used pass a variable by reference,which means that both the module and caller can read and write to the same variable.
2.this different from the input port which can only be read by the module,or an output port which can only be written by the module
3.a ref port is useful when you want to share a variable accross different module or task without copying it. 
*/

module ref_port(ref int c);
  always@(c)
    begin
      c=c+10;
    end
endmodule

module top;
  int c1;
  ref_port dut(c1);
  initial
    begin
      $monitor("c1=%0d",c1);
      c1=12;
      #10;
      c1=89;
      #5;
      c1=65;
      #2;
      c1=120;
    end
endmodule
