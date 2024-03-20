//Static vs Automatic Variable
/*
By default all the variables declared inside module are static in nature
*/

//////
module test;
  function void variables();
    int a;            ////by default static,same memory address for each function call
    automatic int b;  ////each time when function is called different memory address will be allocated to the variable b
    a=a+2;
    b=b+2;
    $display(a,b);
  endfunction
  
  
  initial
    begin
      variables;
      variables;
      variables;
      variables;
    end
endmodule
