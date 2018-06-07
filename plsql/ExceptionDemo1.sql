declare 
a number(3);
b number(3);
-- a exception;
-- pragma exception_init(a,-1476);
begin
a:=&a;
b:=&b;
dbms_output.put_line(a/b);
-- exception
-- when others then
-- dbms_output.put_line('Something went wrong');
end;
/