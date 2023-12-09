CREATE OR REPLACE TRIGGER update_employee_salary
AFTER UPDATE ON EmployeeDetails
FOR EACH ROW
BEGIN
    IF :OLD.Salary <> :NEW.Salary THEN
        UPDATE EmployeeShiftDetails
        SET Salary = :NEW.Salary
        WHERE EmployeeID = :NEW.EmployeeID;
    END IF;
END;
/

CREATE OR REPLACE TRIGGER update_restaurant_guests
AFTER UPDATE ON HotelBooking
FOR EACH ROW
BEGIN
    IF :OLD.Guests <> :NEW.Guests THEN
        UPDATE RestaurantBooking
        SET Guests = :NEW.Guests
        WHERE HotelbookingID = :NEW.HotelbookingID;
    END IF;
END;
/
