//copying array and comparing array
module test;
  bit[7:0]arr1[5],arr2[5];
  initial
    begin
      arr1='{10,50,60,70,8};
      $display("arr1=%p",arr1);
      //copying arr1 in arr2
      arr2=arr1;
      $display("arr2=%p",arr2);
      //comparing arr1 with arr2
      if(arr1==arr2)
        $display("arr1 and arr2 are equal");
      else
        $display("arr1 and arr2 are not equal");
    end
endmodule
