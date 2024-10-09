//Returning structure and union from function

//Example
module top;
  typedef struct{int a;real b;}struct_type;
  typedef union{int c;real d;}union_type;
  struct_type st;
  union_type un;
  
  function struct_type return_struct();
    struct_type st;
    st.a=20;
    st.b=56.32;
    return st;
  endfunction
  
  function union_type return_union();
    union_type un;
    un.c=50;
    un.d=36.23;
    return un;
  endfunction
  
  initial
    begin    
      st=return_struct;
      $display("%p",st);
      un=return_union;
      $display("%p",un);
    end
endmodule
