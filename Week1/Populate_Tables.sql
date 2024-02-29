-- Populate the Customers Table

INSERT INTO Customers (Customer_Name, Contact_Number, Email) VALUES
("John Doe", "555-555-1234", "JohnDoe@email.com"),
("John Smith", "555-555-5678", "JohnSmith@email.com"),
("Jane Doe", "555-555-4321", "JaneDoe@email.com"),
("Jane Smith", "555-555-8765", "JaneSmith@email.com"),
("Brian Kennedy", "555-555-9876", "BKennedy@email.com"),
("Stacy Fox", "555-555-0123", "Sfox@email.com"),
("Adam Goldberg", "555-555-0987", "AdamGold@email.com"),
("Shannon Reid", "555-555-0561", "ShannonReid@email.com"),
("Doug Wight", "555-555-0111", "DougWight@email.com"),
("Nala Albertson", "555-555-0222", "NAlbertson@email.com");


-- Populate the Staff_Information Table

INSERT INTO Staff_Information (Name, Role, Salary) VALUES
("Cloud Strife", "Manager", 77777),
("Tifa Lockhart", "Waitress", 35000),
("Aerith Gainsburough", "Waitress", 35000),
("Barret Wallace", "Head Chef", 50000),
("Yuffie Kisaragi", "Sous Chef", 40000);


-- Populate the Menu Table

INSERT INTO Menu (Name, Type, Cuisine, Price) VALUES
("Olives", "Starters", "Italian", 2.50), 
("Flatbread","Starters", "Turkish", 3.50),
("Minestrone", "Starters", "Italian", 4.00), 
("Tomato Bread","Starters", "Greek", 3.00), 
("Falafel", "Starters", "Greek", 3.50), 
("Hummus", "Starters", "Turkish", 5.00), 
("Greek Salad", "Main Courses", "Greek", 10.00), 
("Bean soup", "Main Courses", "Turkish", 12.00), 
("Pizza", "Main Courses", "Italian", 15.00), 
("Greek Yogurt", "Desserts", "Greek", 7.00), 
("Ice Cream", "Desserts", "Italian", 6.00),
("Cheesecake", "Desserts", "Turkish", 4.00), 
("Athens White Wine", "Drinks", "Greek", 8.00), 
("Corfu Red Wine", "Drinks", "Italian", 10.00), 
("Turkish Coffee", "Drinks", "Turkish", 5.00), 
("Kabasa", "Main Courses", "Turkish", 13.00);


-- Populate the Bookings Table

INSERT INTO Bookings (Booking_Date, Booking_Slot, Table_Number, Customer_ID) VALUES
("2024-02-28", "18:00:00", 1, 1),
("2024-02-28", "18:00:00", 2, 2),
("2024-02-28", "19:00:00", 1, 3),
("2024-02-28", "19:00:00", 2, 4),
("2024-02-28", "19:00:00", 3, 5),
("2024-02-29", "18:00:00", 1, 6),
("2024-02-29", "18:00:00", 2, 7),
("2024-02-29", "18:00:00", 3, 8),
("2024-02-29", "19:00:00", 1, 9),
("2024-02-29", "19:00:00", 2, 10);


-- Populate the Orders Table

INSERT INTO Orders (Order_Date, Menu_ID, Quantity, Booking_ID) VALUES
("2024-02-28", 13, 4, 1),
("2024-02-28", 3, 2, 1),
("2024-02-28", 14, 2, 2),
("2024-02-28", 5, 1, 2),
("2024-02-28", 7, 2, 1),
("2024-02-28", 9, 1, 1),
("2024-02-28", 16, 2, 2),
("2024-02-28", 10, 1, 2),
("2024-02-28", 15, 2, 3),
("2024-02-28", 1, 1, 3),
("2024-02-28", 13, 4, 4),
("2024-02-28", 2, 2, 4),
("2024-02-28", 14, 3, 5),
("2024-02-28", 6, 2, 5),
("2024-02-28", 9, 1, 3),
("2024-02-28", 8, 2, 4),
("2024-02-28", 16, 2, 4),
("2024-02-28", 7, 1, 5),
("2024-02-28", 8, 1, 5),
("2024-02-28", 16, 1, 5),
("2024-02-28", 11, 1, 3),
("2024-02-28", 12, 2, 5),
("2024-02-29", 13, 6, 6),
("2024-02-29", 1, 1, 6),
("2024-02-29", 4, 2, 6),
("2024-02-29", 14, 2, 7),
("2024-02-29", 15, 1, 7),
("2024-02-29", 3, 2, 7),
("2024-02-29", 13, 2, 8),
("2024-02-29", 5, 1, 8),
("2024-02-29", 9, 1, 6),
("2024-02-29", 7, 2, 6),
("2024-02-29", 16, 2, 6),
("2024-02-29", 7, 2, 7),
("2024-02-29", 8, 1, 7),
("2024-02-29", 9, 1, 8),
("2024-02-29", 11, 2, 6),
("2024-02-29", 12, 4, 6),
("2024-02-29", 12, 1, 8),
("2024-02-29", 13, 2, 9),
("2024-02-29", 1, 1, 9),
("2024-02-29", 14, 4, 10),
("2024-02-29", 2, 2, 10),
("2024-02-29", 3, 2, 10),
("2024-02-29", 16, 2, 9),
("2024-02-29", 9, 1, 10),
("2024-02-29", 7, 2, 10),
("2024-02-29", 12, 1, 9);


-- Populate the Order_Delivery_Status Table

INSERT INTO Order_Delivery_Status (Delivery_Date, Status, Staff_ID, Order_ID) VALUES
("2024-02-28", "Delivered", 2, 1), 
("2024-02-28", "Delivered", 2, 3),
("2024-02-28", "Delivered", 2, 9), 
("2024-02-28", "Delivered", 2, 11),
("2024-02-28", "Delivered", 2, 13), 
("2024-02-28", "Delivered", 2, 2),
("2024-02-28", "Delivered", 2, 4), 
("2024-02-28", "Preparing", 5, 10),
("2024-02-28", "Preparing", 5, 12), 
("2024-02-28", "Preparing", 5, 14),
("2024-02-28", "Delivered", 2, 5), 
("2024-02-28", "Delivered", 2, 6),
("2024-02-28", "Delivered", 2, 7), 
("2024-02-28", "Preparing", 4, 15),
("2024-02-28", "Waiting", 4, 16), 
("2024-02-28", "Waiting", 4, 17),
("2024-02-28", "Preparing", 4, 18), 
("2024-02-28", "Preparing", 4, 19),
("2024-02-28", "Preparing", 4, 20), 
("2024-02-28", "Delivered", 1, 8),
("2024-02-28", "Waiting", 5, 21), 
("2024-02-28", "Waiting", 5, 22),
("2024-02-29", "Delivered", 3, 23),
("2024-02-29", "Delivered", 3, 26),
("2024-02-29", "Delivered", 3, 27),
("2024-02-29", "Delivered", 3, 29),
("2024-02-29", "Delivered", 3, 40),
("2024-02-29", "Delivered", 3, 42),
("2024-02-29", "Delivered", 3, 24),
("2024-02-29", "Delivered", 5, 25),
("2024-02-29", "Preparing", 5, 28),
("2024-02-29", "Preparing", 5, 30),
("2024-02-29", "Delivered", 3, 41),
("2024-02-29", "Preparing", 5, 43),
("2024-02-29", "Preparing", 5, 44),
("2024-02-29", "Delivered", 3, 31),
("2024-02-29", "Delivered", 3, 32),
("2024-02-29", "Delivered", 3, 33),
("2024-02-29", "Preparing", 4, 34),
("2024-02-29", "Preparing", 4, 35),
("2024-02-29", "Waiting", 4, 36),
("2024-02-29", "Delivered", 3, 45),
("2024-02-29", "Preparing", 4, 46),
("2024-02-29", "Preparing", 4, 47),
("2024-02-29", "Delivered", 1, 37),
("2024-02-29", "Delivered", 1, 38),
("2024-02-29", "Waiting", 5, 39),
("2024-02-29", "Delivered", 1, 48);

