type
myhardmas=^hardmas; 
hardmas=record
        x:real;
        p:myhardmas;
        end;
       
var
cntr:string;
cup:real;
start,nogu,vuvod,current:myhardmas; 
            
begin

New(start);
ReadLn(cup);
start^.x:=cup;
start^.p:=nil;
current:=start;
WriteLn('будут еще числа?');
ReadLn(cntr);
while cntr<>'нет' do begin 
                     ReadLn(cup);
                     New(nogu);
                     nogu^.x:=cup;
                     nogu^.p:=nil;
                     current^.p:=nogu;
                     current:=nogu;
                     
                     WriteLn('будут еще числа?');
                     ReadLn(cntr);
                     end;



vuvod:=start;
while vuvod<>nil do begin
                     WriteLn(vuvod^.x);
                     vuvod:=vuvod^.p;
                      end;
end.