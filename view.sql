CREATE VIEW EmployeeShiftView AS
SELECT
    e.EmployeeID,
    e.Employee_name,
    e.Position,
    e.Contact_info,
    e.Address,
    e.Salary,
    es.Shift_date
FROM
    EmployeeDetails e
JOIN
    EmployeeShiftDetails es ON e.EmployeeID = es.EmployeeID;


select * from employeeshiftview




CREATE VIEW RestaurantFeedbackView AS
SELECT
    rb.RestaurantbookingID,
    rb.CName,
    rb.Email,
    rb.Phone,
    rb.Preferred_date,
    rb.Guests,
    rf.Rating AS Feedback_Rating,
    rf.Comments AS Feedback_Comments
FROM
    RestaurantBooking rb
LEFT JOIN
    RestaurantFeedback rf ON rb.RestaurantbookingID = rf.RestaurantbookingID
    
select * from restaurantfeedbackview
