{Exercițiul 6}
var
X, Z, Dif_V:integer;
Med_V:real;
begin
Writeln('Introdu varsta lui Nicolae:');
Readln (X);
Writeln('Introdu varsta lui Mihai:');
Readln (Z);
Med_V:=(X+Z)/2;
Dif_V:=abs(X-Z);
Writeln('Varsta medie a baietilor este: ', Med_V);
Writeln('Diferenta de varsta a baietilor este: ', Dif_V);
end.