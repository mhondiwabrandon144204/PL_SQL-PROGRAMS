--delete records from result where deptno <= 20 using explicit cursor

set serveroutput on

declare
	cursor c1 is select * from emp where deptno <= 20;

begin
	open c1;

delete from emp where deptno <= 20;
if c1%ISOPEN then
dbms_output.put_line('CURSOR OPEN.');
end if;

if c1%ISOPEN then
dbms_output.put_line('no active data set in cursor.');
else
dbms_output.put_line('record deleted..'||SQL%ROWCOUNT);
end if;
close c1;
end;
/
	