///Global task or function,global variable
/*
1.functions or task declared outside module or class is called global task or function
2.global variable:- variable declared outside module or class is called global variable,scope of the variable is global
*/

//Example

int global_var=200;
function void display_func(string st);
  $display("Global Task :- task declared outside module or class");
  $display("Hello, This is a global task called from module: %s",st);
  $display("--------------------------------------------------------\n");
endfunction

task display_task(string st);
  $display("Global Task :- task declared outside module or class");
  $display("Hello, This is a global task called from module: %s",st);
  $display("////////////////////////////////////////////////////////////////\n");
endtask


module m1;
  initial
    begin
      $display("global variable global_var=%0d",global_var);
      display_func("Module m1");
      display_task("Module m1");
    end
endmodule

module m2;
  initial
    begin
      #5;
      $display("global variable global_var=%0d",global_var);
      display_func("Module m2");
      display_task("Module m2");
    end
endmodule
