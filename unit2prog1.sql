--prog to update salary by 10% who are working in department no 10 with implicit cursor
set severoutput on
begin
UPDATE emp set salary = salary + (salary*0.10) where deptno = 10;
if SQL%NOTFOUND then
dbms_output.put_line('no active data set in cursor.');
else
dbms_output.put_line('salary updated..'||SQL%ROWCOUNT);
endif;
end;
/