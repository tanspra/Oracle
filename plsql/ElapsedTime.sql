declare
cursor c1 is select * from dict;
i dict%rowtype;
t1 number(10);
t2 number(10);
begin 
t1:=dbms_utility.get_time;
for i in c1
loop
null;
end loop;
t2:=dbms_utility.get_time;
dbms_output.put_line('time taken by cursor fetch '||(t2-t1));
end;
/