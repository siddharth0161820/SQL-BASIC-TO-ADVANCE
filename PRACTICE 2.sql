CREATE DATABASE IF NOT EXISTS colleges;
USE colleges;
CREATE TABLE students(
roLlno INT PRIMARY KEY,
name VARCHAR(51),
marks INT NOT NULL,
grade VARCHAR(2),
city VARCHAR(21)
);

INSERT INTO students
(rollno,name,marks,grade,city)
VALUES
(1, "SIDDHARTH", 770, "B", "DUNIYA"),
(2, "SIDD", 700, "B", "JAGAH"),
(3, "SID", 630, "C", "SAMRAJYA"),
(4, "SI", 560, "C", "HAQEEQAT"),
(5, "SKUMAR", 490, "D", "HALAAT MAJBOOT");

SELECT name,marks FROM students;
SELECT name,marks,city FROM students;

SELECT * FROM students;