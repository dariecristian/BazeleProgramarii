{Exercițiul 7}
var
S, P:integer;
p_l, S_nou:real;
begin
Writeln('Banii economisiti si depusi la banca:');
Readln(S);
Writeln('Procentul anula la banca:');
Readln(P);
p_l:=P/12;
S_nou:=s+(p_l*3);
Writeln('Suma acumulata dupa 3 luni:', S_nou);
end.