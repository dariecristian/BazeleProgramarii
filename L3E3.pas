var a:char;
begin
  readln(a);
  case a of 
    'a','e','i','o','u': writeln('Vocala') else
      writeln('Consoana');
  end;
end.