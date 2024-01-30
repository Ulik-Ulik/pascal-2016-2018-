var
mas:array[1..10]of real;
a:integer;
b,c:real;
begin
a:=1;
while a<=10 do begin
               mas[a]:=random(100)+1;
               a:=a+1;
               end;
a:=1;
while a<=10 do begin
               WriteLn(mas[a]);
               a:=a+1;
               end;
a:=1;
b:=100;
c:=0;
while a<=10 do begin 
               if b>=mas[a] then begin
                                 c:=a;
                                 b:=mas[a];
                                end;
               a:=a+1;
               end;
WriteLn('наименьшее рандомное число равно ',b,' ',c); 
end.