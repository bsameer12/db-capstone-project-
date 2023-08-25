-- Task 1
USE LittleLemondb;
DELIMITER //
CREATE PROCEDURE AddBooking(IN bID INT, IN cID INT ,IN pBookingDate DATE, IN BSLOT TIME, IN pTableNo INT, BGN INT)
BEGIN
         DECLARE Message VARCHAR(255);
		 START TRANSACTION;
		 INSERT INTO Bookings ()
         VALUES (bID, cID, pBookingDate, BSLOT, pTableNo, BGN );
         COMMIT;
         SET Message = "New Booking Added Successfully!";
         SELECT Message;
END//
DELIMITER ;

CALL AddBooking(12, 106, "2023-09-04","15:55",8,2);

-- Task 2 UPDATE
USE LittleLemondb;
DELIMITER //
CREATE PROCEDURE UpdateBooking(IN bID INT,IN pBookingDate DATE)
BEGIN
         DECLARE Confirmation VARCHAR(255);
		 START TRANSACTION;
		 UPDATE Bookings 
         SET BookingDate = pBookingDate
         WHERE BookingID = bID;
         COMMIT;
         SET Confirmation = "Booking Updated Successfully!";
         SELECT Confirmation;
END//
DELIMITER ;

CALL UpdateBooking(12,"2023-09-05");

-- TASK 3 DELETE
USE LittleLemondb;
DELIMITER //
CREATE PROCEDURE CancelBooking(IN bID INT)
BEGIN
         DECLARE Confirmation VARCHAR(255);
		 START TRANSACTION;
		 DELETE FROM Bookings 
         WHERE BookingID = bID;
         COMMIT;
         SET Confirmation = "Booking Deleted Successfully!";
         SELECT Confirmation;
END//
DELIMITER ;

CALL CancelBooking(12);