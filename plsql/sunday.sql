declare
d1 date;
d2 date;
begin
	d1:=sysdate;
	d2:=to_date('31-DEC-18');
	d1:=next_day(d1,'sunday');
	d1:=to_char(to_date(d1),'dd');
while(d1<d2)
	loop
	dbms_output.put_line(d1);
	d1:=d1+7;
	end loop;

end;
/