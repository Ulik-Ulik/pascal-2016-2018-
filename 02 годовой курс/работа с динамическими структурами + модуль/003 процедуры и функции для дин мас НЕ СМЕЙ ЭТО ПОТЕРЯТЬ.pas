type

myhardmas=^hardmas; 
hardmas=record
        x:real;
        p:myhardmas;
        end;
        
       
var



cnt,cup:integer;
zakolebalo:real;
start,nogu,current,copy:myhardmas; 
af:myhardmas; // химичит в процедурах




procedure Print(nawalo:myhardmas);
var
yf:myhardmas;
begin

yf:=nawalo;

Write('-');
while nawalo<>nil do begin
                     Write(nawalo^.x,'-');
                     nawalo:=nawalo^.p;
                     end; 
WriteLn(); 
 
nawalo:=yf; 
end;



function Element(nawalo:myhardmas; nmbr:real):real;
var
cnt:integer;
begin 
cnt:=1;
while cnt<nmbr do begin
                  nawalo:=nawalo^.p;
                  cnt:=cnt+1;
                  end;
Element:=nawalo^.x;

end;


function Count(nawalo:myhardmas):real;
var
yf:myhardmas;
cnt:integer;
begin 

yf:=nawalo;

cnt:=1;
while nawalo<>nil do begin
                  nawalo:=nawalo^.p;
                  cnt:=cnt+1;
                  end;
cnt:=cnt-1;
Count:=cnt;

nawalo:=yf; 
end;





procedure Add(znx:real;var str:myhardmas);
var
q:myhardmas;
begin
q:=str; 
while q^.p<>nil do q:=q^.p;
                                                                 
new(af);
af^.x:=znx;
af^.p:=nil;

q^.p:=af;

end;




procedure Erase(yu:integer;var nawalo:myhardmas);
var
yf,WS,yf3:myhardmas;
cnt:integer;
begin 

yf:=nawalo;
cnt:=1;

if yu=1 then begin
              yf:=nawalo^.p;
              dispose(nawalo);
              nawalo:=yf;
              exit
              end;

if yu=count(nawalo) then begin
                         while cnt<count(nawalo)-1 do begin
                                                     yf:=yf^.p;
                                                     cnt:=cnt+1;
                                                     end;
                                                     
                         yf^.p:=nil;
                         dispose(yf);

                         exit
                         end;

while 1>0 do begin
                  if cnt+1=yu then begin
                                   WS:=yf^.p;
                                   yf^.p:=WS^.p;
                                   dispose(WS);
                                   break
                                   end;
                  yf:=yf^.p;
                  cnt:=cnt+1;                 
                  end;


end;








procedure Replace(nmbr:integer;cuclo:real;var nawalo:myhardmas);
var
yf:myhardmas;
cnt:integer;
begin 

yf:=nawalo;
cnt:=1;
while cnt<nmbr do begin
                  yf:=yf^.p;
                  cnt:=cnt+1;
                  end;
yf^.x:=cuclo;
end;









  
begin

New(start);

cnt:=1;
start^.x:=cnt;
start^.p:=nil;
current:=start;
while cnt<10 do begin 
                cnt:=cnt+1;
                New(nogu);
                nogu^.x:=random(10)+1;
                nogu^.p:=nil;
                current^.p:=nogu;
                current:=nogu;
                     
                end;

WriteLn('cозданный массив:');
Print(start);  

WriteLn('я выведу значение элемента под номером:');
ReadLn(cup);
WriteLn(Element(start,cup));

WriteLn('а всего в массиве вот столько элементов:');
WriteLn(Count(start));
 
WriteLn('я добавлю число:'); 
ReadLn(cup); 
Add(cup,start);  

WriteLn('массив выглядит:');
Print(start); 
  
  
WriteLn('я удалю элемент под номером:'); 
ReadLn(cup); 
Erase(cup,start); 

WriteLn('массив выглядит:');
Print(start); 

WriteLn('я поменяю значение элемента под номером:');
ReadLn(cup); 
WriteLn('на число:');
ReadLn(zakolebalo);
Replace(cup,zakolebalo,start);


WriteLn('массив выглядит:');
Print(start);



end.