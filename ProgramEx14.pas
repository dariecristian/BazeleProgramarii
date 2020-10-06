var
N, S, D:integer;
begin
writeln('Introdu D: ');
readln(D);
writeln ('Automobilul coasta ' , D, ' euro');
writeln('Introdu costul automibului vechi:');
readln (N);
writeln('Introdu suma pe contul bancar:');
readln(S);
writeln('Suma ramasa va fi: ', (N+S)-D,' euro:');
end.