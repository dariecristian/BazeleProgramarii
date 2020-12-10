var a,b,c,d:integer;
function MAX(c,d:integer):integer;
var l:integer;
begin

if c>=d then l:=c else l:=d;
MAX:=l;
end;

begin
  readln(a,b);
  writeln(MAX(a+b,a*b));
end.
