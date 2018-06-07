declare 
type t1 is table of emp.job%type index by binary_integer;
v_t t1;
begin
update emp set sal=sal-100 returning job bulk collect into v_t;
for i in v_t.first .. v_t.last
loop
dbms_output.put_line(v_t(i));
end loop;
end;
/