USE littlelemondb;
DELIMITER //
CREATE PROCEDURE CancelBooking (IN Existing_Booking_ID INT)
    BEGIN
    DELETE FROM Bookings 
    WHERE Booking_ID = Existing_Booking_ID; 
    SELECT CONCAT("Booking ", Existing_Booking_ID, " is cancelled") AS "Confirmation";
    END //
DELIMITER ;