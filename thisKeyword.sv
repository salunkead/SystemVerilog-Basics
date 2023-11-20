//this keyword is used to refer class properties
//this is the predefined class handle,calling this.variable means object.variable

class thisKeyword;
  int a,b,c;                          //class properties
  function void get(int a,int b);    //this a and b are different than class properties
    this.a=a;                       //if we donot use this keyword then compiler will get confused which is the class variable
    this.b=b;                      //to resolve this issue,we use this keyword
  endfunction
  function void add;
    c=a+b;
    $display("a=%0d b=%0d :: c=%0d",a,b,c);
  endfunction
endclass

module test;
  thisKeyword t;
  initial
    begin
      t=new();
      t.get(26,56);
      t.add;
    end
endmodule
