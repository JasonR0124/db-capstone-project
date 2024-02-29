USE littlelemondb;
CREATE VIEW OrdersView AS
SELECT Order_ID, Quantity, Total_Cost
FROM Orders
WHERE Quantity > 2;