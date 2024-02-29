/* We just did this in a way that verified it was a valid booking and was way more complex.
At any rate I added Booking_Slot to this as well to fit my tables, also as my Bookings table has
auto-increment on the Booking_ID there is no need for that to be in the statement
*/
USE littlelemondb;
DELIMITER //
CREATE PROCEDURE AddBooking (
    IN New_Booking_Date DATE,
    IN New_Booking_Slot TIME,
    IN New_Table_Number INT,
    IN New_Customer_ID INT
)
    BEGIN
    INSERT INTO Bookings (Booking_Date, Booking_Slot, Table_Number, Customer_ID)
    VALUES (New_Booking_Date, New_Booking_Slot, New_Table_Number, New_Customer_ID);
    END //
DELIMITER ;