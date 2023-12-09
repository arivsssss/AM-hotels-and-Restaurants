Select dishid,dish_name
From Menu_Details
Where Dishid In (Select Dishid From Orderitems Where Restaurantbookingid = 1);


SELECT *
FROM EmployeeDetails
WHERE Salary = (SELECT MAX(Salary) FROM EmployeeDetails);

SELECT *
from restaurantbooking
WHERE restaurantbookingID IN (SELECT restaurantbookingID FROM restaurantFeedback WHERE Rating <4);
