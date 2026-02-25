--program toaccept measurement in feet and displays it in cm,inch and meter

SET SERVEROUTPUT ON

 DECLARE
 	feet NUMBER;
 	inches NUMBER; 
	centimeters NUMBER;
	 meters NUMBER;
 BEGIN
r feet := &feet; 

 inches := feet * 12; 

 centimeters := feet * 30.48;
 
 meters := feet * 0.3048; 

foot = 0.3048 meter 

 DBMS_OUTPUT.PUT_LINE('Feet : ' || feet);
 DBMS_OUTPUT.PUT_LINE('Inches : ' || inches); 
DBMS_OUTPUT.PUT_LINE('Centimeters : ' || centimeters);
 DBMS_OUTPUT.PUT_LINE('Meters : ' || meters);

 END; 
/ 
