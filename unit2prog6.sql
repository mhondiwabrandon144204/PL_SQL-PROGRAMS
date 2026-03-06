--display ename,deptno and basicsalary who are working in department no 10 use  parameterised cursor with cursor for loop

set serveroutput on
declare
	cursor cur1(dno number) IS select ename,deptno,basicsal from 	employee where 	deptno =dno;
begin

for r1 IN cur1(30)
loop
	dbms_output.put_line('ename: '||r1.ename ||'deptno: '||r1.deptno||' salary:
'||r1.basicsal);
end loop;
end;
/ 