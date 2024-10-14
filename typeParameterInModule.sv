///Type parameter in module

//Example
module test;
  parameter type T=int;
  function T add(T a,b);
    return a+b;
  endfunction
endmodule

module top;
  test #(real) dut();
  initial
    begin
      $display("%0.4f",dut.add(18.152,69.23));
    end
  
endmodule

//you can have default value assigned to the input ports of the module 
//note : default value cannot be asigned to output ports
