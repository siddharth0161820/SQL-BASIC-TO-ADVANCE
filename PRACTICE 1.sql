CREATE DATABASE IF NOT EXISTS REFLECTGROUP;   -- CREATE A DATABASE OF NAME REFLECTGROUP
SHOW DATABASES;        -- DISPLAY DATABASE
 
 
 -- CREATE A TABLE NAME RURPOSE and define datatype of fields to it
CREATE TABLE PURPOSE(
id INT PRIMARY KEY,
name VARCHAR(51),
salary int
);

SELECT * FROM PURPOSE;     -- display all data of table over console

INSERT INTO PURPOSE  -- insert data as per the fields to table name purpose
(id,name,salary)
VALUES
(1,"Sidd",2005),
(2,"adam",25000),
(3,"bob",30000),
(4,"casey",40000);


INSERT INTO PURPOSE VALUES (5,"SAMMY",20050);  -- insert data as per the fields to table name purpose


SELECT * FROM PURPOSE;
