module test;
  int a,b,c;
  initial
    begin:non_blockingAndBlocking
      a<=10;
      b<=20;//all the non-blocking assignment are executed in parallel
      c<=a+b;//R.H.S expression of non-blocking assignment is evaluated in active region and assignment to the L.H.S is done in NBA region
            //values of a and b are sampled in prepond region i.e default value of a and b,therefore c=0+0=0;
      $strobe("c=%0d,a=%0d,b=%0d",c,a,b);//$storbe will execute in postpone region
      #1;
      a<=30;//assignment of a<=30 & b<=20 will take place in NBA region
      b<=20;
      c<=a+b;//evaluation of a+b will take place in active region,threfore c<=10+20<=30
      $strobe("c=%0d,a=%0d,b=%0d",c,a,b);
      #1;
      //for blocking assignment
      $display("-------------------------------------------------------------------------");
      a=10;//blocking assignment will block the execution of b=20,c=a+b and all below statement.statement gets executed sequentially.
      b=20;//in case blocking  assignment evaluation of expression and assignment take place in same region i.e Active region
      c=a+b;//therefore,c=10+20=30
      $display("c=%0d,a=%0d,b=%0d",c,a,b);//executes in active region
      #1;
      a=30;
      b=20;
      c=a+b;//c=30+20=50
      $display("c=%0d,a=%0d,b=%0d",c,a,b);
    end
endmodule
