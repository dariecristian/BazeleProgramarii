var
x,x1,x2,x3,x4:Char;
begin
Writeln('Ion spune:');
Readln(x);
x1:=Pred(Pred(x));
x2:=Pred(x);
x3:=Succ(x);
x4:=Succ(Succ(x));
Writeln('Vasile spune:',x1 ,x2 ,x, x3, x4);
end.