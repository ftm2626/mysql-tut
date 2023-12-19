-- a virtual table based on theresult-set of an sql statement
-- the fields in a view are fields from one or more real tables in the database
-- they're not real tables, but can be interacted with as if they were.

CREATE VIEW employee_attendance AS
SELECT first_name, last_name
FROM employees;





-- INDEX
-- INDEXs are used to find values within a specific column more quichly
-- mysql normally searches sequentially through a COLUMN
-- the longer the column, the more expensive the opration IS
-- UPDATE takes more time, SELECT takes less time

SHOW INDEXES FROM customers; -- show all the indexes

CREATE INDEX last_name_idx
ON customers(last_name);--create an index in a table

SELECT * FROM customers
WHERE last_name = "Puff"; --search a column with index, speed is up


CREATE INDEX last_name_first_name_idx
ON customers(last_name, first_name);-- MULTI COLUMN INDEX, order of col matters

SELECT * FROM customers
WHERE last_name = "Puff" AND last_name = "poppy"; --search multi column index, speed is up

ALTER TABLE customers
DROP INDEX last_name_idx; --delete an index