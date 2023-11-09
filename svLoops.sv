//loops in sv-->do-while,while,for loop,repeat loop,foreach loop,forever loop
//in case of do while loop statement gets executed even if condition is false
//but in case of while loop it won't happen
module test;
  int i,j;
  initial
    begin
      //in case of do-while loop,statement is executed then condition is checked
      do
        begin
          $display("do-while loop: i=%0d",i);
          i++;
        end
      while(i<0);
      
      /////in case of while loop,condition is checked first then statement is executed
      while(j<0)
        begin
          $display("while loop: j=%0d",j);
          j++;
        end
    end
endmodule

//foreach loop for multi dimensional array
module test1;
  int a[2][2];
  initial
    begin
      foreach(a[i,j])
        a[i][j]=2*i+4*j;
      foreach(a[i,j])
        $display("a[%0d][%0d]=%0d",i,j,a[i][j]);
    end
endmodule 

/*
for loop syntax
for(initialization;condition;modifier)
begin
statements;
........;
end
*/
//multiple initializer and modifier in for loop
//Example-1
module top;
  initial
    begin //initialization  //condition    //modifier
      for(int i=3,j=4,k=5;i<=30 || j<=40||k<50;i=i+3,j=j+4,k=k+5)
        begin
          $display(i,j,k);
        end
    end
endmodule

//Example-2
module top1;
  initial
    begin
      for(int i=3,j=50,k=5;i<=30 || j>0||k<50;i=i+3,j=j-4,k=k*2)
        begin
          $display(i,j,k);
        end
    end
endmodule

//repeat loop
//repeat loop will executes statements inside it for variable number of times
module repeatLoop;
  initial
    begin
      repeat(4)
        begin
          $display("repeat loop");//this statement will executes 4 times
        end
    end
endmodule

//forever loop
//clock generation using forever loop
//forever loop is like an infinite loop and can be declared inside procedural block
module foreverLoop;
  bit clk;
  initial 
    begin
      clk=1'b1;
      forever #5 clk=~clk;
    end
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50 $finish;
    end
endmodule
