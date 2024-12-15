CREATE DATABASE IF NOT EXISTS Education;
USE Education;


CREATE table  studentes(
rollno INT PRIMARY KEY,
name VARCHAR(21),
marks INT NOT NULL,
grade VARCHAR(3),
city VARCHAR(21)
);

INSERT INTO studentes
(rollno, name, marks, grade, city)
VALUES
(101,"AAM",78,"C","Pune"),
(102,"BAAM",93,"A","Mumbai"),
(103,"CAM",85,"B","Mumbai"),
(104,"DAM",96,"A","Delhi"),
(105,"EAM",12,"F","Delhi"),
(106,"AAMe",82,"B","Delhi");

  -- a> change the name of column "name" to "full_name".
  --  CHANGE COLUMN(RENAME)
                -- ALTER TABLE table-name
                -- CHANGE COLUMN old-name new-name new-datatype new-constraints
                
                 ALTER TABLE studentes
                 CHANGE name full_name  VARCHAR(21);
                 
  -- B> DELETE ALL THE STUDENTS WHO SCORED LESS THAN 80
       DELETE FROM studentes
       WHERE marks<80;
       
 -- c> delete the column for grades
 
 -- DROP COLUM/DELETE COLUMN
    -- ALTER TABLE table-name
-- DROP COLUMN column-name ;

      ALTER TABLE studentes
      DROP COLUMN grade ;
                 
SELECT * FROM studentes;
-- SET SQL_SAFE_UPDATES = 0;