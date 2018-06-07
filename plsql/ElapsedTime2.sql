declare
cursor c1 is select sno from emprec;
type t4 is table of emprec.sno%type index by binary_integer;
vt t4;
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
t1:=dbms_utility.get_time;
loop
open c1;
fetch c1 bulk collect into vt;
exit when c1%notfound;
end loop;
t2:=dbms_utility.get_time;
close c1;
dbms_output.put_line('time elapsed in bulk collect'||(t2-t1));
end;
/