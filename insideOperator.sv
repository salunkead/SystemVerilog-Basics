//during randomization,it may require to get values within particular range or other than a particular range then inside operator comes into the picture
class constr_inside;
  randc bit[7:0] a,b,c,d;
  int arr[4]='{54,65,1,85};
  function void post_randomize;
    $display("a=%0d b=%0d c=%0d d=%0d",a,b,c,d);
  endfunction
  constraint c1{a inside{arr};
                b inside{[1:20]};
                c inside{[30:40],45,69};
                !(d inside{[b:c]});}
endclass

module test;
  constr_inside con;
  initial
    begin
      con=new;
      repeat(5)con.randomize;
    end
endmodule
