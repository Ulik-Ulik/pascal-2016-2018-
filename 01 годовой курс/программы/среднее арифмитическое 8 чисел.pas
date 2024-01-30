var
mas:array [1..8]of integer;
a:integer;
b:real;
begin
a:=1;
while a<=8 do begin
              ReadLn(mas[a]);
              a:=a+1;
              end;
a:=1;
while a<=8 do begin
              if mas[a]<=0 then begin
                                mas[a]:=0;
                                end
                           else begin 
                                if mas[a]>=100 then begin 
                                                    mas[a]:=100;
                                                    end
                                               else begin 
                                                    end;
                                b:=mas[a]+b;                    
                                end;
              a:=a+1;                
              end;                
b:=b/8;
WriteLn('среднее арифметическое равно ',b);

end.
                                             