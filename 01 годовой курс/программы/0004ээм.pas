var
mas:Array [1..10]of integer;
cnt,b:integer;
tamieva,tamieva2:text;
c:string;
begin
cnt:=1;
Assign(tamieva,'c:\temp\tamieva.txt');
reset(tamieva);
while not(eof(tamieva)) do begin 
                     ReadLn(tamieva);
                     mas[cnt]:=tamieva;
                     cnt:=cnt+1;
                     end;
Close(tamieva);                    
cnt:=1;       
cnt2:=1;               
while cnt2<=9 do begin
               cnt:=1;
               while cnt<=9 do begin
                             if mas[cnt]>mas[cnt+1] then begin
                                                     b:=mas[cnt];
                                                     mas[cnt]:=mas[cnt+1];
                                                     mas[cnt+1]:=b;
                                                     end;
                             cnt:=cnt+1;
                             end;
               cnt2:=cnt2+1;
               end;
cnt:=1;               
Assign(tamieva2,'c:\temp\tamieva.txt');
Revrite(tamieva2);
while cnt<=10 do begin 
               Writeln(c,mas[cnt]);
               cnt:=cnt+1;
               end;
Close(tamieva2);
end.
