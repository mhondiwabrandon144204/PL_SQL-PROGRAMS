--display ename,deptno and basicsalary who are working in department no 1with explicit cursor use  parameterised cursor 

set serveroutput on
declare
	cursor cur2(d number) IS select * from employee where 	deptno =d;
	data cur2%ROWTYPE;
begin
open cur2(20);

loop
	fetch cur2 into data;
	Exit when cur2%NOTFOUND;
	dbms_output.put_line('ename: '||data.ename ||'deptno: '||data.deptno||' salary:
'||data.basicsal);
end loop;
close cur2;
end;
/ 