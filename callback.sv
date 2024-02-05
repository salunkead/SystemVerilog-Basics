//The basic example of callback in system verilog

class call_back;
  task pre_drive();
    $display("write pre_drive logic here");
  endtask
  task post_drive();
    $display("write post_drive logic here");
  endtask
endclass

class driver;
  call_back cb;
  function new();
    cb=new;
  endfunction
  task drive;
    cb.pre_drive();
    $display("driver logic....!");
    cb.post_drive();
  endtask
endclass

module test;
  driver drv;
  initial
    begin
      drv=new;
      drv.drive;
    end
endmodule
