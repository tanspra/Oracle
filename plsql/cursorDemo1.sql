declare 
cursor c1 is select ename from emp;
v_name varchar2(20);
begin
open c1;
loop
fetch c1 into v_name;
dbms_output.put_line(v_name);
exit when c1%notfound;
end loop;
close c1;
end;
/