////class constructor i.e new method cannot be virtual or static

/*
Error-[IDM] Invalid declaration modifier
testbench.sv, 5
  Modifier 'static' cannot be used in a class constructor declaration.
*/

class test;
  int a;
  static function new(int a);
    this.a=a;
  endfunction
  
  function void display_a();
    $display("a=%0d",a);
  endfunction
endclass

/*
Error-[SE] Syntax error
  Following verilog source has syntax error :
  	Constructor should not be virtual
  "testbench.sv", 16: token is 'new'
    virtual function new(int b);
*/

class test2;
  int b;
  virtual function new(int b);
    this.b=b
  endfunction
  function void display_b();
    $display("b=%0d",b);
  endfunction
endclass

module top;
  test t;
  test2 t2;
  initial
    begin
      t=new(12);
      t2=new(14);
      t.display_a;
      t2.display_b;
    end
endmodule
