//mailbox is built-in class which has following methods
/*
new();           - Create a mailbox unbounded mailbox,new(size)-creates bounded size mailbox
put();           - Place a message in a mailbox
try_put();       - Try to place a message in a mailbox without blocking
get(); or peek();- Retrieve a message from a mailbox
num();           - Returns the number of messages in the mailbox
try_get(); or try_peek();  - Try to retrieve a message from a mailbox without blocking
*/
//the main difference between get and peek is get reterives data and removes it from mailbox 
//and peek reterives data but it doesnot remove data from mailbox
//following code shows the difference between these two methods
module test;
  int msg;
  mailbox mbx;
  initial
    begin
      mbx=new(4);//bounded mailbox of size 4
      mbx.put(54);
      $display("no. of messages in mailbox: %0d",mbx.num());
      mbx.put(86);
      $display("no. of messages in mailbox: %0d",mbx.num());
      mbx.put(42);
      $display("no. of messages in mailbox: %0d",mbx.num());
      mbx.put(74);
      $display("no. of messages in mailbox: %0d",mbx.num());
      //Here is the difference between get and peek
      $display("----------------------------------------------");
      mbx.get(msg);
      $display("message retrived is : %0d",msg);
      $display("no. of messages remaining in mailbox: %0d",mbx.num());
      mbx.get(msg);
      $display("message retrived is : %0d",msg);
      $display("no. of messages remaining in mailbox: %0d",mbx.num());
      $display("----------------------------------------------");
      mbx.peek(msg);
      $display("message retrived is : %0d",msg);
      $display("no. of messages remaining in mailbox: %0d",mbx.num());
      mbx.peek(msg);
      $display("message retrived is : %0d",msg);
      $display("no. of messages remaining in mailbox: %0d",mbx.num());
    end
endmodule
