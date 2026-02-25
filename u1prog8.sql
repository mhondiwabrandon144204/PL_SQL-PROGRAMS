--program to calculate basic salary
SET SERVEROUTPUT ON

DECLARE
    v_eid       EMP.EID%TYPE;
    v_name      EMP.EName%TYPE;
    v_basic     EMP.BasicSal%TYPE;
    
    v_hra       NUMBER;
    v_da        NUMBER;
    v_medical   NUMBER := 500;
    v_pf        NUMBER;
    v_gross     NUMBER;

BEGIN
   
    v_eid := &Enter_EID;

    
    SELECT EName, BasicSal
    INTO v_name, v_basic
    FROM EMP
    WHERE EID = v_eid;

   
    v_hra := v_basic * 0.15;
    v_da  := v_basic * 0.50;
    v_pf  := v_basic * 0.10;

    
    v_gross := v_basic + (v_da + v_hra + v_medical) - v_pf;

    DBMS_OUTPUT.PUT_LINE('Employee ID   : ' || v_eid);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || v_basic);
    DBMS_OUTPUT.PUT_LINE('Gross Salary  : ' || v_gross);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found!');
END;
/