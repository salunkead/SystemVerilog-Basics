//Packed and Mixed array 
/*
1.if the square brackets are at the left of the variable name then we can call that type of array as a packed array.
2.if it is at the right of the variable name then that type of array is called unpacked array.
*/

module test;
  bit[3:0][7:0]mixed[2]; //it is mixed type of array. 2 element: packed 4 bytes, total width is 4*8=32 bits
  bit[3:0][3:0]pkd; //packed 4 nibbles,total width=4*4=16 bits
  bit[31:0]pkd1; //32 bits
  initial
    begin
      for(int i=0;i<$size(mixed);i++)
        begin
          mixed[i]=$urandom;
        end
      $display("mixed[0]=%b",mixed[0]);
      $display("mixed[1]=%b",mixed[1]);
      $display("------------------------");
      ////////////////////////////////////
      $display("mixed[0][0]=%b",mixed[0][0]);
      $display("mixed[1][0]=%b",mixed[1][0]);
      $display("------------------------");
      ///////////////////////////////
      $display("mixed[0][1]=%b",mixed[0][1]);
      $display("mixed[1][1]=%b",mixed[1][1]);
      $display("---------------------------");
      pkd=$urandom;
      $display("pkd=%b",pkd);
      for(int i=0;i<$size(pkd);i++)
        begin
          $display("pkd[%0d]=%b",i,pkd[i]);
        end
      $display("-------------------------");
      pkd1=$urandom;
      $display("pkd1=%0h",pkd1);
    end
endmodule
