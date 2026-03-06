--delete records from result where deptno <= 20 using implicit cursor

set severoutput on

begin

delete from emp where deptno <= 20;

if SQL%ISOPEN then

dbms_output.put_line('CURSOR OPEN.');

end if;

if SQL%NOTFOUND then

dbms_output.put_line('NO ACTIVE DATA SET IN CURSOR.');

else 

dbms_output.put_line('record deleted ..'||SQL%ROWCOUNT);

endif;

end;
/