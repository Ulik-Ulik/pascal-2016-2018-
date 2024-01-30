var 
dungeon:array[1..10, 1..10]of integer;
thing:array[1..6]of integer;
sides:array[1..4]of string;
x,y,x2,y2,cnt,cnt2,sz,sz2,backpack,nmbr,side,kl,kl2:integer;
rd:real;
clovo:string;
   procedure XS(SIDE,X,Y:integer;var X2,Y2:integer);
   var
   ng:integer;
   begin
   if (SIDE=1) or (SIDE=4) then begin 
                                ng:=-1;
                                end
                           else begin
                                ng:=1;
                                end;
   if (SIDE=1) or (SIDE=3) then begin
                                X2:=X+ng;
                                end
                           else begin 
                                Y2:=Y+ng;
                                end;
   end;

begin
backpack:=0;
sides[1]:='север';
sides[2]:='восток';
sides[3]:='юг';
sides[4]:='запад';

Writeln('какой размер лабиринта? можно до 10х10');
Read(sz,sz2);
WriteLn('теперь укажи количество камней:');
ReadLn(thing[6]);
WriteLn('а сейчас количество кирок:');
ReadLn(thing[1]);
WriteLn('сколько монстров будет в лабиринте?');
ReadLn(thing[5]);
WriteLn('а гранат для них сколько?');
ReadLn(thing[2]);

thing[3]:=1; // это клад, сделала так чтобы программа была покороче


dungeon[1,1]:=4;
cnt:=1;
while cnt<=6 do begin
                cnt2:=1;
                while cnt2<=thing[cnt] do begin
                                          x:=random(sz2)+1;
                                          y:=random(sz)+1;
                                          if dungeon[x,y]=0 then begin
                                                                 dungeon[x,y]:=cnt;
                                                                 cnt2:=cnt2+1;
                                                                 if cnt=3 then begin
                                                                               kl:=x; //для того чтобы... да на пальцах обьяснить проще
                                                                               kl2:=y;
                                                                               end;
                                                                 end;
                                          end;
                cnt:=cnt+1;
                end;   

WriteLn('ты смотришь на север');
side:=1;

//находит куда можно встать
x:=0;
y:=0;
while (x=0) and (y=0) do begin 
                         x:=random(sz2)+1;
                         y:=random(sz)+1;
                         if 5<=dungeon[x,y] then begin
                                                 x:=0;
                                                 y:=0;
                                                 end;
                         end;
x2:=x;
y2:=y;
WriteLn(x,' ',y);
WriteLn(x2,' ',y2);

//выводит массив                    
cnt:=1;
cnt2:=1;                     
While cnt<=sz2 do begin //колличество строчек
                While cnt2<=sz do begin //колличество символов в строке
                                 Write(dungeon[cnt,cnt2],' ');
                                 cnt2:=cnt2+1;
                                 end;
                WriteLn();
                cnt2:=1;
                cnt:=cnt+1;
                end;



while (not(backpack=3))or(not(dungeon[x2,y2]=4)) do begin 
                                                    if (not(backpack=3)) then begin 
                                                                              rd:=sqrt(abs(kl-x2)*abs(kl-x2)+abs(kl2-y2)*abs(kl2-y2));
                                                                              rd:=Trunc(rd*100) / 100;
                                                                              //WriteLn(rd);
                                                                              end;
                                                                              
                                                    if backpack=3 then begin 
                                                                       rd:=0;
                                                                       end;
                                                                       
                                                    if dungeon[x2,y2]=0 then begin
                                                                             WriteLn('под тобой ничего нет, радар показывает: ',rd);
                                                                             end;
                                                                             
                                                    if dungeon[x2,y2]=1 then begin
                                                                             WriteLn('там где ты стоишь лежит кирка, радар показывает: ',rd);
                                                                             end;
                                                                             
                                                    if dungeon[x2,y2]=2 then begin
                                                                             WriteLn('там где ты стоишь лежит граната, радар показывает: ',rd);
                                                                             end;
                                                                             
                                                    if dungeon[x2,y2]=3 then begin
                                                                             WriteLn('под твоими ногами лежит клад');
                                                                             end;
                                                                             
                                                    if (dungeon[x2,y2]=4)and(not(backpack=3)) then begin
                                                                                                   WriteLn('это выход, но у тебя нет клада');
                                                                                                   end;
                                                                                                   
                                                    if dungeon[x2,y2]=5 then begin
                                                                             WriteLn('тебя не пропускает монстр');
                                                                             x2:=x;
                                                                             y2:=y;
                                                                             end;
                                                                             
                                                    if dungeon[x2,y2]=6 then begin
                                                                             WriteLn('умный в камни не пойдет, умный камни обойдет');
                                                                             x2:=x;
                                                                             y2:=y;
                                                                             end;
                                                                             
                                                    x:=x2;
                                                    y:=y2;
                                                    
                                                    ReadLn(clovo);
                                                    
                                                    if clovo='шаг' then begin
                                                                        XS(side,x,y,x2,y2);
                                                                        if x2>sz2 then begin
                                                                                       WriteLn('туда низя, там стенка');
                                                                                       x2:=sz2;
                                                                                       end;
                                                                        if x2<1 then begin
                                                                                     WriteLn('туда низя, там стенка');
                                                                                     x2:=1;
                                                                                     end; 
                                                                        if y2<1 then begin
                                                                                     WriteLn('туда низя, там стенка');
                                                                                     y2:=1;
                                                                                     end; 
                                                                        if y2>sz then begin
                                                                                      WriteLn('туда низя, там стенка');
                                                                                      y2:=sz;
                                                                                      end; 
                                                                        end; 
                                         
                                                    if clovo='влево' then begin
                                                                          side:=side-1;
                                                                          if side=0 then begin 
                                                                                         side:=4;
                                                                                         end;
                                                                          WriteLn('ты смотришь на: ',sides[side]);
                                                                          end;
                                                                 
                                                    if clovo='вправо' then begin
                                                                           side:=side+1;
                                                                           if side=5 then begin 
                                                                                          side:=1;
                                                                                          end;
                                                                      WriteLn('ты смотришь на:',sides[side]);               
                                                                      end;
                                                                      
                                                    if (clovo='взять')and(backpack>0) then begin
                                                                                           WriteLn('рюкзак занят');
                                                                                           end;   
                                                                                     
                                                    if (clovo='взять')and(backpack=0) then begin
                                                                                           WriteLn('этот предмет у тебя в рюкзаке');
                                                                                           backpack:=dungeon[x2,y2];
                                                                                           dungeon[x2,y2]:=0;
                                                                                           end;
                                                                                    
                                                    if (clovo='выложить')and(dungeon[x2,y2]>0) then begin
                                                                                                    WriteLn('здесь уже что-то лежит'); 
                                                                                                    end; 
                                                                                                    
                                                    if (clovo='выложить')and(dungeon[x2,y2]=0) then begin
                                                                                                    WriteLn('предмет выложен');
                                                                                                    dungeon[x2,y2]:=backpack;
                                                                                                    backpack:=0;
                                                                                                    end; 
                                                                                                    
                                                    if (clovo='взорвать')and(not(backpack=2)) then begin
                                                                                                   WriteLn('у тебя нет гранаты');
                                                                                                   end;
                                                    if (clovo='взорвать')and(backpack=2) then begin
                                                                                              XS(side,x,y,x2,y2);
                                                                                              WriteLn('монстр уничтожен, гранаты больше нет');
                                                                                              dungeon[x2,y2]:=0;
                                                                                              backpack:=0;
                                                                                              x2:=x;
                                                                                              y2:=y;
                                                                                              end;
                                                                                              
                                                    if (clovo='ломать')and(not(backpack=1)) then begin
                                                                                                 WriteLn('кирки у тебя нет, камни все таки обойти придется');
                                                                                                 dungeon[x2,y2]:=0;
                                                                                                 backpack:=0;
                                                                                                 end;
                                                    if (clovo='ломать')and(backpack=1) then begin
                                                                                            XS(side,x,y,x2,y2);
                                                                                            WriteLn('а ты умнее чем кажешься, камней больше нет, кирки тоже');
                                                                                            dungeon[x2,y2]:=0;
                                                                                            backpack:=0;
                                                                                            x2:=x;
                                                                                            y2:=y;
                                                                                            end;
                                                    end;
WriteLn('а ты мозговитый, и клад нашел и из моего подвала вышел');
WriteLn('ПОБЕДА');

end.

