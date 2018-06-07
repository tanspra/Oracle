declare
cursor c1 is select ename from emp where deptno=60;
V_name varchar2(10);
begin
select ename into v_name from emp where deptno=80;
dbms_output.put_line(v_name);
-- open c1;
-- loop
-- fetch c1 into v_name;
-- exit when c1%notfound;
-- dbms_output.put_line(v_name);
--end loop; 
-- for i in c1
	-- loop
	-- dbms_output.put_line('Ename of employee : '||i.ename);
	-- end loop;
	

end;
/
