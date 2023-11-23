//mailbox is the communication mechanism which allows messages to be exchanged between two or more processes
//the process which wants to talk to other process puts the message into mailbox.mailbox stores the message temporarily
//the other process gets the message
//there are two types of mailbox 1) generic mailbox 2)parameterized mailbox 
//Example-Generic mailbox(typeless) :- which can store any type of message

//in below code(code of generic mailbox) which stores int type and real type value temporarily.
class producer;
  mailbox mbx;
  int a;
  real r;
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  task send;
    repeat(5)
      begin
        a=$urandom_range(1,100);
        mbx.put(a);
        r=real'(a/3.0);
        mbx.put(r);
        $display("data sent: a=%0d r=%0f",a,r);
      end
  endtask
endclass

class consumer;
  mailbox mbx;
  int ra;
  real rr;
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  task receive;
    repeat(5)
      begin
        mbx.get(ra);
        mbx.get(rr);
        $display("data received: ra=%0d rr=%0f",ra,rr);
      end
  endtask
endclass

module test;
  mailbox mbx;
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
