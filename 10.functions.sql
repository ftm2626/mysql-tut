--COUNT
SELECT COUNT(first_name) FROM employees; --how many rows are in the column amount

SELECT COUNT(first_name) AS "name" FROM employees; --show the result column as "name"

--MAX/ MIN/ AVG/ SUM
SELECT MAX(first_name) FROM employees; --maximum value of column

--CONCAT
SELECT CONCAT(first_name," ",last_name) AS full_name FROM employees;