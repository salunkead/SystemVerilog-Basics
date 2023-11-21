//for memory optimization,union is used 
//in below example,in structure there are two member a and b,the total bits required are 4+8=12 bits
//but in case of union,the variable a and b share same memory loaction and no. of bits required for a is 4 bits and for b 8 bits,therefore max(8,4)=8
//union consumes 8 bits whereas struct takes 12 bits
module test;
  struct{
    bit [3:0]a;
    byte b;
  }st;
  union{
    bit [3:0]a;
    byte b;
  }un;
  initial
    begin
      $display($bits(st),$bits(un));
    end
endmodule
