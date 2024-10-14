////Race between different modules and how to overcome it
/*
1.in simulation,if two processes access the same variable without defined order (one process writes and another process writes or read at the same simulation time),
a race condition can occure
2.this results into non-deterministic behavior,the simulators schedular will determine the order of the evalution

Types of races:-
1.read-write race:-
when one process writes to a variable while other reads from it at the same simulation time,the value read may not reflect updated value,leading to incorrect behavior.
2.write-write race:-
when two process write to the same variable at the same time,it's uncertain which value will be stored because order of the write is not deterministic.
*/

///Race between the module dut1 and dut2 
module dut1 (output logic b, output logic clk);
  dut2 dut2_inst (b, clk);
  initial begin
    b = 1; clk= 0;
    forever begin #10; clk = !clk; end
  end
  
  always @(posedge clk)
    begin
      b = !b;
      $display ($stime,"\tfrom dut1 clk=%0d b=%0d",clk,b);
    end
  
endmodule

module dut2 (input b, input clk);
  initial begin
    repeat (3) begin
      @(posedge clk);
      $display ($stime,"\tfrom dut2 clk=%0d b=%0d",clk, b);
    end
  end
  initial #60 $finish;
endmodule


//////////////////////////////////////////////////////////////////////////////////////////////////
//Race free interaction between the module dut1 and program block

//Example
module dut1 (output logic b, output logic clk);
  program_block prog_inst(b,clk);
  
  initial begin
    b = 1; clk= 0;
    forever begin #10; clk = !clk; end
  end
  
  always @(posedge clk)
    begin
      b = !b;
      $display ($stime,"\tfrom dut1 clk=%0d b=%0d",clk,b);
    end
  
endmodule

program program_block(input b,input clk);
  initial begin
    repeat (3) begin
      @(posedge clk);
      $display ($stime,"\tfrom program block clk=%0d b=%0d",clk, b);
    end
  end
  initial #60 $finish;
endprogram
