var
mas:array[1..10]of integer;
a,a2,b,c:integer;
begin
a:=1;
b:=0;
while a<=10 do begin
               mas[a]:=random(100)+1;
               a:=a+1;
               end;
a:=1;
WriteLn('рандомные 10 чисел: ');
while a<=10 do begin 
               WriteLn(mas[a]);
               a:=a+1;
               end;
WriteLn('дай число');               
ReadLn(c);
a2:=1;               
while a2<=9 do begin
               a:=1;
               while a<=9 do begin
                             if abs(c-mas[a])>abs(mas[a+1]-c) then begin
                                                     b:=mas[a];
                                                     mas[a]:=mas[a+1];
                                                     mas[a+1]:=b;
                                                     end;
                             a:=a+1;
                             end;
               a2:=a2+1;
               end;
a:=1;
WriteLn('они же по порядку: ');
while a<=10 do begin 
               WriteLn(mas[a]);
               a:=a+1;
               end;
end.