//{----------------------------}
//function power(n:integer;m:integer):integer;
//var 
//  i,p:integer;
//  begin
//    p:=1;
//    for i:=1 to m do
//      p:=p*n;
//    power:=p;
//  end;
//{-----------------}
//function gen(s:string):longint
//begin
//  suma:=0;
//  n:=length(s);
//  for i:=1 to n do 
//  begin
//   sub:=copy(s,n-i+1,1); 
//   val(sub,x,code);
//   suma:=suma+x*power(10,i-1);
//  end;
//  gen:=suma;     
//end;
//{-----------------}
  
var
  code,i,j,n,x:integer;
  s:string;
  aux:char;
  logic:boolean;
 begin
   
   writeln('n=');readln(x);   
   
   str(x,s);   
   
   n:=length(s);
   for j:=1 to n-1 do    
     for i:=1 to n-1 do      
       if s[i+1]>s[i] then 
       begin
         aux:=s[i];
         s[i]:=s[i+1];
         s[i+1]:=aux;
       end;   
       
     logic:= true;       
     while (logic) do 
     begin
     logic:= false;           
     for i:=1 to n-1 do      
       if s[i+1]>s[i] then 
       begin
         aux:=s[i];
         s[i]:=s[i+1];
         s[i+1]:=aux;
         logic:=true;
       end;   
    end;   
   
   val(s,n,code);
   writeln(n);
      
 end.