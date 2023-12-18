CREATE TABLE employees (
    --person_id INT PRIMARY KEY, --primary is unique and not null, any table can only have one primary column
    person_id INT PRIMARY KEY AUTO_INCREMENT, --auto increment will automatically add one when a new row is created, it can only be used on columns that have a key, default starts with 1
	emploee_id INT UNIQUE,
    full_name VARCHAR(50) NOT NULL, --max length 50
    hourly_pay DECIMAL(5, 2) DEFAULT 0.00, --max length 5, percision 2
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00) --conditions of table , name of condition is chk_hourly_pay
); 

--UNIQUE
ALTER TABLE employees 
ADD CONSTRAINT
UNIQUE(employee_id);--add unique to a column

--NOT NULL
ALTER TABLE employees 
MODIFY email VARCHAR(100) NOT NULL; --add not null to a column

--DEFAULT
ALTER TABLE employees 
MODIFY hourly_pay SET DEFAULT 0.00; --set a default value for column

--CHECK
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00); -- add condition to an existing table 

ALTER TABLE employees
DROP CHECK chk_hourly_pay; --delete condition from table

--PRIMARY
ALTER TABLE employees
ADD CONSTRAINT PRIMARY KEY(person_id); --adds primary key to an existing table


--AUTO_INCREMENT
ALTER TABLE employees
AUTO_INCREMENT = 1000; --auto increment starts at 1000