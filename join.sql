SELECT 
    e.EmployeeID,
    e.Employee_name,
    e.Position,
    e.Contact_info,
    e.Address,
    e.Salary,
    es.Employee_shiftID,
    es.Shift_date
FROM EmployeeDetails e
JOIN EmployeeShiftDetails es ON e.EmployeeID = es.EmployeeID;

SELECT 
    oi.BillingID,
    oi.Quantity,
    oi.Subtotal,
    rb.CName,
    md.Dish_name,
    md.price
FROM OrderItems oi
JOIN RestaurantBooking rb ON oi.RestaurantBookingid = rb.RestaurantbookingID
JOIN Menu_Details md ON oi.DishId = md.DishID;


SELECT 
    rf.ReviewID,
    rf.Rating,
    rf.Comments,
    rb.CName,
    rb.Preferred_date
FROM RestaurantFeedback rf
JOIN RestaurantBooking rb ON rf.RestaurantbookingID = rb.RestaurantbookingID;



