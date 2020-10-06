var
a,b,c,x:integer;
begin
readln(x);
a:=x mod 10;
b:=(x div 10) mod 10;
c:=x div 100;
writeln(a,b,c);
end.