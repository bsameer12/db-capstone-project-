-- Task 2 Stored Procedure

USE LittleLemondb;
DELIMITER //
CREATE PROCEDURE CheckBooking(IN dates DATE, IN tableno INT, OUT status VARCHAR(255))
BEGIN
		DECLARE BookingCount INT;
        SELECT COUNT(*) INTO BookingCount
        FROM Bookings
        WHERE BookingDate = dates AND TableNo = tableno;
        IF BookingCount > 0 THEN SET status = CONCAT('Table ', tableno, ' is already booked.');
        Else SET status =  CONCAT('Table ', tableno, ' is available.');
        END IF;
END//

SET @dates = "2023-08-26";
SET @no = 3;
SET @status = "Booking Status";
CALL CheckBooking( @dates, @no, @Status);

SELECT @status;

-- Task 3  SQL Transactions
DELIMITER //

CREATE PROCEDURE AddValidBooking(IN pBookingDate DATE, IN pTableNo INT, IN cID INT, IN bID INT, IN BSLOT TIME, BGN INT)
BEGIN
    DECLARE bookingCount INT;
    
    START TRANSACTION;
    
    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO bookingCount
    FROM Bookings
    WHERE BookingDate = pBookingDate AND TableNo = pTableNo;
    
    IF bookingCount > 0 THEN
        -- If the table is already booked, rollback the transaction
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Table is already booked for the specified date.';
    ELSE
        -- If the table is available, insert the new booking and commit the transaction
        INSERT INTO Bookings ()
        VALUES (bID, cID, pBookingDate, BSLOT, pTableNo, BGN );
        COMMIT;
    END IF;
END;
//

DELIMITER ;

SET @BookingDate = "2023-08-26";
SET @tbno = 5;
SET @cid = 107;
SET @bid = 11;
SET @bslot = "19:15";
set @bgn = 5;
CALL AddValidBooking( @BookingDate, @tbno, @cid, @bid, @bslot, @bgn);

        
