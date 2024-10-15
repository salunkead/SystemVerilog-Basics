//Streaming operator - 2

//Example - 1

module test;
  bit[3:0]arr[$];
  bit[7:0]a,b;
  initial
    begin
      arr={4'h2,4'h6,4'ha,4'hb};
      {>>{a,b}}=arr;
      $display("a=%h b=%h",a,b);
    end
endmodule

//Example - 2

module arrayTostruct;
  typedef struct {
    bit [3:0] address;
    bit [3:0] data;
  } bus;
  
  bit [1:0] array[ ] = '{ 2'b10, 2'b01, 2'b11, 2'b00 };
  bus bus1;
  
  initial begin
    //unpack into structure
    {>>{bus1.address, bus1.data}} = array;
    $display("bus1 address = %b", bus1.address);
    $display("bus1 data = %b", bus1.data);
  end
endmodule

//Example - 3

module pack;
  bit[3:0]a,b;
  bit[7:0]arr[];
  
  initial
    begin
      a=4'ha;
      b=4'hf;
      arr=new[1];
      arr={>>{a,b}};
      $display("a[0]=%h",arr[0]);
    end
endmodule

//Example - 4
module pack;
  bit[15:0]a;
  
  initial
    begin
      a=16'habcd;
      a={<<4{a}};
      $displayh(a);
    end
endmodule
