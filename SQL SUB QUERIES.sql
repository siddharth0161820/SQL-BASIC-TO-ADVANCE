CREATE database IF NOT EXISTS Shiksha;
USE shiksha;

CREATE table Studentses(
rollno INT PRIMARY KEY,
name VARCHAR(11),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(11)
);

INSERT INTO Studentses
(rollno, name, marks,grade,city)
VALUES
(101,"Amar",78,"C","Pune"),
(102,"Bhandari",93,"A","Mumbai"),
(103,"Chundri",85,"B","Mumbai"),
(104,"Dev",96,"A","Delhi"),
(105,"Eknath",92,"F","Delhi"),
(106,"FikrKyu",82,"B","Delhi");

SELECT * from Studentses;

-- 1> GET AVERAGE OF MARKS OF STUDENTS
SELECT Avg(marks)
FROM Studentses;

-- 2> GET THE NAME OF STUDENTS WITH MARKS>AVG
SELECT name, marks
FROM Studentses
WHERE marks> 87.6667;

-- now if suppose we make changes to the table than the avg marks of the students changes
-- and it affect the result so for that we use SQL SUB QUERIES FOR CHANGES(DYNAMIC) CAN BE EASILY TAKEN CARE WITH GOOD RESULT AUTOMATICALLY
-- SOLVED USING SQL SUB QUERIES
SELECT name, marks
FROM Studentses
WHERE marks>(SELECT Avg(marks) FROM Studentses);

-- 3> FIND THE EVEN ROLL NUMBERS
SELECT rollno 
FROM Studentses
WHERE rollno % 2 =0;

-- 4> FIND THE NAMES OF STUDENTS WITH EVEN ROLLNO.
SELECT name,rollno
FROM Studentses
WHERE rollno IN (102,104,106)   -- IN OPERATOR matches any value in the list


-- again its not a dynamic(changable) proces if any modification in table occurs so in that scenaro we use sql sub queries.
SELECT name,rollno
FROM Studentses
WHERE rollno IN (
     SELECT rollno 
     FROM Studentses
     WHERE rollno % 2 =0);   -- IN OPERATOR matches any value in the list


