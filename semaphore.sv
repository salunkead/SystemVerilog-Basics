///semaphore-->semaphore is a built-in class which is used for access control of shared resources and for synchronization of the process which are running parallel
////semaphore is like keyholder where all the keys are kept..if someone takes both the keys access of the room will be blocked
//if there are two keys and someone is taking only single key then both the person will have key and it can access the room at the same time
/*
semaphore methods-
    new(); Create a semaphore with a specified number of keys,default no. of keys=0
    get();   Obtain one or more keys from the bucket
    put();   Return one or more keys into the bucket
    try_get(); Try to obtain one or more keys without blocking
*/

//in below code,there are two people who shares single bathroom with keys
//whoever gets the key can use the bathroom,once he finishes he put back the key.
//fork-join is used for parallel/simultaneous access of the bathroom.
//Case-1 single key
module singleKey;
  semaphore sem;
  task getRoom(string name);
    sem.get(1);
    $display("Hello, My name is %0s",name);
    $display("I am using this Room at t=%0t",$time);
    #10;
    $display("Leaving room at t=%0t",$time);
    sem.put(1);
    $display("-----------------------");
  endtask
  
  initial
    begin
      sem=new(1);
      fork
        getRoom("Sachin");
        getRoom("Rahul");
      join
    end
endmodule

//Case-2 two keys
module twoKey;
  semaphore sem;
  task getRoom(string name);
    sem.get(1);
    $display("Hello, My name is %0s",name);
    $display("I am using this Room at t=%0t",$time);
    #10;
    $display("Leaving room at t=%0t",$time);
    sem.put(1);
    $display("-----------------------");
  endtask
  
  initial
    begin
      sem=new(2);
      fork
        getRoom("Sachin");
        getRoom("Rahul");
      join
    end
endmodule

//Case-3 two keys but person takes both the keys
module bothKeyTaken;
  semaphore sem;
  task getRoom(string name);
    sem.get(2);
    $display("Hello, My name is %0s",name);
    $display("I am using this Room at t=%0t",$time);
    #10;
    $display("Leaving room at t=%0t",$time);
    sem.put(2);
    $display("-----------------------");
  endtask
  
  initial
    begin
      sem=new(2);
      fork
        getRoom("Sachin");
        getRoom("Rahul");
      join
    end
endmodule
