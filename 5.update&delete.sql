UPDATE employees 
SET hourly_pay = 10.25; --updates ALL the hourly_pay column rows


UPDATE employees 
SET hourly_pay = 10.25,
	hire_date = "2023-01-07"
WHERE employee_id = 6; --update fields of table



DELETE FROM employees; -- deletes ALL the rows of the table

DELETE FROM employees WHERE employee_id = 6; --deletes spicific rows