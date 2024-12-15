CREATE database IF NOT EXISTS Shikshaa;
USE shikshaa;

CREATE table Studentsess(
rollno INT PRIMARY KEY,
name VARCHAR(11),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(11)
);

INSERT INTO Studentsess
(rollno, name, marks,grade,city)
VALUES
(101,"Amar",78,"C","Pune"),
(102,"Bhandari",93,"A","Mumbai"),
(103,"Chundri",85,"B","Mumbai"),
(104,"Dev",96,"A","Delhi"),
(105,"Eknath",92,"F","Delhi"),
(106,"FikrKyu",82,"B","Delhi");

SELECT * from Studentsess;

-- again its not a dynamic(changable) proces if any modification in table occurs so in that scenaro we use sql sub queries.
-- 3> FIND THE EVEN ROLL NUMBERS
-- 4> FIND THE NAMES OF STUDENTS WITH EVEN ROLLNO.
-- solution using SQL SUB QUERIES
SELECT name,rollno
FROM Studentsess
WHERE rollno IN (
     SELECT rollno 
     FROM Studentsess
     WHERE rollno % 2 =0);   -- IN OPERATOR matches any value in the list
     
     -- SQL SUB QUEIES WITH FROM
     -- FIND THE MAX MARKS FROM THE STUDENTS OF DELHI
     -- 1> GET THE STUDENTS OF DELHI 
     -- 2> FIND THEIR MAX MARKS USING THE SUBLIST IN STEP 1
     
     
      -- 1> GET THE STUDENTS OF DELHI 
     SELECT *
     FROM Studentsess
     WHERE city="Delhi";
     
     
      -- 2> FIND THEIR MAX MARKS USING THE SUBLIST IN STEP 1
      SELECT MAX(marks)
      FROM (SELECT * FROM Studentsess WHERE city="Mumbai") AS temp      -- temp is temporary
     
	-- OR 
    SELECT MAX(marks)
    FROM Studentsess
    WHERE city = "Mumbai";
    
       -- sql subqueries with select
       SELECT(SELECT MAX(marks) FROM Studentsess),name
       FROM Studentsess;

        -- MySQL  VIEWS
        -- A view is a virtual table based on the result set of an sql statement
        CREATE VIEW view1 AS
        SELECT rollno, name, marks FROM Studentsess
        
        SELECT * FROM view1
        WHERE marks>90;
        
        DROP VIEW view1;