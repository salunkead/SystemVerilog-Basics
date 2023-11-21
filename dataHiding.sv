//the below code shows difference between public and local scope
//by default all the members of the clas are accessible from anywhere using object handle i.e all members of the class are public by default
//both local and protected members of the class can be accessed from inside the class  
class local1;
  int i,j;
  local int re;
  protected int re1;//local and protected members cannot be accessed from outside the class i.e there scope is local to the class
  //int re;        // here re is public,therefore can be accessed from outside the class
  function new(int i,j);
    this.i=i;
    this.j=j;
  endfunction
  function void result;
    re=i*j;
    re1=i+j;
    $display("result is : %0d",re);
    $display("result is : %0d",re1);
  endfunction
endclass

module test;
  local1 l;
  initial
    begin
      l=new(6,9);
      l.result;
      $display("accessing result from outside class: %0d",l.re); //cannot accesses, as it has local scope
      $display("accessing result from outside class: %0d",l.re1); //cannot accesses, as it has protected scope
    end
endmodule
