--cursor for loop display ename,design and salary

set serveroutput on

begin

for i IN(select ename,desig,salary from emp)

loop

dbms_output.put_line('Ename:'||i.ename);
dbms_output.put_line('Designation:'||i.desig);
dbms_output.put_line('Salary:'||i.salary);
end loop;
end;
/