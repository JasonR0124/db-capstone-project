/* I added a Booking_Slot param as only booking a table once a day seems ridiculous, I guess that is why
in their example they were charging $200 for a salad. I also added an out parameter as it made sense 
to me.
*/
USE littlelemondb;
DELIMITER //
CREATE PROCEDURE CheckBooking (
    IN New_Booking_Date DATE,
    IN New_Booking_Slot TIME,
    IN New_Table_Number INT,
    OUT Booking_Status VARCHAR(255)
)
BEGIN
    DECLARE Booking_Check INT;
    SELECT COUNT(*) INTO Booking_Check
    FROM Bookings
    WHERE Booking_Date = New_Booking_Date
    AND Booking_Slot = New_Booking_Slot
    AND Table_Number = New_Table_Number;
    IF Booking_Check > 0 THEN
        SET Booking_Status = CONCAT("Table ", New_Table_Number, " is already booked");
    ELSE
        SET Booking_Status = CONCAT("Table ", New_Table_Number, " is available");
    END IF;
END //
DELIMITER ;
