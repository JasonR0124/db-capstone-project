-- I did not know that our menu prices needed to be so high nobody would be able to afford them
-- Also MenuItems was not specified as a seperate table during setup 
-- My Joins start from the Bookings table due to their relations

USE littlelemondb;
Select 
	Customers.Customer_ID, Customers.Customer_Name, 
    Orders.Total_Cost, Orders.Order_ID, 
    Menu.Type, Menu.Cuisine, Menu.Name,
    Bookings.Booking_ID
FROM Bookings
INNER JOIN Customers ON Bookings.Customer_ID = Customers.Customer_ID
INNER JOIN Orders ON Bookings.Booking_ID = Orders.Booking_ID
INNER JOIN Menu ON Orders.Menu_ID = Menu.Menu_ID
WHERE Orders.Total_Cost >= 40
ORDER BY Orders.Total_Cost;