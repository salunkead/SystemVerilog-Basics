//structure is the collection of different datatype
struct{
  int a;
  real r;
  string n;
  time t;
  bit[3:0]arr[4];
}st;
module test;
  initial
    begin
      st.a=10;
      st.n="Amol";
      st.r=3.14;
      st.t=65;
      st.arr='{1,6,4,8};
      $display("st=%p",st);
    end
endmodule
