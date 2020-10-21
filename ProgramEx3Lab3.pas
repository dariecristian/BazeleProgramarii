var
L:char;
begin
writeln('Introdu litera');
readln(L);
case L of
'A', 'Ă' ,'I' ,'Î' ,'O' ,'Â','U' ,'E' ,'a' ,'ă' ,'â' ,'i' ,'î' ,'o' ,'u' ,'e': writeln('Este vocală');
else 
writeln('Este consoană'); 
end; 
end.

