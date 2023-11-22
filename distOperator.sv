//constraint provides control over generation of random number.
//if we want to control occurence of the random value then dist operator comes into the picture
class dist_operator;
  rand bit[7:0] a;
  function void post_randomize;
    $display("a=%0d",a);
  endfunction
  constraint c1{a dist{10:=30,20:=70};}
  //probability(10)=30/70+30=30% chance of getting value 10 
  //probability(20)=70/70+30=70% chance of getting value 20
endclass

module test;
  dist_operator con;
  initial
    begin
      con=new;
      repeat(10)con.randomize;
    end
endmodule
