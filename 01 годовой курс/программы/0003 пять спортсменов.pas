var
nms:array[1..5]of string;
pnts:array[1..5]of integer;
a,a1,cup:integer;
cup2:string;
begin
a:=1;
a1:=1;
WriteLn('введите фамилии и очки 5 спортсменов');
While a<=5 do begin
              Write('фамилия: ');
              ReadLn(nms[a]);
              Write('очки: ');
              ReadLn(pnts[a]);
              a:=a+1;
              end;
WriteLn();              
a1:=1;
while a1<=5 do begin 
               a:=1; 
               while a<=4 do begin
                             if pnts[a]<=pnts[a+1] then begin
                                                        cup:=pnts[a];
                                                        pnts[a]:=pnts[a+1];
                                                        pnts[a+1]:=cup;
                                                        cup2:=nms[a];
                                                        nms[a]:=nms[a+1];
                                                        nms[a+1]:=cup2;
                                                        end;
                             a:=a+1;
                             end;
               a1:=a1+1;
               end;
a:=1;
WriteLn('спортсмены по порядку');
WriteLn();
While a<=5 do begin
              Write('фамилия: ');
              WriteLn(nms[a]);
              Write('очки: ');
              WriteLn(pnts[a]);
              a:=a+1;
              end;
end.