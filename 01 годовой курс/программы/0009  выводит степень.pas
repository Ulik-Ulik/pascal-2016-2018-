var
base:real; 
cnt,index:integer;
begin
cnt:=1;
ReadLn(base,index);
while cnt<index do begin
                    base:=base*base;
                    cnt:=cnt+1;
                    end;
WriteLn(base);
end.
