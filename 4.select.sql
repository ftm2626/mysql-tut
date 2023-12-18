SELECT * FROM employees; --select EVERYTHING from table

SELECT first_name, last_name FROM employees; -- select first name and last name from TABLE

SELECT first_name, last_name FROM employees WHERE employee_id = 1; --specify where the data is

SELECT first_name, last_name FROM employees WHERE hire_date IS NULL; --for NULL we use "IS NULL" / "IS NOT NULL"

SELECT first_name, last_name FROM employees ORDER BY last_name ASC;
SELECT first_name, last_name FROM employees ORDER BY last_name DESC;
SELECT first_name, last_name FROM employees ORDER BY last_name DESC, first_name;