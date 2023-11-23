//Bydefault mailbox is typeless i.e any type of datatype can be sent or received
//Parameterized mailbox is used to transfer a data of particular type
//transfering data other than specified datatype leads to fatal error

class producer;
  mailbox#(int) mbx;
  int a;
  //real r;
  function new(mailbox #(int) mbx);
    this.mbx=mbx;
  endfunction
  task send;
    repeat(5)
      begin
        a=$urandom_range(1,100);
        mbx.put(a);
        //r=real'(a/3.0);
        //mbx.put(r);
        $display("data sent: a=%0d",a);
      end
  endtask
endclass

class consumer;
  mailbox#(int) mbx;
  int ra;
  //real rr;
  function new(mailbox #(int) mbx);
    this.mbx=mbx;
  endfunction
  task receive;
    repeat(5)
      begin
        mbx.get(ra);
        //mbx.get(rr);
        $display("data received: ra=%0d",ra);
      end
  endtask
endclass

module test;
  mailbox#(int) mbx;
  producer p;
  consumer c;
  initial
    begin
      mbx=new;
      p=new(mbx);
      c=new(mbx);
      fork
        p.send;
        c.receive;
      join
    end
endmodule
