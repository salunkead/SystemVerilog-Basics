//////array locator method
//by using these methods,we can locate an element or index from given array
//return type of these method is queue
module test;
  int a[10],r[$];
  initial
    begin
      int i;
      repeat(10)
        begin
          a[i]=$urandom_range(1,100);
          i++;
        end
      $display("a=%p",a);
      r=a.find with(item<30);
      $display("r=%p",r);
    end
endmodule
/////////////////////
module test;
  int a[10],r[$];
  initial
    begin
      int i;
      repeat(10)
        begin
          a[i]=$urandom_range(1,100);
          i++;
        end
      ////element finder methods:------------>
      $display("a=%p",a);
      r=a.find with(item<30);
      $display("elements <30: r=%p",r);
      r=a.find_first with (item>30);
      $display("first element>30: r=%p",r);
      r=a.find_last with (item>90);
      $display("last element>90: r=%p",r);
      r=a.max();
      $display("max: r=%p",r);
      r=a.min();
      $display("min: r=%p",r);
      r=a.unique;
      $display("unique: r=%p",r);
      
      //index finder methods:--------------->
      r=a.find_index with(item>30);
      $display("item <30 indices are: r=%p",r);
      r=a.find_first_index with (item<30);
      $display("first index <30 is: r=%p",r);
      r=a.find_last_index with (item>90);
      $display("last index >90 is: r=%p",r);
    end
endmodule

//array iterator index quering methods
///these method works on both index as well as elements;
module test;
  int a[10],r[$];
  initial
    begin
      int i;
      repeat(10)
        begin
          a[i]=$urandom_range(1,100);
          i++;
        end
      ///array iterator index quering
      $display("a=%p",a);
      r=a.find(item) with(item>item.index); ///element value greater than index value
                                            ////item ==item.index
      $display("r=%p",r);
    end
endmodule
