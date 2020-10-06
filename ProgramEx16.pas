var 
N, M, O, a, b, c, d:Integer;
begin
writeln('Introdu ora lectiei: ');
readln(N,M);
a:=385 div 60;
b:=385 mod 60;
if b+M > 60 then 
begin
  c:=(b+M)-60;
  N:=N+1;
end else c:=b+M;
O:=N+a;
writeln('A 7-tea lectie se termina la ', O, ':', c);
end.