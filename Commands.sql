CREATE DATABASE IF NOT EXISTS commands;

USE commands;

CREATE TABLE temp3(
id INT PRIMARY KEY,
age INT CHECK(age>=18),
gender VARCHAR(1),
experience INT NOT NULL,
salary INT 
);

INSERT INTO temp3
(id,age,gender,experience,salary)
VALUES
(1,18,"M",4,2100);

INSERT INTO temp3 VALUES (2,38,"F",12,2100);
INSERT INTO temp3 VALUES(3,32,"F",4,21000);
INSERT INTO temp3 VALUES(4,39,"M",4,2100);

SELECT id,age FROM temp3;  -- applying SELECT COMMAND
SELECT id,age,gender FROM temp3;
SELECT * FROM temp3;
SELECT gender FROM temp3;
SELECT distinct gender FROM temp3; -- DISTINCT RESTRICT REPEATED VALUES

-- understnding Where clause in the select command
 -- SELECT col1, col2 FROM table name
 -- Where conditions;
 
 SELECT * FROM temp3 Where salary > 2100;   
 
  SELECT *
  FROM temp3 
  Where salary > 2100;   
  
  SELECT *
  FROM TEMP3
  Where gender= "M";
  
  
  SELECT *
  FROM TEMP3
  Where gender= "M" AND salary<21000;  -- joining/cluubing of two conditions
  
  -- UNDERSTANDING OPERATORS IN   Where clause
  -- Arithmetic Operators   -----> +, -, *, /, %(modulus gives remainder).
   SELECT *
  FROM TEMP3
  Where id+7 =10;
  
 SELECT *
  FROM TEMP3
  Where gender != "M";
  

-- understanding logical operators in details
   -- 1>AND &(to check for the both conditions to be true)
   SELECT *
   FROM temp3 Where
   gender = "M" AND age >35;
   
   
   -- OR    (to check for one of the conditions to be true)   
    SELECT *
   FROM temp3 Where
   gender = "F" OR age >41 OR salary >10000000 ;
   
-- BETWEEN  (selects for a given range)
SELECT *
   FROM temp3 Where
   id BETWEEN 3 AND 4 ;
   
   -- IN(matches any value in thelist).
   
   SELECT *
   FROM temp3 Where
  gender IN ("T","REREE");
  
  
  
  
  -- NOT(TO NEGLECT THE GIVEN CONDITIONS)
  SELECT * 
  FROM temp3 where 
  age NOT IN (46,32);
  
  -- LIMIT CLAUSE---> sets an upper limit on number of (tuples)rows to be returned
  SELECT *
  FROM temp3 
  LIMIT 3;
  
  SELECT id,age,experience
  FROM temp3 
  LIMIT 3;
  
  
    SELECT *
  FROM temp3 
  Where  gender ="F"
  LIMIT 2;
  
  -- ORDER BY CLAUSE     --------> To sort in ascending(ASC) or descending order (DESC).
  SELECT *
  FROM temp3
  ORDER BY salary desc;
  
   SELECT *
  FROM temp3
  ORDER BY salary asc;
  
  
   SELECT *
  FROM temp3
  Where gender = "F"
  ORDER BY salary desc;
  
     SELECT *
  FROM temp3
  Where gender = "F"
  ORDER BY salary asc;
  
  
   SELECT *
  FROM temp3
  ORDER BY id desc
  LIMIT 3;
  
  
  --  UNDERSTANDING FUNCTIONS IN SQL
  -- 1> Aggregate functions  ----------->Aggregate functions peform a calculations on a set of values, and return a single value.
  --   AGGREGATE FUNCTIONS ARE --------------> COUNT(), MAX(), MIN(), SUM(),  AVG()
  
  -- 1> MAX ()
  SELECT MAX(ID) 
  FROM temp3;
  
  
  -- 2> MIN ()
  SELECT MIN(ID) 
  FROM temp3;
   
   -- 3> AVG ()
  SELECT AVG(SALARY) 
  FROM temp3;
  
  
   -- 4> COUNT ()
  SELECT COUNT(GENDER) 
  FROM temp3;
  
  
  -- 5> SUM ()
  SELECT SUM(SALARY) 
  FROM temp3;
   
   
   
   -- UNDERSTANDING GROUP BY CLAUSE
   SELECT salary,id, count(gender)
   FROM temp3
   GROUP BY  salary,id;
   
   
   SELECT salary, count(gender)
   FROM temp3
   GROUP BY  salary;
   
   SELECT salary, max(gender)
   FROM temp3
   GROUP BY  salary;