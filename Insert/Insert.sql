USE LittleLemondb;

REPLACE INTO `CustomerDetails` (`CustomerID`, `CustomerName`, `ContactNumber`, `Email`, `Address`)
VALUES
    (101, 'John Smith', 123456789, 'john@example.com', '123 Main St, City'),
    (102, 'Jane Doe', 987654321, 'jane@example.com', '456 Elm St, Town'),
    (103, 'Michael Johnson', 555123456, 'michael@example.com', '789 Oak Ave, Village'),
    (104, 'Emily Williams', 777888999, 'emily@example.com', '234 Maple Rd, Hamlet'),
    (105, 'David Brown', 333444555, 'david@example.com', '567 Pine Ln, Suburb'),
    (106, 'Sophia Wilson', 111222333, 'sophia@example.com', '890 Cedar Pl, County'),
    (107, 'Oliver Lee', 444555666, 'oliver@example.com', '1234 Birch St, Borough'),
    (108, 'Emma Taylor', 666777888, 'emma@example.com', '5678 Walnut Ave, Municipality'),
    (109, 'James Miller', 888999000, 'james@example.com', '9010 Spruce Rd, District'),
    (110, 'Ava Martinez', 222333444, 'ava@example.com', '3456 Oakwood Blvd, Territory');



REPLACE INTO `Bookings` (`BookingID`, `CustomerID`, `BookingDate`, `BookingSlot`, `TableNo`, `NumberofGuests`)
VALUES
    (1, 101, '2023-08-25', TIME('18:00'), 5, 4),
    (2, 102, '2023-08-26', TIME('19:30'), 3, 2),
    (3, 103, '2023-08-27', TIME('12:00'), 8, 6),
    (4, 104, '2023-08-28', TIME('20:00'), 2, 3),
    (5, 105, '2023-08-29', TIME('17:30'), 4, 5),
    (6, 106, '2023-08-30', TIME('14:30'), 1, 2),
    (7, 107, '2023-08-31', TIME('18:30'), 6, 4),
    (8, 108, '2023-09-01', TIME('21:00'), 9, 8),
    (9, 109, '2023-09-02', TIME('13:00'), 7, 3),
    (10, 110, '2023-09-03', TIME('19:00'), 10, 5);



REPLACE INTO `ItemType` (`TypeID`, `Type`)
VALUES
    (1, 'Appetizer'),
    (2, 'Main Course'),
    (3, 'Dessert'),
    (4, 'Beverage'),
    (5, 'Salad'),
    (6, 'Soup'),
    (7, 'Side Dish'),
    (8, 'Snack'),
    (9, 'Breakfast'),
    (10, 'Special');


REPLACE INTO `Menu` (`ItemID`, `TypeID`, `ItemName`, `Price`)
VALUES
    (1, 1, 'Mozzarella Sticks', 8.99),
    (2, 1, 'Spinach Dip', 7.49),
    (3, 2, 'Grilled Steak', 19.99),
    (4, 2, 'Chicken Alfredo', 15.99),
    (5, 3, 'Chocolate Lava Cake', 6.99),
    (6, 3, 'New York Cheesecake', 7.49),
    (7, 4, 'Iced Tea', 2.49),
    (8, 4, 'Lemonade', 2.99),
    (9, 5, 'Caesar Salad', 7.99),
    (10, 5, 'Greek Salad', 8.49),
    (11, 6, 'Tomato Soup', 4.99),
    (12, 6, 'Chicken Noodle Soup', 5.49),
    (13, 7, 'Garlic Mashed Potatoes', 3.99),
    (14, 7, 'Steamed Vegetables', 4.49),
    (15, 8, 'Chips and Salsa', 5.49),
    (16, 8, 'Nachos', 6.99),
    (17, 9, 'Pancakes', 9.99),
    (18, 9, 'Waffles', 8.49),
    (19, 10, 'Chef\'s Special', 14.99),
    (20, 10, 'Seasonal Delight', 12.99);


-- Insert Staff Members
REPLACE INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (101, 'John Doe', 'Waiter', 2500, '123456789', 'john@example.com', '123 Main St');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (102, 'Jane Smith', 'Chef', 3500, '987654321', 'jane@example.com', '456 Elm St');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (103, 'Michael Johnson', 'Server', 2300, '555123456', 'michael@example.com', '789 Oak Ave');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (104, 'Emily Williams', 'Bartender', 2700, '777888999', 'emily@example.com', '234 Maple Rd');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (105, 'David Brown', 'Waiter', 2500, '333444555', 'david@example.com', '567 Pine Ln');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (106, 'Sophia Wilson', 'Server', 2300, '111222333', 'sophia@example.com', '890 Cedar Pl');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (107, 'Oliver Lee', 'Busser', 2100, '444555666', 'oliver@example.com', '1234 Birch St');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (108, 'Emma Taylor', 'Chef', 3500, '666777888', 'emma@example.com', '5678 Walnut Ave');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (109, 'James Miller', 'manager', 5500, '888999000', 'james@example.com', '9010 Spruce Rd');

INSERT INTO `Staff` (`EmployeeID`, `EmployeeName`, `Role`, `Salary`, `ContactNumber`, `Email`, `Address`)
VALUES (110, 'Ava Martinez', 'Receptionist', 2700, '222333444', 'ava@example.com', '3456 Oakwood Blvd');


INSERT INTO Orders
VALUES (1, 5, 1, 1, '2023-08-25', 2, 17.98, 101);

INSERT INTO Orders
VALUES (2, 3, 2, 2, '2023-08-26', 1, 19.99, 102);

INSERT INTO Orders
VALUES (3, 8, 3, 3, '2023-08-27', 3, 20.97, 103);

INSERT INTO Orders
VALUES (4, 4, 4, 4, '2023-08-28', 1, 2.49, 104);

INSERT INTO Orders
VALUES (5, 1, 5, 5, '2023-08-29', 2, 15.98, 105);

INSERT INTO Orders
VALUES (6, 10, 6, 6, '2023-08-30', 1, 4.99, 106);

INSERT INTO Orders
VALUES (7, 6, 7, 7, '2023-08-31', 1, 3.99, 107);

INSERT INTO Orders
VALUES (8, 9, 8, 8, '2023-09-01', 2, 10.98, 108);

INSERT INTO Orders
VALUES (9, 7, 9, 9, '2023-09-02', 3, 29.97, 109);

INSERT INTO Orders
VALUES (10, 2, 10, 10, '2023-09-03', 1, 14.99, 110);

INSERT INTO Orders
VALUES (11, 3, 11, 1, '2023-08-25', 1, 5.49, 101);

-- Order for Customer 102's Chicken Noodle Soup order (BookingID 2, ItemID 12)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (12, 5, 12, 2, '2023-08-26', 2, 10.98, 102);

-- ... continue creating more orders ...

-- Order for Customer 103's Steamed Vegetables order (BookingID 3, ItemID 14)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (13, 8, 14, 3, '2023-08-27', 1, 4.49, 103);

-- Order for Customer 104's Nachos order (BookingID 4, ItemID 15)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (14, 4, 15, 4, '2023-08-28', 2, 10.98, 104);

-- Order for Customer 105's Waffles order (BookingID 5, ItemID 18)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (15, 1, 18, 5, '2023-08-29', 1, 8.49, 105);

-- Order for Customer 106's Chef's Special order (BookingID 6, ItemID 19)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (16, 10, 19, 6, '2023-08-30', 1, 14.99, 106);

USE `LittleLemondb`;
-- Order for Customer 107's Seasonal Delight order (BookingID 7, ItemID 20)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (17, 6, 20, 7, '2023-08-31', 1, 12.99, 105);

-- Order for Customer 108's Grilled Steak order (BookingID 8, ItemID 2)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (18, 9, 2, 8, '2023-09-01', 1, 19.99, 108);

-- Order for Customer 109's Chocolate Lava Cake order (BookingID 9, ItemID 3)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (19, 7, 3, 9, '2023-09-02', 1, 6.99, 109);

-- Order for Customer 110's Iced Tea order (BookingID 10, ItemID 4)
INSERT INTO `Orders` (`OrderID`, `TableNO`, `ItemID`, `BookingID`, `OrderDate`, `Quantity`, `TotalCost`, `EmployeeID`)
VALUES (20, 2, 4, 10, '2023-09-03', 2, 4.98, 110);




-- DeliveryID, OrderID, DeliveryStatus, DeliveryDate
INSERT INTO `OrderStatus` (`DeliveryID`, `OrderID`, `DeliveryStatus`, `DeliveryDate`)
VALUES
    (1, 1, 'In Progress', NULL),    -- OrderID 1
    (2, 2, 'Pending', NULL),        -- OrderID 2
    (3, 3, 'Delivered', '2023-08-27'), -- OrderID 3
    (4, 4, 'In Progress', NULL),    -- OrderID 4
    (5, 5, 'Pending', NULL),        -- OrderID 5
    (6, 6, 'Delivered', '2023-08-30'), -- OrderID 6
    (7, 7, 'In Progress', NULL),    -- OrderID 7
    (8, 8, 'Pending', NULL),        -- OrderID 8
    (9, 9, 'Delivered', '2023-09-02'), -- OrderID 9
    (10, 10, 'In Progress', NULL),   -- OrderID 10
    (11, 11, 'Pending', NULL),      -- OrderID 11
    (12, 12, 'Delivered', '2023-08-26'), -- OrderID 12
    (13, 13, 'In Progress', NULL),   -- OrderID 13
    (14, 14, 'Pending', NULL),      -- OrderID 14
    (15, 15, 'Delivered', '2023-08-29'), -- OrderID 15
    (16, 16, 'In Progress', NULL),   -- OrderID 16
    (17, 17, 'Pending', NULL),      -- OrderID 17
    (18, 18, 'Delivered', '2023-09-01'), -- OrderID 18
    (19, 19, 'In Progress', NULL),   -- OrderID 19
    (20, 20, 'Pending', NULL);      -- OrderID 20
