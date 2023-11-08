//s.v datatypes and their default value
//demonstration of 4-state and 2 state datatype
module test;
  //4-state datatype
  integer a;
  reg r;
  wire w;
  logic l;
  ///////////////
  time t;
  real rel;
  ////2-state datatype
  int a1;
  bit b;
  shortint sh;
  longint li;
  byte byt;
  initial
    begin
      //default value of datatype and no of bits required
      $display("default value of integer : %b",a);
      $display("no. of bits required: %0d",$bits(a));
      $display("----------------------------------------");
      $display("default value of int : %b",a1);
      $display("no. of bits required for int: %0d",$bits(a1));
      $display("----------------------------------------");
      $display("default value of short int : %b",sh);
      $display("no. of bits required for short int: %0d",$bits(sh));
      $display("----------------------------------------");
      $display("default value of long int : %b",li);
      $display("no. of bits required for long int: %0d",$bits(li));
      $display("----------------------------------------");
      $display("default value of reg : %b",r);
      $display("no. of bits required: %0d",$bits(r));
      $display("----------------------------------------");
      $display("default value of wire : %b",w);
      $display("no. of bits required: %0d",$bits(w));
      $display("----------------------------------------");
      $display("default value of time : %0d",t);
      $display("no. of bits required: %0d",$bits(t));
      $display("----------------------------------------");
      $display("default value of real : %0d",rel);
      $display("----------------------------------------");
      //4-state datatype can hold 0,1,x,z
      //for integer datatype
      a=1;
      $display("integer datatype_1=%b",a);
      a=0;
      $display("integer datatype_0=%b",a);
      a=32'bx;
      $display("integer datatype_x=%b",a);
      a=32'bz;
      $display("integer datatype_z=%b",a);
      $display("------------------------------------------");
      //for reg datatype
      r=1'b1;
      $display("reg datatype_1=%b",r);
      r=1'b0;
      $display("reg datatype_0=%b",r);
      r=1'bx;
      $display("reg datatype_x=%b",r);
      r=1'bz;
      $display("reg datatype_z=%b",r);
      $display("-------------------------------------------");
      //for logic datatype
      l=1'b1;
      $display("logic datatype_1=%b",l);
      l=1'b0;
      $display("logic datatype_0=%b",l);
      l=1'bx;
      $display("logic datatype_x=%b",l);
      l=1'bz;
      $display("logic datatype_z=%b",l);
      $display("-------------------------------------------");
      ///2- state datatype demonstration
      //2 state datatype can have values 1 or 0.
      //x or z is automatically converted into 0.i.e cannot assign x or z
      //for int datatype
      a1=1'b1;
      $display("int datatype_1=%b",a1);
      a1=1'b0;
      $display("int datatype_0=%b",a1);
      a1=1'bx;
      $display("int datatype_x=%b",a1);
      a1=1'bz;
      $display("int datatype_z=%b",a1);
      $display("-------------------------------------------");
      //for bit datatype
      b=1'b1;
      $display("bit datatype_1=%b",b);
      b=1'b0;
      $display("bit datatype_0=%b",b);
      b=1'bx;
      $display("bit datatype_x=%b",b);
      b=1'bz;
      $display("bit datatype_z=%b",b);
      $display("-------------------------------------------");
      //same for short int,long int and byte
    end
endmodule
