var a,b,c,d,e,f,i:integer;
begin
  repeat
 readln(a,b);
 if a = 1 then writeln(a,' ',b,' sunt prime');
 if b = 1 then writeln(a,' ',b,' sunt prime');
   c:=a*b;
  until c=0;
end.