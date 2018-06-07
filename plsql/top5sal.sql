declare
cursor c1 is select * from emp order by sal desc nulls last;
v_sal number(10);
begin
for i in c1
	loop
	if c1%rowcount<=5 then
	dbms_output.put_line(i.ename||' '||i.sal);
	
	end if;
	end loop;
	-- open c1;
	-- loop
	-- fetch c1 into v_sal;
	
	-- exit when c1%notfound;
	-- if c1%rowcount<=5 then
	-- dbms_output.put_line('Salary :'||v_sal);
	-- end if;
	-- end loop;
	-- close c1;
end;
/