create or replace procedure p4(empno number)
as
begin
dbms_output.put_line('Welcome');
for i in (select * from emp)
loop
dbms_output.put_line(i.empno||'  '||i.ename||' '||i.job);
end loop;
end;
/