////10 bit substractor using full substractor
//generate block is used to create multiple instances of module
//here i have used generate for loop to create 10 instances of full substractor

module half_sub(input a,b,output borrow,y);
  assign y=a^b;
  assign borrow=~a&b;
endmodule

module full_sub(input a,b,c,output borrow,y);
  wire w1,w2,w3;
  half_sub h1(a,b,w1,w2);
  half_sub h2(w2,c,w3,y);
  or gate(borrow,w1,w3);
endmodule

module top(input [9:0]a,b,output borrow,output [9:0]y);
  wire [8:0]w;
  genvar i;

  generate
    for(i=0;i<10;i++)
      begin:sub
        if(i==0)
          full_sub s1(a[i],b[i],0,w[i],y[i]);
        else if(i!=0 && i!=9)
             full_sub s2(a[i],b[i],w[i-1],w[i],y[i]);
        else if(i==9)
          full_sub s3(a[i],b[i],w[i-1],borrow,y[i]);
      end
  endgenerate

endmodule
