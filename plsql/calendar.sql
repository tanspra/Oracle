declare
id number(3):=1;
d1 date;
d2 date;
d3 date;
begin
d3:='&endDate';
d1:=sysdate;
d1:=next_day(d1,'saturday');
d2:=d1+1;


while(d1<to_date(d3))
	loop
	insert into calendar values(id,d1,d2);
	id:=id+1;
	d1:=d1+7;
	d2:=d2+7;
	end loop;


end;
/