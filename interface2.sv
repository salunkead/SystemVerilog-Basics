//interface modport-->modport='mod'ule port
//modport groups the specific signals and specifies the direction of the signal i,e input,output or inout direction
//an interface can have multiple modports

//By specifying the port directions, modport provides access restrictions
//modport declared with input is not allowed to drive or assign doing so will lead to error
//below code justifies above statement
interface intf;
  int a,b;
  real y;
  modport drive(input y,output a,b);
endinterface

module divider(input int a,b,output real y);
  always@(*)
    begin
      y=real'(a)/real'(b);
    end
endmodule

module test;
  intf f();
  divider dut(f.a,f.b,f.y);
  initial
    begin
      f.drive.a=65;
      f.drive.b=50;
      $strobe("output from design module : %0f",f.drive.y);
      //f.drive.y=32.1; //gives error
    end
endmodule
