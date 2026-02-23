--program to create square and cube of a given number
set serveroutput on
declare
	n number:=&n;
	square number;
	cube number;
begin
square := n*n;
dbms_output.put_line('the square ='||square);
cube := n*n*n;
dbms_output.put_line('the cube ='||cube);

end;
/