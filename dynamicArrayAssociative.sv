//Dynamic array of associative array
module test;
  int a[][string];
  initial
    begin
      a=new[2];
      a[0]='{"a":10,"b":20,"c":30};
      a[1]='{"d":40,"e":50,"f":60};
      $display("%p",a[0]);
      $display("%p",a[1]);
    end
endmodule
