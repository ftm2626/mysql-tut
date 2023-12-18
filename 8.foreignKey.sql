-- FOREIGN KEY is a primary key of one table that can be found in another table

CREATE TABLE employees (
    person_id INT PRIMARY KEY AUTO_INCREMENT, 
    full_name VARCHAR(50) NOT NULL,
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(customer_id), -- FOREIGN KEY(current_table_col) REFERENCES foreign_table(foreign_col)
); 

ALTER TABLE employees
ADD CONSTRAINT name_of_the_key
FOREIGN KEY(customer_id) REFERENCES customers(customer_id); --add foreign key to existing table

ALTER TABLE employees
DROP FOREIGN KEY employees_ibfk_1; --delete foreign key