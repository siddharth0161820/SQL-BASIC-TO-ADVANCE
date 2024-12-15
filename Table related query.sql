CREATE DATABASE IF NOT EXISTS record;
USE record;

CREATE table report(
id INT PRIMARY KEY,
name varchar(41),
marks int NOT NULL,
grade varchar(2),
city varchar(12)
);



INSERT INTO report
(id,name,marks,grade,city)
VALUES
(1,"ARJUN",67,"D","KOLKATA"),
(2,"BORA",76,"C","PUNE"),
(3,"CHANDAN",95,"A","KOLKATA"),
(4,"DANNY",79,"C","DELHI"),
(5,"ESHAAN",44,"E","HYDERABAD");



-- Looking upto the operations we can perform onto the table
-- 1> Update
UPDATE report
SET grade ="O"  -- O= Outstanding
WHERE grade = "A";
SET SQL_SAFE_UPDATES= 0;  -- TURN OFF SAFEMODE IN MYSQL

UPDATE report
SET marks =77  -- O= Outstanding
WHERE id = 5;

UPDATE report
SET grade = "B+"
WHERE marks>70;

UPDATE report
SET name  = "CHORRAAA"
WHERE ID = 2;

UPDATE report
SET GRADE  = "OO"
WHERE marks BETWEEN  79 AND 95;

 -- UPDATE MARKS BY +1;
 UPDATE report
SET marks = marks+1;

  -- UPDATE MARKS BY -1;
  UPDATE report
SET marks = marks-2;

 -- UNDERSTANDING DELETE OPERATIONS APPLIED INTO THE TABLE
 -- 2>DELETE
 DELETE FROM report
 WHERE marks=71;
 
 
SELECT * FROM report;