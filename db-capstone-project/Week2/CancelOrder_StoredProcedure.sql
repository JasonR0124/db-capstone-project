Use littlelemondb;
DELIMITER //
CREATE PROCEDURE CancelOrder (IN Order_Num INT)
	BEGIN
    DELETE FROM Orders WHERE Order_ID = Order_Num;
	END //
DELIMITER ;
