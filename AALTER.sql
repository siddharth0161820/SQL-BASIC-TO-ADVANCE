CREATE DATABASE IF NOT EXISTS data;
USE data;

CREATE table studentsss(
rollno INT PRIMARY KEY,
name VARCHAR(21),
marks INT NOT NULL,
grade VARCHAR(3),
city VARCHAR(21)
);

INSERT INTO studentsss
(rollno, name, marks, grade, city)
VALUES
(101,"AAM",78,"C","Pune"),
(102,"BAAM",93,"A","Mumbai"),
(103,"CAM",85,"B","Mumbai"),
(104,"DAM",96,"A","Delhi"),
(105,"EAM",12,"F","Delhi"),
(106,"AAM",82,"B","Delhi");


   -- understanding Alter queries
   -- to make any changes into the columns of the table we use Alter command
   -- Alter query usage
   
   -- 1> ADD COLUMN
-- ALTER TABLE table-name
-- ADD COLUMN column-name datatype constraints;

ALTER TABLE studentsss
ADD COLUMN age INT NOT NULL  DEFAULT 21;

    -- 2> MODIFY COLUMN(MODIFY DATATYPE/CONSTRAINT)
       --  ALTER TABLE table-name
       -- MODIFY Col-name, new-datatype new- constraint;
       
     ALTER TABLE studentsss
    Modify  COLUMN age VARCHAR(2);
    
    INSERT INTO studentsss
     (rollno, name, marks, grade, city)
      VALUES
     (108,"AAQQAM",73,"C","Pune",211);
     
     
        -- 3> CHANGE COLUMN(RENAME)
                -- ALTER TABLE table-name
                -- CHANGE COLUMN old-name new-name new-datatype new-constraints
                
                 ALTER TABLE studentsss
                 CHANGE age stu_age INT;
                 
                 
                  INSERT INTO studentsss
                  (rollno, name, marks,stu_age)
                    VALUES
                 (108,"AAQQAM",73,"C","Pune",211);
                

    -- 4> DROP COLUM/DELETE COLUMN
    -- ALTER TABLE table-name
-- DROP COLUMN column-name ;

      ALTER TABLE studentsss
      DROP COLUMN stu_age ;

      -- 5> RENAME TABLE
       -- ALTER TABLE table-name
-- RENAME TO new-table-name ;
   
         ALTER table vidyārth
         RENAME  TO vidyārthi;
    
    
    --   UNDERSTANDING TRUNCATE  QUERY RELATED TO THE TABLE
       --  TRUNCATE query de lete tables entire data
        TRUNCATE table vidyārthi;

        -- after applying truncate query we can again insert new data or sam existing data to that respective tble
        
                
INSERT INTO vidyārthi
(rollno, name, marks, grade, city)
VALUES
(101,"AAM",78,"C","Pune"),
(102,"BAAM",93,"A","Mumbai"),
(103,"CAM",85,"B","Mumbai"),
(104,"DAM",96,"A","Delhi"),
(105,"EAM",12,"F","Delhi"),
(106,"AAM",82,"B","Delhi");
      
SELECT * FROM vidyārthi;