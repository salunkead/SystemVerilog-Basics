///structure inside structure
module test;
  struct{
  int a;
  real b;
  struct{
    int a;
    real b;
  }obj;
}obj1;
  initial
    begin
      obj1.a=10;
      obj1.b=10.23;
      obj1.obj.a=20;
      obj1.obj.b=20.32;
      $display("obj1=%p",obj1);
    end
endmodule
