//any change in variable can be detected using @ symbol
module test;
  bit [7:0]num;
  initial
    begin
      num=102;
      #100;
      num=110;
      #50;
      num=110;
      #10;
      num=120;
      #60;
      num=130;
    end
///@(num) will detect any change in num variable i.e always detect change in num and once change in num detected then execute
  always@(num)
    begin
      $display("num=%0d at t=%0t",num,$time);
    end
endmodule

//iff in event control:- always@(posedge clk iff !rst)
//above statement gets executed only at the posedge clk and when reset is low
