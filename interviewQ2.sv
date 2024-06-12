////Implement Election Result System

class voting;
  int unsigned c1,c2,c3;
  
  function void vote(int v);
    if(v==1)
      c1++;
    if(v==2)
      c2++;
    if(v==3)
      c3++;
  endfunction
  
  function void election_result();
    int r[3],q[$],max[$];
    r[0]=c1;
    r[1]=c2;
    r[2]=c3;
    $display("No. of votes to c1=%0d c2=%0d c3=%0d",c1,c2,c3);
    max=r.max();
    q=r.find_index(x) with (x==max[0]);
    case(q[0])
      0:$display("candidate c1 has won the Election");
      1:$display("candidate c2 has won the Election");
      2:$display("candidate c3 has won the Election");
    endcase
  endfunction
endclass

module top;
  int unsigned total_voters;
  voting delhi;
  
  initial
    begin
      delhi=new();
      total_voters=600000;
      repeat(total_voters)
        begin
          delhi.vote($urandom_range(1,3));
          #10;
        end
      delhi.election_result;
    end
endmodule
