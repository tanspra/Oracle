declare 
cursor c1 is select deptno from dept;
cursor c2(p_deptno number) is select * from emp where deptno=p_deptno;

begin
	for i in c1
	loop
	dbms_output.put_line('Employee of department :'||i.deptno);
		for j in c2(i.deptno)
		loop
		dbms_output.put_line(j.ename);
		end loop;
	end loop;



end;
/