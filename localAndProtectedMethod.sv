//local and protected method cannot be accessed from outside class
//but can be accessed from inside of the class
class localMethod;
  local function void display;
    $display("Hi,I am local method of the class");
  endfunction
  protected task protect;
    $display("Hello,I am protected method of class");
  endtask
endclass

module test;
  localMethod c;
  initial
    begin
      c=new();
      //we cannot access local and protected methods outside class
      c.display;
      c.protect;
    end
endmodule
