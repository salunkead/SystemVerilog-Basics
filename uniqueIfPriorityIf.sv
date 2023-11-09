//unique if evaluates all the conditions parallel 
//unique if will throw error/warning in following cases
//more than one conditions matches in this condition: unique if will show warnning
// No condition is true in the unique/priority if/case statement.
//Example-1
module test;
  int a,b,c;
  initial
    begin:The_if/case_statement_is_not_unique
      a=20;
      b=10;
      c=5;
      unique if(a>b)
        $display("a is less than b");
      else if(b>c)
        $display("b is less than c");//Warning: (vsim-8360) The if/case statement is not unique.
      else
        $display("ghe");
    end
endmodule

//Example-2
module test1;
  int a,b,c;
  initial
    begin:No_condition_is_true_in_the_unique_priority_if_case_statement.
      a=20;
      b=10;
      c=5;
      unique if(a>b)
        $display("a is less than b");
      else if(b>c)
        $display("b is less than c");//Warning: (vsim-8360) No condition is true in the unique/priority if/case statement.
      else
        $display("ghe");
    end
endmodule

//priority if evaluates all the conditions in sequential order
//priority if :- in the following condition simulator will show error/warnning
//if no condition matches or there is missing else part then simulator will show warnning
module test;
  int a,b,c;
  initial
    begin
      //Warning: (vsim-8315) No condition is true in the unique/priority if/case statement.
      a=20;
      b=10;
      c=5;
      priority if(a<b)
        $display("a is less than b");
      else if(b<c)
        $display("b is less than c");
    end
endmodule
