-- Again I added Booking_Slot param to the procedure

USE littlelemondb;
DELIMITER //

CREATE PROCEDURE AddValidBooking (
    IN New_Booking_Date DATE,
    IN New_Booking_Slot TIME,
    IN New_Table_Number INT
)
BEGIN
    DECLARE Booking_Check INT;

    START TRANSACTION;

    -- Check if the table is already booked on the given date and slot
    SELECT COUNT(*)
    INTO Booking_Check
    FROM Bookings
    WHERE Booking_Date = New_Booking_Date
    AND Booking_Slot = New_Booking_Slot
    AND Table_Number = New_Table_Number;

    -- RollBack the transaction if the table is booked
    IF Booking_Check > 0 THEN
        ROLLBACK;
        SELECT CONCAT("Table ", New_Table_Number, " is already booked - booking cancelled") AS Booking_Status;
    -- Commit the transaction if the table is available
    ELSE
        INSERT INTO Bookings (Booking_Date, Booking_Slot, Table_Number)
        VALUES (New_Booking_Date, New_Booking_Slot, New_Table_Number);
        COMMIT;
        SELECT CONCAT("Table ", New_Table_Number, " has been booked for ", New_Booking_Date, " at ", New_Booking_Slot) AS Booking_Status;
    END IF;
END //

DELIMITER ;