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


-- SELF JOIN
-- join another copy of a table to itself
-- used to compare rows of the same TABLE
-- helps to display a heirarchy of data

SELECT  a.first_name,a.last_name ,
		CONCAT(b.first_name," " ,b.last_name) as "refered_by"
FROM customers AS a
INNER JOIN customers AS b
ON a.referral_id = b.customer_id;