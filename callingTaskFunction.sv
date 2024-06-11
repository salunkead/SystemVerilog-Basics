//How to call task from function

module test;
  task run;
    #10;
    $display("Task called from function at t=%0t",$time);
    #10;
    $display("display statement execute at t=%0t",$time);
  endtask
  
  function void call_run;
    fork
      run;
    join_none
    $display("called task run succesfully");
  endfunction
  
  initial
    begin
      call_run;
    end
endmodule
