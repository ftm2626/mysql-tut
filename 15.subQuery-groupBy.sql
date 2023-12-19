--sub query
-- a query within another query
SELECT  first_name, 
        last_name, 
        hourly_pay,
        (SELECT AVG(hourly_pay) FROM employees) AS "avg_hourly_pay"
FROM employees; --shows the avg hourly pay of employees with employees info



--group by
--aggregate all rows by a specific column often used with aggregate functions ex. SUM()
SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date; --group by order date


SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date
HAVING order_date > '2022-01-30'; --group by order date WHERE order date is bigger than'2022-01-30'
-- when using GROUP BY, we can't use WHERE, instead use HAVING 


-- ROLLUP
-- extension of the GROUP BY clause
-- produces another row and shows the grand total

SELECT SUM(amount), order_date
FROM transactions
GROUP BY order_date WITH ROLLUP; --sum of all amounts