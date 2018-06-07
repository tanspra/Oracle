declare 
V_no number(10):=12;
a exception;
begin
dbms_output.put_line('Hai this is testing');
dbms_output.put_line("v_no");
if v_no=&no then

raise a;
	end if;
exception
	when a then
	raise_application_error(-20989,'This is a user defined exception');

end;
/