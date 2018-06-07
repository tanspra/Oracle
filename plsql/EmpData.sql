declare
cursor c1(p_deptno number) is select * from emp where deptno=p_deptno;
v_e emp%rowtype;
v_deptno number(3);
begin
v_deptno:=&deptno;
open c1(v_deptno);
loop
fetch c1 into v_e;
exit when c1%notfound;
dbms_output.put_line('Ename : '||v_e.ename||'  sal : '||v_e.sal);
end loop;
close c1;
	
end;
/