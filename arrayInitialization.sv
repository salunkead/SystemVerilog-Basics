//Different ways of array initialization
module test;
  int arr[5],arr1[5],arr2[5],arr3[5];
  initial
    begin
      arr='{10,50,90,30,100};
      $display("arr=%p",arr);
      arr1='{5{500}};
      $display("arr1=%p",arr1);
      arr2='{default:200};
      $display("arr2=%p",arr2);
      arr3[0:2]='{1,2,3};
      arr3[3:4]='{5,6};
      $display("arr2=%p",arr3);
    end
endmodule
