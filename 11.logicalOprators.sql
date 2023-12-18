
--AND

SELECT first_name, last_name FROM employees 
WHERE hire_date < "2023-1-05" AND job = 'cook';


--OR
SELECT first_name, last_name FROM employees 
WHERE job="cashier" OR job = 'cook';


--NOT
SELECT first_name, last_name FROM employees 
WHERE NOT job="cashier";


--BETWEEN
SELECT first_name, last_name FROM employees 
WHERE hire_date BETWEEN "2023-01-04" AND "2023-01-07";

--IN
SELECT first_name, last_name FROM employees 
WHERE job IN ("cook","chef"); 