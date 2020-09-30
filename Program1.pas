{Exercițiul 5}
var
n, s:integer;
begin
writeln('Introdu un numar de 4 cifre');
readln(n);
s:=(n mod 1000)+(n mod 100)+(n mod 10);
//writeln(n mod 1000); 
//writeln(n mod 100);
//writeln(n mod 10);
writeln ('Suma nr ', n, ' se obtine ', n mod 1000, ' + ', n mod 100,' + ', n mod 10, ' = ', s);
end.