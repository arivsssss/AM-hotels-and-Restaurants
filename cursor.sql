DECLARE

    CURSOR employee_cursor IS
        SELECT EmployeeID, Employee_name, Salary
        FROM EmployeeDetails;

   
    v_employee_id EmployeeDetails.EmployeeID%TYPE;
    v_employee_name EmployeeDetails.Employee_name%TYPE;
    v_salary EmployeeDetails.Salary%TYPE;
BEGIN

    OPEN employee_cursor;

    LOOP
        FETCH employee_cursor INTO v_employee_id, v_employee_name, v_salary;
        EXIT WHEN employee_cursor%NOTFOUND;

      
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee_id);
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
        DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
        DBMS_OUTPUT.PUT_LINE('---------------------------');
    END LOOP;

    CLOSE employee_cursor;
END;
/
