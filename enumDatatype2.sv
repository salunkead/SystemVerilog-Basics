//Enum data type in system verilog
/*
1.enum data type defines set of named values.
2.enumerated variables can be declared with data type or without data type.
3.the default data type is int
*/

//Example
module top;
  enum int{a,b,c}int_type;
  enum integer{a1=32'bx,b1=20}integer_type;
  enum bit[1:0]{m,n,o,p}bit_type;
  
  initial
    begin
      $display("int_type..........................");
      int_type=int_type.first();
      repeat(int_type.num)
        begin
          $display("int_type=%d",int_type);
          int_type=int_type.next();
        end
      
      $display("integer type............");
      integer_type=integer_type.first;
      repeat(integer_type.num)
        begin
          $display("integer_type=%d",integer_type);
          integer_type=integer_type.next();
        end
      
      $display("bit type............");
      bit_type=bit_type.first;
      repeat(bit_type.num)
        begin
          $display("bit_type=%d",bit_type);
          bit_type=bit_type.next();
        end
    end
  
endmodule
