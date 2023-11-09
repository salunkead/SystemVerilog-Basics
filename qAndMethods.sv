module test;
  int q[$];//syntax for declaring queue,a unbounded queue
  int q1[$:4];//a bounded queue(queue of size 5)
  //we can decale 2 types of queue 1) bounded queue-limited size 2)unbounded queue-unlimited size
  initial
    begin
      q1={10,40,54,46,10,100};//queue initialization.
      $display("%p",q1);//Warning:Queue operation would exceed max. right index of 4
      q={10,40,54,46,10,100};
      $display("%p",q);//No warning,as queue size is unbounded
      
      //queue methods
      $display("size of the queue: %0d",q.size()); //q.size() returns the size of the queue
      q.insert(6,102);//q.insert(index,element) inserts the element at specified index
      $display("%p",q);
      q.delete(6);//q.delete(index) deletes the specified index element
      $display("%p",q);
      q.push_front(5);//q.push_front(element) inserts the element at the front of queue
      $display("%p",q);
      q.push_back(500);//q.push_back(element) inserts the element at the back of queue
      $display("%p",q);
      $display("r=%0d",q.pop_front());//q.pop_front()-removes and returns first element of the queue
      $display("%p",q);
      $display("r=%0d",q.pop_back());//q.pop_back()-removes and returns last element of the queue
      $display("%p",q);
    end
endmodule
