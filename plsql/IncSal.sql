declare 
	v_sal number(10);
	v_job varchar2(20);
begin
select sal,job into v_sal,v_job from emp where empno=&empNo;
dbms_output.put_line('Salary before bonus : '||v_sal);
if v_job='clerk' then
	v_sal:=0.1*v_sal;
elsif v_job='salesman' then
	v_sal:=0.15*v_sal; 
elsif v_job='manager' then
	v_sal:=0.2*v_sal; 
else
	v_sal:=0.05*v_sal; 
end if;
dbms_output.put_line('Bonus salary is : '||v_sal);
end;
/	