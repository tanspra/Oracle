declare
n varchar2(10);
begin
for i in 1 .. 10000
loop
n:=lpad('pks',10,i);
insert into emprec values(i,n);
end loop;
end;
/