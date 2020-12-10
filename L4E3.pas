var  m, k, s:real;
i,a,n:integer;
begin
  readln(n);
  for i:=1 to n do begin
    readln(a);
    if (a  mod 2=0) then begin
      m:=m+a;
       writeln('Pare= ',m);
    end
    else begin
      k:=k+a;
      writeln('Impare= ', k);
      end;
  end;
end.