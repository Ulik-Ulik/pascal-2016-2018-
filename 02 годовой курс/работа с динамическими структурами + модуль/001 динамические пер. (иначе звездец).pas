type
myhardmas=^hardmas; 
hardmas=record
        x:real;
        p:myhardmas;
        end;
       
var

cup:real;
a,b,c,t:myhardmas; 
            
begin

New(a);
ReadLn(cup);
a^.x:=cup;
a^.p:=nil;

New(b);
ReadLn(cup);
b^.x:=cup;
b^.p:=nil;       
a^.p:=b;

New(c);
ReadLn(cup);
c^.x:=cup;
c^.p:=nil;        
b^.p:=c;

t:=a;
while t<>nil do begin
                WriteLn(t^.x);
                t:=t^.p;
                end;
end.