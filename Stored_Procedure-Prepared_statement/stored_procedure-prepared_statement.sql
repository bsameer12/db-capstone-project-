-- Task 1 Stored Procedure

USE LittleLemondb;
CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(Quantity) AS "Max Quantity in Order"
FROM Orders;

CALL GetMaxQuantity();

-- Task 2 Prepared Statement
USE LittleLemondb;
PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, TotalCost FROM Orders WHERE BookingID = ?';

SET @ID = 5;
EXECUTE GetOrderDetail USING @id;


-- Task 3 Stored Procedure WITH PARAMETER
CREATE PROCEDURE CancelOrder(IN id INT)
DELETE FROM  Orders WHERE OrderID = id;

CALL CancelOrder(19);

SELECT * FROM Orders;

