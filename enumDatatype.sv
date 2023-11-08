module test;
  //enumerated type methods
  enum{first=10,second,third,fourth}state;
  //the value for second=11,third=12 ..incremented by one for rest of all
  initial
    begin
      $display(state.num); //return no. of elements of enum
      $display("----------------------------------------");
      state=state.first(); //returns first element value
      $display("state=%0d and name=%0s",state,state.name); //state.name returns the string representation of the given enumeration value 
      repeat(3)
        begin
          state=state.next(); //returns the value of next member of the enumeration
          $display("state=%0d and name=%0s",state,state.name);
        end
      $display("----------------------------");
      state=state.last(); //returns the value of the last member of the enumeration
      $display("state=%0d and name=%0s",state,state.name);
      repeat(3)
        begin
          state=state.prev(); //returns the value of previous member of the enumeration
          $display("state=%0d and name=%0s",state,state.name);
        end
    end
endmodule
