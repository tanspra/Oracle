declare
v_date1 date;
v_date2 date;
begin
	v_date1:=to_date('01-JAN-18');
	v_date2:=to_date('31-DEC-18');
while(v_date1<v_date2)
	loop
	dbms_output.put_line(to_char(v_date1,'dd')||' ');
	v_date1:=v_date1+1;
	end loop;
	

end;
/