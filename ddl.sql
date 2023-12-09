CREATE TABLE EmployeeDetails (
    EmployeeID INT PRIMARY KEY,
    Employee_name VARCHAR(255) NOT NULL,
    Position VARCHAR(255),
    Contact_info VARCHAR(255),
    Address VARCHAR(255),
    Salary INT
);

INSERT INTO EmployeeDetails (EmployeeID, Employee_name, Position, Contact_info, Address, Salary)
VALUES (1, 'Senthil Kumar', 'Manager', '9876543210', '123 MG Road, Chennai', 50000);

INSERT INTO EmployeeDetails (EmployeeID, Employee_name, Position, Contact_info, Address, Salary)
VALUES (2, 'Priya Devi', 'Receptionist', '8765432109', '456 Velachery Main Road, Chennai', 35000);

INSERT INTO EmployeeDetails (EmployeeID, Employee_name, Position, Contact_info, Address, Salary)
VALUES (3, 'Arjun Raj', 'Chef', '7654321098', '789 OMR, Chennai', 45000);

INSERT INTO EmployeeDetails (EmployeeID, Employee_name, Position, Contact_info, Address, Salary)
VALUES (4, 'Anitha Rani', 'Cleaning Staff', '6543210987', '321 Anna Nagar, Chennai', 25000);


CREATE TABLE menu_details (
    DishID INT PRIMARY KEY,
    Dish_name VARCHAR(255) NOT NULL,
    ingredients VARCHAR(255),
    price INT,
    Availability_status VARCHAR(10)
);


INSERT INTO menu_details (DishID, Dish_name, ingredients, price, Availability_status)
VALUES (1, 'Dosa', 'Rice flour, urad dal, water', 50, 'Available');

INSERT INTO menu_details (DishID, Dish_name, ingredients, price, Availability_status)
VALUES (2, 'Idli', 'Rice flour, urad dal, fenugreek seeds', 40, 'Available');

INSERT INTO menu_details (DishID, Dish_name, ingredients, price, Availability_status)
VALUES (3, 'Sambhar', 'Toor dal, tamarind, vegetables', 60, 'Available');

INSERT INTO menu_details (DishID, Dish_name, ingredients, price, Availability_status)
VALUES (4, 'Biryani', 'Basmati rice, chicken, spices', 120, 'Available');

INSERT INTO menu_details (DishID, Dish_name, ingredients, price, Availability_status)
VALUES (5, 'Rasam', 'Tomato, tamarind, spices', 45, 'Available');

select * from menu_details


CREATE TABLE PaymentMethods (
    PaymentmethodId INT PRIMARY KEY,
    Cardnumber VARCHAR(255),
    Expirydate DATE,
    Cvv VARCHAR(255)
);


INSERT INTO PaymentMethods (PaymentmethodId, Cardnumber, Expirydate, Cvv)
VALUES (1, '1234-5678-9012-3456', TO_DATE('01-12-2023', 'DD-MM-YYYY'), '123');

INSERT INTO PaymentMethods (PaymentmethodId, Cardnumber, Expirydate, Cvv)
VALUES (2, '2345-6789-0123-4567', TO_DATE('01-05-2024', 'DD-MM-YYYY'), '456');

INSERT INTO PaymentMethods (PaymentmethodId, Cardnumber, Expirydate, Cvv)
VALUES (3, '3456-7890-1234-5678', TO_DATE('01-09-2022', 'DD-MM-YYYY'), '789');

INSERT INTO PaymentMethods (PaymentmethodId, Cardnumber, Expirydate, Cvv)
VALUES (4, '4567-8901-2345-6789', TO_DATE('01-08-2023', 'DD-MM-YYYY'), '012');

INSERT INTO PaymentMethods (PaymentmethodId, Cardnumber, Expirydate, Cvv)
VALUES (5, '5678-9012-3456-7890', TO_DATE('01-11-2024', 'DD-MM-YYYY'), '345');



CREATE TABLE HotelBooking (
    HotelbookingID INT PRIMARY KEY,
    custNAME VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Phone INT NOT NULL,
    Check_in DATE,
    Check_out DATE,
    Guests INT NOT NULL
);


INSERT INTO HotelBooking (HotelbookingID, custNAME, Email, Phone, Check_in, Check_out, Guests)
VALUES (1, 'Sundarajan', 'sundarajan@example.com', 9876543210, TO_DATE('01-12-2023', 'DD-MM-YYYY'), TO_DATE('05-12-2023', 'DD-MM-YYYY'), 2);

INSERT INTO HotelBooking (HotelbookingID, custNAME, Email, Phone, Check_in, Check_out, Guests)
VALUES (2, 'Lakshmi', 'lakshmi@example.com', 8765432109, TO_DATE('15-01-2024', 'DD-MM-YYYY'), TO_DATE('20-01-2024', 'DD-MM-YYYY'), 3);

INSERT INTO HotelBooking (HotelbookingID, custNAME, Email, Phone, Check_in, Check_out, Guests)
VALUES (3, 'Arjun', 'arjun@example.com', 7654321098, TO_DATE('10-02-2024', 'DD-MM-YYYY'), TO_DATE('15-02-2024', 'DD-MM-YYYY'), 1);

INSERT INTO HotelBooking (HotelbookingID, custNAME, Email, Phone, Check_in, Check_out, Guests)
VALUES (4, 'Meenakshi', 'meenakshi@example.com', 6543210987, TO_DATE('22-03-2024', 'DD-MM-YYYY'), TO_DATE('25-03-2024', 'DD-MM-YYYY'), 4);




CREATE TABLE RestaurantBooking (
    RestaurantbookingID INT PRIMARY KEY,
    CName VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(255) NOT NULL,
    Preferred_date DATE NOT NULL,
    Guests INT NOT NULL
);


INSERT INTO RestaurantBooking (RestaurantbookingID, CName, Email, Phone, Preferred_date, Guests)
VALUES (1, 'Rajesh', 'rajesh@example.com', '9876543210', TO_DATE('05-12-2023', 'DD-MM-YYYY'), 4);

INSERT INTO RestaurantBooking (RestaurantbookingID, CName, Email, Phone, Preferred_date, Guests)
VALUES (2, 'Saranya', 'saranya@example.com', '8765432109', TO_DATE('15-01-2024', 'DD-MM-YYYY'), 2);

INSERT INTO RestaurantBooking (RestaurantbookingID, CName, Email, Phone, Preferred_date, Guests)
VALUES (3, 'Prakash', 'prakash@example.com', '7654321098', TO_DATE('10-02-2024', 'DD-MM-YYYY'), 6);

INSERT INTO RestaurantBooking (RestaurantbookingID, CName, Email, Phone, Preferred_date, Guests)
VALUES (4, 'Indira', 'indira@example.com', '6543210987', TO_DATE('22-03-2024', 'DD-MM-YYYY'), 3);



CREATE TABLE EmployeeShiftDetails (
    Employee_shiftID INT PRIMARY KEY,
    EmployeeID INT,
    Shift_date DATE,
    FOREIGN KEY (EmployeeID) REFERENCES EmployeeDetails(EmployeeID)
);


INSERT INTO EmployeeShiftDetails (Employee_shiftID, EmployeeID, Shift_date)
VALUES (1, 1, TO_DATE('05-12-2023', 'DD-MM-YYYY'));

INSERT INTO EmployeeShiftDetails (Employee_shiftID, EmployeeID, Shift_date)
VALUES (2, 2, TO_DATE('15-01-2024', 'DD-MM-YYYY'));

INSERT INTO EmployeeShiftDetails (Employee_shiftID, EmployeeID, Shift_date)
VALUES (3, 3, TO_DATE('10-02-2024', 'DD-MM-YYYY'));

INSERT INTO EmployeeShiftDetails (Employee_shiftID, EmployeeID, Shift_date)
VALUES (4, 4, TO_DATE('22-03-2024', 'DD-MM-YYYY'));



CREATE TABLE OrderItems (
    BillingID INT PRIMARY KEY,
    RestaurantBookingid INT,
    DishId INT,
    Quantity INT,
    Subtotal DECIMAL,
    FOREIGN KEY (RestaurantBookingid) REFERENCES RestaurantBooking(RestaurantbookingID),
    FOREIGN KEY (DishId) REFERENCES Menu_Details(DishID)
);

INSERT INTO OrderItems (BillingID, RestaurantbookingID, DishID, Quantity, Subtotal)
VALUES (1, 1, 1, 2, 25.99);

INSERT INTO OrderItems (BillingID, RestaurantbookingID, DishID, Quantity, Subtotal)
VALUES (2, 2, 3, 1, 12.50);

INSERT INTO OrderItems (BillingID, RestaurantbookingID, DishID, Quantity, Subtotal)
VALUES (3, 3, 2, 3, 35.75);

INSERT INTO OrderItems (BillingID, RestaurantbookingID, DishID, Quantity, Subtotal)
VALUES (4, 4, 4, 2, 22.99);


CREATE TABLE RestaurantPayments (
    PaymentID INT PRIMARY KEY,
    RestaurantbookingID INT,
    PaymentMethod INT,
    Amount DECIMAL,
    FOREIGN KEY (RestaurantbookingID) REFERENCES RestaurantBooking(RestaurantbookingID),
    FOREIGN KEY (PaymentMethod) REFERENCES PaymentMethods(PaymentmethodId)
);


CREATE TABLE HotelPayments (
    PaymentID INT PRIMARY KEY,
    HotelbookingID INT,
    PaymentMethod INT,
    Amount DECIMAL,
    FOREIGN KEY (HotelbookingID) REFERENCES HotelBooking(HotelbookingID),
    FOREIGN KEY (PaymentMethod) REFERENCES PaymentMethods(PaymentmethodId)
);


CREATE TABLE RestaurantFeedback (
    ReviewID INT PRIMARY KEY,
    RestaurantbookingID INT,
    Rating INT,
    Comments VARCHAR(100),
    FOREIGN KEY (RestaurantbookingID) REFERENCES RestaurantBooking(RestaurantbookingID)
);


INSERT INTO RestaurantFeedback (ReviewID, RestaurantbookingID, Rating, Comments)
VALUES (1, 1, 4, 'Good service and delicious food.');

INSERT INTO RestaurantFeedback (ReviewID, RestaurantbookingID, Rating, Comments)
VALUES (2, 2, 5, 'Excellent experience, loved the ambiance.');

INSERT INTO RestaurantFeedback (ReviewID, RestaurantbookingID, Rating, Comments)
VALUES (3, 3, 3, 'Food was okay, but service could be improved.');

INSERT INTO RestaurantFeedback (ReviewID, RestaurantbookingID, Rating, Comments)
VALUES (4, 4, 4, 'Nice place, friendly staff.');




CREATE TABLE HotelFeedback (
    ReviewID INT PRIMARY KEY,
    HotelbookingID INT,
    Rating INT,
    Comments VARCHAR(200),
    FOREIGN KEY (HotelbookingID) REFERENCES HotelBooking(HotelbookingID)
);


DELETE FROM RestaurantBooking
WHERE RestaurantbookingID = 2;


DELETE FROM EmployeeDetails
WHERE EmployeeID = 2;




UPDATE EmployeeDetails
SET Salary = 55000
WHERE EmployeeID = 1;


UPDATE RestaurantBooking
SET Guests = 5
WHERE RestaurantbookingID = 1;




