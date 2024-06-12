////Passing array from one component to another component using mailbox

//Example

class comp1;
  mailbox mbx;
  bit[7:0] arr[10];
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  function void insert_values;
    std::randomize(arr) with {unique{arr};};
    $display("from comp1 : %p",arr);
    mbx.try_put(arr);
  endfunction
endclass

class comp2;
  mailbox mbx;
  bit[7:0] arr2[10];
  function new(mailbox mbx);
    this.mbx=mbx;
  endfunction
  
  function void get_values;
    mbx.try_get(arr2);
    $display("from comp2 : %p",arr2);
  endfunction
endclass

module top;
  comp1 c1;
  comp2 c2;
  mailbox mbx;
  initial
    begin
      mbx=new;
      c1=new(mbx);
      c2=new(mbx);
      c1.insert_values;
      c2.get_values;
    end
endmodule
