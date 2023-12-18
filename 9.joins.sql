-- a join is a clause that is used to combine rows from two or more tables. based on a related column between them suck as a FOREIGN KEY

-- INNER JOIN
SELECT * FROM transactions INNER JOIN  customers
ON transactions.customer_id = customers.customer_id; 
-- select EVERYTHING LEFTTABLE INNER JOIN RIGHTTABLE
-- ON LEFTTABLE.COL = RIGHTTABLE.COL

--LEFT JOIN
SELECT * FROM transactions LEFT JOIN  customers
ON transactions.customer_id = customers.customer_id; 
--display EVERYTHING from the left table

--RIGHT JOIN

SELECT * FROM transactions RIGHT JOIN  customers
ON transactions.customer_id = customers.customer_id; 
--display EVERYTHING from the right table