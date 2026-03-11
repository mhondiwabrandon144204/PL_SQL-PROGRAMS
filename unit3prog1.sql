--program to divide zero program
set serveroutput on

declare
	num1 number(5):=&num1;
	num2 number(5):=&num2;
	result number;
begin

dbms_output.put_line('num1:'||num1);
dbms_output.put_line('num2:'||num2);

result := num1/num2;
dbms_output.put_line('Result:'||result); 

exception

when Zero_Divide then


	dbms_output.put_line('you cannot divide by zero');
	dbms_output.put_line('enter num1>0');
end;
/