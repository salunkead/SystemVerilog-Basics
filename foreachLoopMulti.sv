///foreach loop for multi-dimensional array
/*
foreach(a[i,j]) is equivalent to two nested for loops
for example:-
-> for(int i=0;i<$size(a);i++)
    begin
      for(int j=0;j<$size(a);j++)
        begin
        end
    end

-> foreach(a[i,j])
     begin
       foreach(a[ii,jj])
         begin
         end
     end
 the above foreach loop equivalent to 4 nested for loops
 for(int i=0;i<$size(a);i++)
    begin
      for(int j=0;j<$size(a);j++)
        begin
          for(int ii=0;ii<$size(a);ii++)
            begin
              for(int jj=0;jj<$size(a);jj++)
                begin
                end
            end
        end
    end
*/

module test;
  int a[4][4];
  initial
    begin
      a='{'{10,20,30,40},
          '{5,6,1,7},
          '{89,78,36,45},
          '{110,120,130,140}};
      foreach(a[i,j])
        begin
           $display("outer loop: i=%0d,j=%0d and value=%0d",i,j,a[i][j]);
          foreach(a[ii,jj]) //the inner foreach loop within the outer loop starts iterating over the entire 2-D array a again for each element accessed by outer loop
            begin
              $display("inner loop: ii=%0d jj=%0d and value=%0d",ii,jj,a[ii][jj]);
            end
        end
    end
endmodule
