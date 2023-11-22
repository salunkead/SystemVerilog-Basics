//constraint declared with keyword soft is called soft constraint
//it is not possible to override class constraint with inline constraint,doing so will lead to randomization failure
//but with the help of soft keyword,we can override constraint
//soft constraint allows user to override 

class withoutSoft;
  rand bit[3:0]num;
  function void post_randomize;
    $display("num=%0d",num);
  endfunction
  constraint c{num>8;}
endclass

class withSoft;
  rand bit[3:0]num;
  function void post_randomize;
    $display("with soft: num=%0d",num);
  endfunction
  constraint c{soft num>8;}
endclass

module test;
  withoutSoft ws;
  withSoft wsoft;
  initial
    begin
      ws=new;
      wsoft=new;
      //ws.randomize with {num<8;}; //fatal error:randomize() failed due to conflicts 
      wsoft.randomize with {num<8;}; //value of the num will be less than 8
    end
endmodule
