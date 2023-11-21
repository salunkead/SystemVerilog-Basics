//typedef class is nothing but forward declaration of the class
//in some cases,class needs be instantiated before it is declared in such case typedef class is used.
typedef class second; //if forward declaration is not there then compiler will get confused what is this "second s",
                     //by defining forward declarion we are telling compiler that this is the class and declared below
class first;
  second s;
  function void display(second s);
    this.s=s;
    $display("a=%0d",s.a);
  endfunction
endclass
class second;
  int a;
  first f;
  function new(int a);
    this.a=a;
  endfunction
  function void getObject(second s);
    f=new;
    f.display(s);
  endfunction
endclass

module test;
  second s;
  initial
    begin
      s=new(102);
      s.getObject(s);
    end
endmodule
