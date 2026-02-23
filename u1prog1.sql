--program to calculate simple interest
set serveroutput on
declare
	p number:=&p;
	r number:=&r;
	n number:=&n;
	SI number;
begin
SI := (p*r*n)/100;
dbms_output.put_line('principal amount:'||p);
dbms_output.put_line('rate of interest:'||r||'%');
dbms_output.put_line('time period:'||n||'years');
dbms_output.put_line('simple interest:'||SI);
end;
/