var
fkt:integer;
function FAK(xex:integer):real;
begin
if xex=0 then begin 
              FAK:=1;
              end
         else begin
              FAK:=xex*(FAK(xex-1));
              end;
end;



begin
WriteLn('хей, смотри я умный. Хочешь факториал тебе вычису? а нука давай суда число! ');
ReadLn(fkt);
WriteLn(FAK(fkt));


end.
