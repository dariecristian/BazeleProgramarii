{Exercitiul 5}
var
x,y:integer;
begin
readln(x);
readln(y);
if (x=0) and (y=0) then
  writeln('Origine')
    else
      if (x>0) and (y>0) then
        writeln('Cadranul 1')
          else 
            if (x<0) and (y>0) then
              writeln('Cadranul 2')
                else 
                  if (x<0) and (y<0) then
                     writeln('Cadranul 3')
                      else
                        if (x>0) and (y<0) then 
                          writeln('Cadranul 4'); 
end.