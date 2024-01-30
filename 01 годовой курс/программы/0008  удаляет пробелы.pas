var
line,line2:string;

procedure delite(lunua:string;var lunua2:string);
var
cnt,cnt2,cnt3:integer;
begin
cnt:=1;
cnt2:=1;
while lunua[cnt]=(' ') do begin
                           cnt:=cnt+1;
                           end;                          
cnt2:=Length(lunua);
while lunua[cnt2]=(' ') do begin
                          cnt2:=cnt2-1;
                          end;
while cnt<=cnt2 do begin
                   lunua2:=concat(lunua2,lunua[cnt]);
                   cnt:=cnt+1;
                   end;                   
end; 

begin
ReadLn(line);
delite(line,line2); //delite(удаление) это название
WriteLn('!'+line2+'!');

end.
