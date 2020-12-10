var
  a, b, c, d: real;

procedure CMMDC(a1, b1: real; var c1: real);
begin
  while (a1 <> b1) do
    if a1 > b1 then a1 := a1 - b1 else b1 := b1 - a1;
  c1 := a1;
end;

begin
  readln(a, b);
  CMMDC(a, b, c);
  writeln(c, ' ', (a * b) / c);
end.