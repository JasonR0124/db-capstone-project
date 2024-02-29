-- I used Booking_ID instead of Customer_ID this is simply due to how I created my tables and relations

USE littlelemondb;
PREPARE GetOrderDetail FROM 
'SELECT Order_ID, Quantity, Total_Cost 
 FROM Orders 
 WHERE Booking_ID = ?';