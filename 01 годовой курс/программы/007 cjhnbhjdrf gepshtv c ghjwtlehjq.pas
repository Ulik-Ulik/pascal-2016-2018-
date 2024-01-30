var
mas:array[1..10]of real;
a,a2,b:integer;

procedure bubble(var tuclo1,tuclo2:real);
var
glass:real;
begin
glass:=tuclo1;
tuclo1:=tuclo2;
tuclo2:=glass;
end;

begin
a:=1;
b:=0;
while a<=10 do begin
               mas[a]:=random(100)+1;
               a:=a+1;
               end;
a:=1;
while a<=10 do begin
               WriteLn(mas[a]); 
               a:=a+1;
               end;
WriteLn(' ');                
a:=1;       
a2:=1;               
while a2<=9 do begin
               a:=1;
               while a<=9 do begin
                             if mas[a]>mas[a+1] then begin
                                                     bubble(mas[a],mas[a+1]);
                                                     end;
                             a:=a+1;
                             end;
               a2:=a2+1;
               end;
a:=1;
while a<=10 do begin 
               Writeln(mas[a]);
               a:=a+1;
               end;
end.