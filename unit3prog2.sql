--programto demonstrate the use of NO_DATA _FOUND exception
--display eid,ename,basicsalary as p[er inputted id and handle no data found exception
set serveroutput on
declare

	xeid number(4) :=&xeid;
	xename char(15);
	xbasicsal number(8,2);

begin
select ename,basicsal into xename,xbasicsal from employee where eid=xeid;
dbms_output.put_line('Employee ID'||xeid);
dbms_output.put_line('Employee Name:'||xename);
dbms_output.put_line('Employee Salary:'||xbasicsal);

Exception
	when NO_DATA_FOUND THEN
dbms_output.put_line('Id inputted by you is not available in employee table');

end;
/