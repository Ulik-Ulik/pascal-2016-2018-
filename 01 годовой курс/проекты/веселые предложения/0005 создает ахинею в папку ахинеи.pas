var
the_numbers_of_line:Array[1..5]of integer;
which:Array[1..20]of string;
who:Array[1..20]of string;
wher:Array[1..20]of string;
doing:Array[1..20]of string;
wit:Array[1..20]of string;
cnt:integer;
which_text,who_text,where_text,doing_text,with_text,axunea:text;
a:string;

begin
Assign(which_text,'c:\Ученики\Тамиева\ахинея\1 какой.txt');
reset(which_text);
cnt:=1;
while not cnt>20 do begin
                    ReadLn(which_text,a);
                    which[cnt]:=a;
                    the_numbers_of_line[1]:=cnt;
                    cnt:=cnt+1;
                    end;
cnt:=1;                      
Close(which_text);

Assign(who_text,'c:\Ученики\Тамиева\ахинея\2 кто.txt');
reset(who_text);
cnt:=1;
while not cnt>20 do begin 
                    ReadLn(who_text,a);
                    who[cnt]:=a;
                    the_numbers_of_line[2]:=cnt;
                    cnt:=cnt+1;
                    end;
cnt:=1;                      
Close(who_text);

Assign(where_text,'c:\Ученики\Тамиева\ахинея\3 где.txt');
reset(where_text);
cnt:=1;
while not cnt>20 do begin 
                    ReadLn(where_text,a);
                    wher[cnt]:=a;
                    the_numbers_of_line[3]:=cnt;
                    cnt:=cnt+1;
                    end;
cnt:=1;                      
Close(where_text);

 Assign(doing_text,'c:\Ученики\Тамиева\ахинея\4 что делает.txt');
reset(doing_text);
cnt:=1;
while not cnt>20 do begin 
                    ReadLn(doing_text,a);
                    doing[cnt]:=a;
                    the_numbers_of_line[4]:=cnt;
                    cnt:=cnt+1;
                    end;
cnt:=1;                      
Close(doing_text);

 Assign(with_text,'c:\Ученики\Тамиева\ахинея\5 с кем.txt');
reset(with_text);
cnt:=1;
while not cnt>20 do begin 
                    ReadLn(with_text,a);
                    wit[cnt]:=a;
                    the_numbers_of_line[5]:=cnt;  
                    cnt:=cnt+1;
                    end;                    
Close(with_text);
Assign(axunea,'c:\Ученики\Тамиева\ахинея\собранная ахинея.txt');
Rewrite(axunea);
WriteLn(axunea,which[random(the_numbers_of_line[1])]);
WriteLn(axunea,who[random(the_numbers_of_line[2])]);
WriteLn(axunea,wher[random(the_numbers_of_line[3])]);
WriteLn(axunea,doing[random(the_numbers_of_line[4])]);
WriteLn(axunea,wit[random(the_numbers_of_line[5])]);
Close(axunea);
end.
