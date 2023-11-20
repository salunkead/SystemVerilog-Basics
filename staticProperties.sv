// a class can have multiple instances and each instance have their own copy of the class variables
// when we declare class property as a static property then single copy of the variable is shared among all the class instances

class staticProperty;
  static int x;  //syntax to specify static property
  int y;         //non-static property
endclass

module test;
  staticProperty s1,s2,s3;
  initial
    begin
      s1=new;
      s2=new;
      s3=new;
      s1.x=120; //single copy is shared accross all the class instance
      s1.y=20; //each instance will have their own copy as it is non-static 
      $display("value of static s1.x and non-static s1.y :: x=%0d y=%0d",s1.x,s1.y);
      //all uninitialized non-static variables will get default value.
      $display("value of static s2.x and non-static s2.y :: x=%0d y=%0d",s2.x,s2.y);
      $display("value of static s3.x and non-static s3.y :: x=%0d y=%0d",s3.x,s3.y);
    end
endmodule
