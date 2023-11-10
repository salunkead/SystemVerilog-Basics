//fork-join--> it will start all the processes inside it parallel and wait for all the process to complete it's execution
module fork_join;
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
      join
      $display("outside fork-join at t=%0t",$time);//this statement gets executed when process1 and process2 complete it's execution
    end
endmodule

