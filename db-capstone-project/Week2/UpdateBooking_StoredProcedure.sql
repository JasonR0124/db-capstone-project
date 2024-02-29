-- Added Booking_Slot to conform to my table
USE littlelemondb;
DELIMITER //
CREATE PROCEDURE UpdateBooking (
    IN New_Booking_Date DATE,
    IN New_Booking_Slot TIME,
    IN Existing_Booking_ID INT
)
    BEGIN
    UPDATE Bookings 
    SET Booking_Date = New_Booking_Date, Booking_Slot = New_Booking_Slot 
    WHERE Booking_ID = Existing_Booking_ID; 
    SELECT CONCAT("Booking ", Existing_Booking_ID, " updated") AS "Confirmation";
    END //
DELIMITER ;
