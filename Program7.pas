var
x,a,b:Integer;
begin
writeln ('Introdu un nr de 4 cifre:');
readln (x);
a:=(x div 1000);
b:=(x mod 10);
writeln('Numarul 1 format este:',a);
writeln('Numaru 2 format este:',b);
writeln('Numarul nou format este:',a,b);
end. 
