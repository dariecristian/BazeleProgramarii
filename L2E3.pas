var x,a,b,c,max,min,med:integer;
begin
  readln(x);
  a:=x mod 10;
  b:=x div 10 mod 10;
  c:=x div 100;
  if (a>b) and (a>c) then max:=a else
    if (b>a) and (b>c) then max:=b else
      max:=c;
  if (a<b) and (a<c) then min:=a else
    if (b<a) and (b<c) then min:=b else
      min:=c;
  if (a<>max) and (a<>min) then med:=a else
    if (b<>max) and (b<>min) then med:=b else
      med:=c;
    writeln(max,med,min);  
end.