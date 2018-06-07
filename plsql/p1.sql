create or replace procedure p1(empno number)
is 
begin
dbms_output.put_line('Welcome');
for i in (select * from emp)
loop
dbms_output.put_line(i.empno||'  '||i.ename||' '||i.job);
end loop;
end;
/