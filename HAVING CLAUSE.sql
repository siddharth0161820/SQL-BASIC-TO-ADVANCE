CREATE DATABASE IF NOT EXISTS havingg ;
USE havingg;

CREATE table detailss(
id INT PRIMARY KEY,
name varchar(41),
marks int NOT NULL,
city varchar(12)
);

INSERT INTO detailss
(id,name,marks,city)
VALUES
(1,"ARJUN",89,"KOLKATA"),
(2,"BORA",76,"PUNE"),
(3,"CHANDAN",95,"KOLKATA"),
(4,"DANNY",79,"DELHI"),
(5,"ESHAAN",44,"HYDERABAD");

SELECT * FROM detailss;

-- UNDERSTANDING THE USE OF HAVING CLAUSEEE
SELECT city,count(name)  -- count no of student in a particular city by name of city occurrence
FROM detailss
GROUP BY city;

SELECT city,count(id)  -- count no of student in a particular city by id (id haivng same city name )
FROM detailss
GROUP BY city;

-- applying having clause
SELECT city,count(id)  
FROM detailss
GROUP BY city
HAVING MAX(marks)>70;

-- UNDERSTANDING THE GENERAL ORDER/SEQUENCE OF WRITING CLAUSES...
SELECT city
FROM detailss
WHERE marks>60
GROUP BY city
HAVING MAX(marks)<=79
ORDER BY city DESC;