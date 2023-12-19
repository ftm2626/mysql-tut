-- is prepared sql code that you can save
-- great if there's a query that you write often
-- reduces network traffic
-- increases performance
-- secure, admin can grant permission to use
-- increases memory usage of every connection

DELIMITER $$
CREATE PROCEDURE get_customer(IN "id" INT)
BEGIN
    SELECT * FROM customers
    WHERE customer_id = "id";
END $$
DELIMITER ;-- create a procedure


CALL get_customer(3); --call a procedure

DROP PROCEDURE get_customer; --delete procedure