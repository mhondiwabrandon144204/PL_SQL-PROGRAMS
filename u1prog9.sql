--program to display all records of male employees
SET SERVEROUTPUT ON;

BEGIN
    FOR rec IN (
        SELECT *
        FROM EMP
        WHERE Gender = 'Male'
        AND Deptname = 'HR'
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('EID      : ' || rec.EID);
        DBMS_OUTPUT.PUT_LINE('Name     : ' || rec.EName);
        DBMS_OUTPUT.PUT_LINE('Dept     : ' || rec.Deptname);
        DBMS_OUTPUT.PUT_LINE('Gender   : ' || rec.Gender);
        DBMS_OUTPUT.PUT_LINE('BasicSal : ' || rec.BasicSal);
        DBMS_OUTPUT.PUT_LINE('----------------------------');
    END LOOP;
END;
/