var
x,y,z,a,s,d:integer;
begin
  readln(x, y, z);
  writeln('O discheta are 1410 kb');
  a:=x div 1410;
  if x mod 1410 > 0 then a:=a+1;
  s:=y div 1410;
  if y mod 1410 > 0 then s:=s+1;
  d:=z div 1410;
  if z mod 1410 > 0 then d:=d+1;
  writeln(a+s+d);
end.