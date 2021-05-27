Program Examen;
var punc, tmp, nr: array[1..50] of real;
    prob, efic: array[1..50] of real;
    i, n, sort: integer;
    t, t_max, punctaj, t_ramas, p:real;
begin
  Write('Introduceti numarul de itemi n = ');
  Readln(n);
  Write('Introduceti timpul total al testului t = ');
  Readln(t_max);
  for i := 1 to n do
  begin
    Writeln('Itemul ', i ,'-> ');
    Writeln('Punctajul ');
    Read(punc[i]);
    Writeln('Timpul acordat ');
    Read(tmp[i]);
    Writeln('Probabilitatea ');
    Read(prob[i]);
    Writeln;
  end;
  //Determinam eficienta fiecarui Item
  for i := 1 to n do
  begin
    efic[i]:= (punc[i]/tmp[i])*prob[i];
    nr[i]:=i;
  end;
  //Ordonarea itemilor conform eficientei
  repeat
  sort:= 0;
  for i := 1 to n-1 do
    if efic[i]<efic[i+1] then begin
      t := punc[i]; punc[i] := punc[i+1];  punc[i+1] := t;
      t := prob[i]; prob[i] := prob[i+1];  prob[i+1] := t;
      t := tmp[i]; tmp[i] := tmp[i+1];  tmp[i+1] := t;
      t := efic[i]; efic[i] := efic[i+1];  efic[i+1] := t;
      t := nr[i]; nr[i] := nr[i+1];  nr[i+1] := t;
      sort:= 1;
    end;
    until sort=0;
    
    punctaj := 0;
    i := 1;
    t_ramas := 0;
    Writeln('Itemii trebuie rezolvati in urmatoarea ordine: ');
    while(t_max>0) and (i <= n) do
    begin
      if tmp[i] <= t_max then 
        begin
          Writeln(nr[i], '( ',punc[i], 'puncte )');
          t_max := t_max - tmp[i];
          punctaj := punctaj + punc[i];
          end
          else
            begin
            p := (t_max/tmp[i])*punc[i];
            Writeln(nr[i],'( ',punc[i], 'puncte ) [itemul rezolvat partial]');
            punctaj := punctaj + p;
            t_max := 0;
        end;
        i := i + 1;
    end;
    Writeln('Punctajul maxim: ',punctaj);
end.