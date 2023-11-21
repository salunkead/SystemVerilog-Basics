//casting is the concept of converting one datatype to another datatype
//two types of casting 1)static casting(not used ) 2)dynamic casting
//example.1 static casting
module test;
  real real_r;
  int int_r;
  initial
    begin
      real_r=2.3+5.6;
      int_r=int'(real_r);
      $display("real result : %0f",real_r);
      $display("integer result : %0d",int_r);
    end
endmodule

//example.2 casting using $cast
module test;
  typedef enum bit[1:0]{a,b,c,d}state_type;
  state_type state;
  bit[2:0] num;
  initial
    begin
      num=3;
      $cast(state,num);
      $display("state=%0d and state_name=%0s",state,state.name);
      /////////////////////////////
      num=4;
      //$cast(state,num);//throws an error
      state=state_type'(num);//static casting:no type checking no error
      $display("state=%0d and state_name=%0s",state,state.name);
    end
endmodule
