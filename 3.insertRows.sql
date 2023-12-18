INSERT INTO employees
VALUES(1,"Eugene","Krabs",25.50,"2023-01-02"); --add row to table

INSERT INTO employees
VALUES  (2,"Squidward","Tenticals",3.50,"2023-01-03"), 
        (3,"Spongebob","Squarepants",8.50,CURRENT_DATE()), -- current date
        (4,"Patric","Star",2.50,NOW()), -- current time and date
        (5,"Sandy","Cheeks",5.50,CURRENT_DATE()-1); --yesterday
        --add multiple row to table

CURRENT_TIME() -- current time