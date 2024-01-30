var
base,recult:real; 
index:integer;
procedure multiplication(osnovanue,pokacatel:real;var recultat:real); 
var
cnt:integer;
begin
cnt:=1;
recultat:=1;
while cnt<=pokacatel do begin
                       recultat:=recultat*osnovanue;
                       cnt:=cnt+1;
                       end;
end;

begin
WriteLn('введите основание');
ReadLn(base);
WriteLn('введите показатель');
ReadLn(index);
multiplication(base,index,recult);
WriteLn('степень:');
WriteLn(recult);
end.
