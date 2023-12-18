--commands below will create a safe point for all the data\

SET AUTOCOMMIT = OFF;
COMMIT;



-- this will return the data to the last check point

ROLLBACK;