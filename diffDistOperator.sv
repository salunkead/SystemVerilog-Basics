//difference bwteen := and :/ operator
class dist_operator;
  rand bit[7:0] a,b;
  //[21:30] each value in the range 21 to 30 will have weight of 70
  constraint c1{a dist{10:=30,[21:30]:=70};}
  //but here [21:30],each value in the range of 21 to 30 will have weight of 70/10=7
  constraint c2{b dist{10:/30,[21:30]:/70};}
endclass

module test;
  dist_operator con;
  initial
    begin
      con=new;
      $display(":= dist operator");
      repeat(10)
        begin
          con.randomize;
          $display("a=%0d",con.a);
        end
      $display("---------------------------------");
      $display(":/ dist operator");
      repeat(10)
        begin
          con.randomize;
          $display("b=%0d",con.b);
        end
    end
endmodule
