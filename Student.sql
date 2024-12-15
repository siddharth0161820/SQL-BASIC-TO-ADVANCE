
CREATE DATABASE IF NOT EXISTS college; -- create a database

USE college;            -- APPLY USE "database;" query to use that particular database

-- create a table name student having some fields to it
CREATE TABLE IF NOT EXISTS student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);

-- insert data as per the fields in the table student
INSERT INTO student VALUES(1,"SIDDHARTH",27); 
INSERT INTO student VALUES(2,"KUMAR",26);

SELECT * FROM student; -- select all record drom table sudent and display it over the console windows