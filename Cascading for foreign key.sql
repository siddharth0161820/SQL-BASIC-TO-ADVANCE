CREATE DATABASE IF NOT EXISTS  academia;
USE academia;

-- creating table 1
CREATE TABLE departmente(
id INT PRIMARY KEY,
name VARCHAR(51)
);

INSERT INTO departmente
VALUES
(101,"HINDI"),
(102,"ENGLISH");

SELECT * FROM departmente;


-- creating table 2
CREATE TABLE teacherr(
id INT PRIMARY KEY,
name VARCHAR(51),
department_id INT,
FOREIGN KEY (department_id) REFERENCES departmente(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacherr
VALUES
(101,"kumar",101),
(102,"krkrk",102);

SELECT * FROM teacherr;
DROP table teacherr;

 -- appply cascade update to table (departmente) having foreign key will make change to table having foreign key(teacherr)
 
 UPDATE departmente
 SET id =103
 WHERE id =102;
 
 UPDATE departmente
 SET id =112112
 WHERE id =101;
 
 SELECT * FROM departmente;
 SELECT * FROM teacherr;

 