//Packing Objects to and from Arrays Using Streaming Operators
/*
1.the streaming operator in s.v is a special operator that can be used pack or unpack bit-stream types into a sequence of bits in user-defined order
2.bit-stream types are types that can be packed into stream of bits,such as integral
3.streaming operator can be either << or >>,which determines the order in which blocks of data are streamed
4.( << ) causes blocks of data to be streamed in right to left order
5.( >> ) causes blocks of data to be streamed in left to right order
*/

class streaming_op;
  int a,b;
  function void display_var();
    $display("a=%0d b=%0d",a,b);
  endfunction
  function void pack(ref int p[$] );
    p={>>{a,b}};
  endfunction
  function streaming_op unpack(ref int p[$]);
    {>>{a,b}}=p;
  endfunction
endclass

module top;
  streaming_op op1,op2;
  int p[$];
  initial
    begin
      op1=new;
      op1.a=200;
      op1.b=300;
      op1.display_var;
      op1.pack(p);
      $display("packed into the queue : %p",p);
      op2=new;
      $display("before unpacking values of a,b of object op2");
      op2.display_var;
      op2.unpack(p);
      $display("After unpacking values of a and b");
      op2.display_var();
    end
endmodule
