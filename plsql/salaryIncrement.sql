declare
v_eno number(4);
v_sal number(6);
v_incrementSalary number(6);
begin
v_eno:=&employee_number;
v_incrementSalary:=&increment_amount;
select sal into v_sal from emp where empno=v_eno; 
v_sal:=v_sal+v_incrementSalary;
if v_sal>5000 then
	dbms_output.put_line('can not exceed sal 5000');
else
	update emp set sal=v_sal where empno=v_eno; 
	dbms_output.put_line('salary updated successfully');
end if;
exception
when others then
dbms_output.put_line('No such employee found');
end;
/