CREATE TABLE employees (
	emploee_id INT UNIQUE,
    first_name VARCHAR(50) NOT NULL, --max length 50
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2) DEFAULT 0.00, --max length 5, percision 2
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00) --conditions of table , name of condition is chk_hourly_pay
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
ADD CONSTRAINT
UNIQUE(employee_id);--add unique to a column

ALTER TABLE employees 
MODIFY COLUMN email VARCHAR(100); --change column type

ALTER TABLE employees 
MODIFY email VARCHAR(100) NOT NULL; --add not null to a column

ALTER TABLE employees 
MODIFY hourly_pay SET DEFAULT 0.00; --set a default value for column

ALTER TABLE employees 
MODIFY email VARCHAR(100)
AFTER last_name;-- change the position of the column, email now is after last_name

ALTER TABLE employees 
MODIFY email VARCHAR(100)
FIRST;-- change the position of the column, email now is the first column

ALTER TABLE employees 
DROP COLUMN email; --deletes a column


ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00); -- add condition to an existing table 


ALTER TABLE employees
DROP CHECK chk_hourly_pay; --delete condition from table