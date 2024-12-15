-- WRITE A QUERY TO FIND AVG MARKS IN EACH CITY IN ASCENDING ORDER

CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE table details(
id INT PRIMARY KEY,
name varchar(41),
marks int NOT NULL,
city varchar(12)
);

INSERT INTO details
(id,name,marks,city)
VALUES
(1,"ARJUN",67,"KOLKATA"),
(2,"BORA",79,"PUNE"),
(3,"CHANDAN",97,"KOLKATA"),
(4,"DANNY",71,"DELHI"),
(5,"ESHAAN",74,"HYDERABAD");

SELECT city,avg(marks)
  FROM details
 GROUP BY city
ORDER BY avg(marks) ;  -- ALWAYS GIVE OUTPUT IN ASCENDING ORDER
  
  
  SELECT city,avg(marks)
  FROM details
 GROUP BY city
ORDER BY avg(marks) DESC ; -- DESC  BADA SE CHOTA

SELECT city,avg(marks)
  FROM details
 GROUP BY city
ORDER BY CITY DESC ; -- DESC  BADA SE CHOTA


SELECT city,avg(marks)
  FROM details
 GROUP BY city
ORDER BY CITY  ; --   BY DFAULT GIVES ASCENDING ORDER