// a class which have only one object then that class is called singleton class
class singleton;
  static singleton obj;
  string name;
  local function new();
  endfunction
  static function void make_object;
    if(obj==null)
      obj=new();
  endfunction
endclass

module test;
  initial
    begin
      singleton::make_object;
      singleton::obj.name="Amol Salunke";
      $display("%s",singleton::obj.name);
    end
endmodule
