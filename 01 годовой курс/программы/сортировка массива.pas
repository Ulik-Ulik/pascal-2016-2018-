var
mas:array[1..10]of integer;
a,a1,b,c,d:integer;
begin
a:=1;
while a<=10 do begin //создает рандомный массив
               mas[a]:=random(100)+1;
               a:=a+1;
               end; 
a:=1;
WriteLn('рандомные 10 чисел: ');
while a<=10 do begin //выводит рандомный массив
               WriteLn(mas[a]);
               a:=a+1;
               end;            
c:=1;
a:=1;
a1:=1;
while a1<=10 do begin 
                b:=100;
                while a<=10 do begin 
                               if b>=mas[a] then begin
                                                 c:=a;
                                                 b:=mas[a];
                                                 end;
                               a:=a+1;
                               end;               
                a:=a1;
                d:=mas[a];
                mas[a]:=b;
                mas[c]:=d;
                a1:=a1+1;
                a:=a1;
                end;
a:=1;
writeLn('они же по порядку:');
while a<=10 do begin
               WriteLn(mas[a]);
               a:=a+1;
               end; 
end.               