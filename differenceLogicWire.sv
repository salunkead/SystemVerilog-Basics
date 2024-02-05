//The difference between logic and wire data type
/*
1.The difference between them is that logic data type does not support multiple drivers to the same variable but wire data type supports multiple drivers

*/

///using continous assignment -> throws error ('y' is driven by more than one continuous assignment)

module test;
  reg a,b;
  logic [1:0]y;
  
  assign y=(a+b);
  
  assign y=(a-b);
    
  initial
    begin
      $monitor("a=%0d b=%0d : y=%0d",a,b,y);
      a=1;
      b=1;
      #10;
      a=0;
      b=0;
      #10;
      a=1;
      b=0;
      #10;
      a=0;
      b=1;
    end
endmodule


//but in case of wire data type -> there is no error

module test;
  reg a,b;
  wire [1:0]y;
  
  assign y=(a+b);
  
  assign y=(a-b);
    
  initial
    begin
      //$monitor("a=%0d b=%0d : y=%0d",a,b,y);
      a=1;
      b=1;
      #10;
      a=0;
      b=0;
      #10;
      a=1;
      b=0;
      #10;
      a=0;
      b=1;
    end
endmodule
