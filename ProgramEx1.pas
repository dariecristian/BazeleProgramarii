var
a,b,c,max,min:integer;
begin
read(a);
read(b);
read(c);
  if (a > b) and (a > c) then
    max:= a
      else
  if (b > a) and (b > c) then
    max:= b
      else
    max:= c;
  if (b < a) and (b < c) then
    min := b
      else
  if (a < b) and (a < c) then
    min := a
      else
    min := c;
  writeln('Diferenta este : ', max-min,'');    
end.
