//static vs automatic variables in system verilog

module top;
   
  initial
    begin
      for(int i=0;i<2;i++)
        begin
          automatic int count; //iniialized to 0,when inner loop completes,executes every time when inner loop completes execution
          for(int j=0;j<2;j++)
            begin
              count++;
              $display("value of the count is : %0d",count);
            end
        end
      
      $display("/////////////////////////////////////////////////////////");
      for(int i=0;i<2;i++)
        begin
          static int count;  ///executes only once i.e value of count will be initialized to 0 then it never executes
          for(int j=0;j<2;j++)
            begin
              count++;
              $display("value of the count is : %0d",count);
            end
        end
    end
  
endmodule
