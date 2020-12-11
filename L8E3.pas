type vector = array [1..100] of integer;
var a:vector;
i,k,j,b:integer;
begin
  readln(k);
  for i:=1 to k do readln(a[i]);
  j:=a[k];
  a[k]:=a[1];
  a[1]:=j;
  for i:=1 to k do writeln(a[i]);
end.