//the difference between local and protected can be demonstrated in inheritance
class parent;
  local int a;
  protected int b;
  function new(int a,b);
    this.a=a;
    this.b=b;
  endfunction
endclass
class child extends parent;
  function new(int x,y);
    super.new(x,y);
  endfunction
  //the main difference between local and protected is that local properties are not inherited but protected does
  //i.e we can access protected properties in child class but local properties can't
  function void display();
    //$display("local property of parent: a=%0d",a);
    $display("protected property of parent: b=%0d",b);
  endfunction
endclass

module test;
  child c;
  initial
    begin
      c=new(10,45);
      c.display;
    end
endmodule
