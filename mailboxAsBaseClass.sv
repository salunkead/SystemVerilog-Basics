///Mailbox As Base Class

//Example
class test extends mailbox;
  int in,out;
  task put_opr();
    repeat(10)
      begin
        in=$urandom_range(1,20);
        $display("put operation: value put into the mailbox is : %0d",in);
        put(in);
      end
    $display("=================================================================================");
  endtask
  
  task get_opr();
    repeat(10)
      begin
        get(out);
        $display("get operation: value got from the mailbox is : %0d",out);
      end
  endtask
endclass

module top;
  test t;
  
  initial
    begin
      t=new;
      t.put_opr;
      t.get_opr;
    end
endmodule
