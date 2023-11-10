module taskAndFunction;
  //task can have input,output,inout argument
  int z1;
  //task with input,output argument
  task add(input int x,y,output int z);
    z=x+y;
  endtask
  //task with inout argument
  task inoutport(inout int z1);
    z1=z1+12;
  endtask
  //function with default value
  function int sum(int x,int y=55);
    sum=x+y;//here we can write return or function name
    //return x+y
  endfunction
  
  initial
    begin
      add(10,56,z1);//actual arguments are passed by position
      $display("add=%0d",z1);
      //////////////
      inoutport(.z1(z1));//actual argument is passed by name
      $display(z1);
      ///////////////
      $display(sum(54));
      //function call as an expression
      $display(10+sum(55));
    end
endmodule

/////////////////////////////////////
//function can call task if task has not delay
task display1;
  //#10;
  $display("display1 task is running...");
endtask
function void display2;
  display1;
  $display("display2 function is running...");
endfunction

module test;
  initial
    display2;
endmodule

///////////////////////////////
//if datatype of formal argument is not explicitly declared then the defualt datatype would be logic
function void display([7:0]a);//void function i.e it doesnot return anything
  $display(a);
endfunction
module test;
  initial display(102);
endmodule
















