//Difference between $sformat and $sformatf 

/*
   $sformat is like $display
• $sformat prints to its first argument, a string
• $sformatf is a function that returns a string
*/

/////Example
module top;
  int a;
  string st;
   
  initial
    begin
      a=102;
      $sformat(st,"Hello this is an system verilog tutorial : a -> %0d",a);
      $display(st);
      ///////////////////////////////////////////////
      $display("%s",$sformatf("value of a is : %0d",a));
    end
  
endmodule
