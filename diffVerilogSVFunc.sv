//Difference between verilog function and SV function
/*
1.verilog function must return single value where as SV function may or may not return value.if it is not returning a value then return type must be void
2.verilog function must have atleast single input but SV function may or may not have input
3.verilog function doesnot have output or inout port but SV function can have output or inout port
4.verilog function doesnot have default formal arguments where as SV function can have default formal argument
5.the actual arguments in SV function can be passed by value or by reference 
*/

//Example
module test;
  int sum,sub,incr4,a;
  function void func(input [7:0]a,b,output[8:0]sum,sub,inout[7:0]incr4);
    incr4=incr4+4;
    sum=a+b;
    sub=a-b;
  endfunction
  
  function void print_result();
    $display("The Result is as Follows....!");
    $display("Sum=%0d sub=%0d incr4=%0d",sum,sub,incr4);
  endfunction
  
  function void mul(int a,b=20);
    $display("multiplication result is %0d",a*b);
  endfunction
  
  function automatic void pass_by_ref(ref int a);
    a=a+60;
  endfunction
  
  initial
    begin
      incr4=16;
      func(12,5,sum,sub,incr4);
      print_result;
      mul(6);
      mul(156,45);
      a=65;
      pass_by_ref(a);
      $display("value of a will be modified as it is a pass by ref : %0d",a);
    end
endmodule
