CREATE TABLE employees (
	emploee_id INT,
    first_name VARCHAR(50), --max length 50
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2), --max length 5, percision 2
    hire_date DATE,
); -- create a new table


SELECT * FROM employees; --select a table

RENAME TABLE employees TO workers;--rename a table

DROP TABLE employees; --deletes table

--change table
ALTER TABLE employees 
ADD phone_number VARCHAR(50); --add column

ALTER TABLE employees 
RENAME COLUMN phone_number TO email;--rename column

ALTER TABLE employees 
MODIFY COLUMN email VARCHAR(100); --change column type

ALTER TABLE employees 
MODIFY email VARCHAR(100)
AFTER last_name;-- change the position of the column, email now is after last_name

ALTER TABLE employees 
MODIFY email VARCHAR(100)
FIRST;-- change the position of the column, email now is the first column

ALTER TABLE employees 
DROP COLUMN email; --deletes a column