var
number1,number2,rslt:real;

procedure rz(tuclo1,tuclo2:real;var raznost:real);
begin
raznost:=abs(tuclo1-tuclo2);
end;

begin
ReadLn(number1,number2);
rz(number1,number2,rslt);
writeLn('это число');
writeLn(rslt);
end.
