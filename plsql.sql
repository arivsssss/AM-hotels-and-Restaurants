DECLARE
    v_employee_name VARCHAR2(255);
    v_shift_date DATE;
BEGIN
    SELECT ed.Employee_name, es.Shift_date
    INTO v_employee_name, v_shift_date
    FROM EmployeeDetails ed
    JOIN EmployeeShiftDetails es ON ed.EmployeeID = es.EmployeeID
    WHERE ed.EmployeeID = 1;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
    DBMS_OUTPUT.PUT_LINE('Shift Date: ' || TO_CHAR(v_shift_date, 'DD-MM-YYYY'));
END;
/


CREATE OR REPLACE FUNCTION getEmployeeShiftDetails(p_employee_id IN NUMBER)
RETURN VARCHAR2
IS
    v_employee_name VARCHAR2(255);
    v_shift_date DATE;
    v_result VARCHAR2(4000); 

BEGIN
    SELECT ed.Employee_name, es.Shift_date
    INTO v_employee_name, v_shift_date
    FROM EmployeeDetails ed
    JOIN EmployeeShiftDetails es ON ed.EmployeeID = es.EmployeeID
    WHERE ed.EmployeeID = p_employee_id;

    v_result := 'Employee Name: ' || v_employee_name || ', Shift Date: ' || TO_CHAR(v_shift_date, 'DD-MM-YYYY');
    RETURN v_result;
END;
/

