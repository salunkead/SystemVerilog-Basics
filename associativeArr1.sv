//Declaring and initializing associative array
module test;
  int arr[int];
  real arr1[int];
  real marks[string];
  initial
    begin
      arr='{2:200,4:300,8:800,20:400,60:600};
      arr1='{2:10.20,6:56.32,7:3.20,10:40.32,85:5.23};
      marks='{"Amol":65.36,"Saurabh":98.23,"Pratik":99.32};
      foreach(arr[i])
        begin
          $display("element at index %0d is %0d",i,arr[i]);
        end
      $display("----------------------------------------");
      foreach(arr1[i])
        begin
          $display("element at index %0d is %0.2f",i,arr1[i]);
        end
      $display("----------------------------------------");
      foreach(marks[i])
        begin
          $display("Marks got to %0s is %0.2f",i,marks[i]);
        end
    end
endmodule
