//Difference between static fuction and function static
class test;
  static int k;
  static function void static1();
    int a; //local variable declared inside this function are non static in nature
    a++;
    k++;  //only operates on static properties
    $display("static function : a=%0d k=%0d",a,k);
  endfunction
  function static void static2();
    int b; //the local variable declared inside this function becomes static variables
    b++;
    k++;   ///can operate on non-static properties as well as static properties
    $display("function static : a=%0d k=%0d",b,k);
  endfunction
endclass

module top;
  test t1,t2;
  initial
    begin
      t1=new;
      t1.static1;
      t1.static2;
      t2=new;
      t2.static1;
      t2.static2;
    end
endmodule
