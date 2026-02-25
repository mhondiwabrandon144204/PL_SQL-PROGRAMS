--program to delete the record of employee for given EID
SET SERVEROUTPUT ON

DECLARE
    v_eid EMP.EID%TYPE;
BEGIN
   
    v_eid := &EID;

    
    DELETE FROM EMP
    WHERE EID = v_eid;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Record deleted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employee found with given EID.');
    END IF;

    COMMIT;
END;
/