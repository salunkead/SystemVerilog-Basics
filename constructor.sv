//the new function is called class constructor,it allocates memory and returns the address to the class handle
//every class has built-in constructor,constructor doesnot have any return type
class new1;
  int x;
  logic y;
endclass

//constructor is used to initialize class properties
class new2;
  int x,y;
  function new(int x,y);
    this.x=x;
    this.y=y;
  endfunction
  function void display();
    $display("value of x and y are :: x=%0d y=%0d",x,y);
  endfunction
endclass

module test;
  new1 n;
  new2 n1;
  initial
    begin
      n=new();            //new function will allocate memory to the class properties and returns the address to the class handle  
                         //new method initialize all the class properties to their default value
      //defult value for 2 state datatype is 0 and for four state datatype x
      $display("values of x and y after object creation: x=%0b and y=%0b",n.x,n.y);
      n1=new(30,45);
      n1.display;
    end
endmodule
