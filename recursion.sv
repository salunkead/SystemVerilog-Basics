//factorial of number using recursion
///function calling itself is called recursion,if proper condition is not applied then there will be stack overflow
module test;
  int f=1;
  function int fact(int in);
    f=f*in*(in-1);
    if((in-2)>1)
      fact(in-2); //fact function is calling itself
    else
      return f;
  endfunction
  initial
    begin
      $display("factorial of 2 is fact=%0d",fact(2));
      f=1;
      $display("factorial of 3 is fact=%0d",fact(3));
      f=1;
      $display("factorial of 4 is fact=%0d",fact(4));
      f=1;
      $display("factorial of 5 is fact=%0d",fact(5));
      f=1;
      $display("factorial of 6 is fact=%0d",fact(6));
      f=1;
      $display("factorial of 7 is fact=%0d",fact(7));
      f=1;
      $display("factorial of 8 is fact=%0d",fact(8));
      f=1;
      $display("factorial of 9 is fact=%0d",fact(9));
      f=1;
      $display("factorial of 10 is fact=%0d",fact(10));
      f=1;
    end
endmodule
