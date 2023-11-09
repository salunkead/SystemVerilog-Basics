//break and continue:- break can be used in any loop(do-while,while,for loop,repeat,forever loop)
//execution of break statement leads to end of loop
//break in forever loop
module foreverLoop;
  int i;
  initial
    begin
      i=6;
      forever
        begin
          $display("i=%0d",i);
          i=i+6;
          if(i==66)
            break;//when i is equal to 66,break the loop
        end
    end
endmodule
//using break,we can break always
module alwaysLoop;
  int i=10;
  always
    begin
      $display(i);
      i++;
      if(i>100)
        break;//once value of i becomes greater than 100 then this loop will end/terminated
    end
endmodule
//break in repeat loop
module repeatLoop;
  int i;
  initial
    begin
      repeat(10)
        begin
          if(i==5)
            break;
          else
            $display("i=%0d",i);
          i++;
        end
    end
endmodule

//continue:- execution of continue statement leads to skip the execution of statement followed by continue and jump to next iteration value
module top;
  int i;
  initial
    begin
      for(i=1;i<=100;i++)
        begin
          if(i%2!=0)
            continue;//when i is odd go to next iteration value
          else
            $display(i);
        end
    end
endmodule
