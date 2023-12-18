-- wild card characters are % and _
-- used to substitude one or more characters in a string

SELECT * FROM employees
WHERE first_name LIKE "s%"; --any first name that starts with "s"

SELECT * FROM employees
WHERE first_name LIKE "%r"; --any first name that ends with "r"


SELECT * FROM employees
WHERE first_name LIKE "_andy"; 

-- "%" is many random charachters
-- "_" is one random character