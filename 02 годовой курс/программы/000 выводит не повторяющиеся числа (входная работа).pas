type
spt=record
    points:integer;
    s:string;
    end;
    
var 
mas:array[1..5] of spt;
cnt,cnt2,cup:integer;
cup2:string;

begin
cnt:=1;
Writeln('вводите Фамилии и очки(по очереди)');
while cnt<=5 do begin
                ReadLn(mas[cnt].s);
                ReadLn(mas[cnt].points);
                cnt:=cnt+1;
                end;
                
                
cnt:=1;       
cnt2:=1;               
while cnt2<=4 do begin
                 cnt:=1;
                 while cnt<=4 do begin
                                 if mas[cnt].points>mas[cnt+1].points then begin
                                                                           cup:=mas[cnt].points;
                                                                           cup2:=mas[cnt].s;
                                                                           mas[cnt].points:=mas[cnt+1].points;
                                                                           mas[cnt].s:=mas[cnt+1].s;
                                                                           mas[cnt+1].points:=cup;
                                                                           mas[cnt+1].s:=cup2;
                                                                           end;
                                 cnt:=cnt+1;
                                 end;
                 cnt2:=cnt2+1;
                 end;
cnt:=1;
while cnt<=5 do begin
                WriteLn(mas[cnt].s);
                cnt:=cnt+1;
                end;
end.