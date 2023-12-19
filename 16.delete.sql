-- ON DELETE SET NULL = when fk is deleted, replace fk with null
-- ON DELETE CASCADE = when fk is deleted, delete row


CREATE TABLE employees (
	emploee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hire_date DATE,
    ON DELETE SET NULL
); -- create a new table that sets the fk value with null


 ALTER TABLE transactions
 ADD CONSTRAINT fk_customer_id
 FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
 ON DELETE SET NULL ; --add to existing table