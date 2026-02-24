--
set serveroutput on
declare
	celcius number:=&celcius;
	fareinheit number;
begin
	fareinheit:=celcius*1.8+32;
commit;
dbms_output.put_line('fareinheit :'||fareinheit);

end;
/