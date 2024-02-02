//random numbers control using randcase and $urandom_range
module test;
  bit[4:0]num;
  initial
    begin
      repeat(10)
        begin
          randcase
          8:num=$urandom_range(1,20); //probability of num in the range 1 to 20 is 80% 
          1:num=$urandom_range(21,25); //probability of num in the range 21 to 25 is 10% 
          1:num=$urandom_range(26,31); //probability of num in the range 26 to 31 is 10% 
          endcase
          $display("num=%0d",num);
        end
    end
endmodule
