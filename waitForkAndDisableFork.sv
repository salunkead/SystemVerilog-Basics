//wait fork causes process to block until the completion of all the processes
module wait_fork;
  task process1;
    #5;
    $display("I'm in process1...at t=%0t",$time);
  endtask
  task process2;
    #10;
    $display("I'm in process2...at t=%0t",$time);
  endtask
  initial
    begin
      fork
        process1;
        process2;
      join_any
      wait fork;
        $display("outside fork-join_any at t=%0t",$time);//this statement gets executed at t=10 time unit due to wait fork
    end
endmodule

//disable fork
module disable_fork;
  task process1;
    #5;
    $display("I'm in process1...at t=%0t",$time);
  endtask
  task process2;
    #10;
    $display("I'm in process2...at t=%0t",$time);
  endtask
  initial
    begin
      fork
        process1;
        process2;
      join_any
      disable fork;//this statement terminate the execution of fork block
      $display("outside fork-join_any at t=%0t",$time);
    end
endmodule
