<<blockName>>
declare
x number(3):=12;
begin
for i in 1..10
	loop
		dbms_output.put_line('Count  : '||i||'  '||blockname.x);
		x:=x+1;
	end loop;
end;
/