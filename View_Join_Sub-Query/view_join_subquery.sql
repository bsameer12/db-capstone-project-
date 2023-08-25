--- Task 1 View Creation 
CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost
FROM Orders
WHERE Quantity > 2;

Select * from OrdersView;

--- Task 2 Inner join
USE LittleLemondb;
SELECT Bookings.CustomerID, CustomerDetails.CustomerName, Orders.OrderID, Orders.TotalCost AS "COST", Menu.ItemName, ItemType.Type AS "Course"
FROM CustomerDetails
INNER JOIN Bookings ON CustomerDetails.CustomerID = Bookings.CustomerID
INNER JOIN Orders ON Bookings.BookingID = Orders.BookingID
INNER JOIN Menu ON Orders.ItemID = Menu.ItemID
INNER JOIN ItemType ON Menu.TypeID = ItemType.TypeID
WHERE Orders.TotalCost > 20;


--- Task 3 sub-query
SELECT ItemName 
FROM Menu
WHERE ItemID = ANY (SELECT ItemID FROM Orders WHERE Quantity > 2);


