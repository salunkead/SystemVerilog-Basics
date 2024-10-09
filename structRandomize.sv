///Randomizing structure

typedef struct{
  rand int a;
  rand bit[3:0]b;
}struct_type;

class test;
  rand struct_type st;
  function void post_randomize;
    $display("a=%0d and b=%0d",st.a,st.b);
  endfunction
  constraint c1{
    st.a inside{[1:200]};
  }
endclass

module top;
  test t;
  initial
    begin
      t=new;
      repeat(10)t.randomize;
    end
endmodule
