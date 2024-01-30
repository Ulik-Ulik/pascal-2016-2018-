var
af,ad:integer;

function  NOD(w,v:integer):real;
var
def:integer;
begin
//WriteLn('@',w,v);
if w>=v then begin
             def:=w mod v;
             //WriteLn('&',def);
             if def=0 then begin
                            NOD:=v;
                           end
                      else begin
                           NOD:=NOD(v,def);
                           end;
             end
             
             
        else begin
             def:=v mod w;
             //WriteLn('&',def);
             if def=0 then begin
                           NOD:=w;
                           end
                      else begin
                           NOD:=NOD(w,def);
                           end;
             end;
             
end;


begin 
WriteLn('хей, смотри, я тоже умный, хочешь НОД посчитаю? а ну-ка, дай два числа!' );
ReadLn(af);
ReadLn(ad);
WriteLn(NOD(af,ad));
end.