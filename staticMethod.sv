//static methods can access static properties
//static methods or properties can be used without creating object
class staticMethod;
  static int a;
  //int a; it will throw an error because static method cannot access non-static properties
  static function void increment;
    a++;
    $display("value of a=%0d",a);
  endfunction
endclass
//syntax to access static properties and methods:- class_name::variable/method
module test;
  initial
    begin
      staticMethod::a=25;
      staticMethod::increment;
    end
endmodule
