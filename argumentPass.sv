//pass by value-->copy is passed.content at that address cannot be changed 
//pass by refernce--> address of the actual argument is passed.therefore,content at that address can be changed
module test;
  int x,y;
  function void passByValue(int x,y); //default direction is input.therefore,x and y are input arguments
    int temp;
    temp=x;
    y=temp;
    x=y;
  endfunction
  function automatic void passByReference(ref int x,y);//functions,task declared inside module are static by default.
    int temp;                                          //for pass by reference function or task must be automatic type
    temp=y;
    y=x;
    x=temp;
  endfunction
  initial
    begin
      x=12;
      y=20;
      passByValue(x,y);
      $display("x=%0d and y=%0d",x,y);
      passByReference(x,y);
      $display("x=%0d and y=%0d",x,y);
    end
endmodule
