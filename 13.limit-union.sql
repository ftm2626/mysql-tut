-- limit is for pagination

SELECT * FROM customers
LIMIT 3;

SELECT * FROM customers
LIMIT 3, 1; --first number is offset, second is limit.


-- UNION combines the results of two or more select statements

SELECT * FROM customers
UNION
SELECT * FROM transactions;
--does not work with diffrent numbers of columns