-- JOINS IN SQL
-- JOINS IN SQL IS USED TO COMBINE ROWS FROM TWO OR MORE TABLES, BASED ON A RELATED COLUMN BETWEEN THEM.
 -- OR WE CAN ALSO SAY
 -- JOINS IS USED TO COMBINE TWO OR MULTIPLE TABLES DATA.
 
 -- TYPES OF JOINS IN SQL
   -- THERE ARE 2 TYPES OF JOINS IN SQL
    -- 1> INNER JOINS
    -- 2> OUTER JOINS
     
     -- NOW OUTER JOINS IS DIVIDED INTO THREE TYPES
      -- 1> LEFT JOIN/LEFT OUTER JOIN
      -- 2> RIGHT JOIN
      -- 3> FULL JOIN/FULL OUTER JOIN
      
      
   CREATE DATABASE IF NOT EXISTS unity;
    USE unity;
   
   CREATE table stdent(
   name VARCHAR(11),
   stdent_id INT PRIMARY KEY
   );
   
   INSERT INTO Stdent
   (name,stdent_id)
   VALUES
   ("RAM",101),
   ("SITA",102),
   ("LAXMAN",103),
   ("HANUMAN ",104),
   ("RAVAN",105);
   SELECT * FROM Stdent;

 CREATE table Courses(
   courses VARCHAR(11),
   stdent_id INT PRIMARY KEY
   );
   
   INSERT INTO Courses
   (courses,stdent_id)
   VALUES
   ("Hindi",101),
   ("Maths",103),
   ("Humanity",106),
   ("Geology",107);
   
   SELECT * FROM Courses;
   
   -- 1> INNER JOINS
   -- RETURNS RECORD THAT HAVE MATCHING VALUES IN BOTH TABLES.
   
   -- SYNTAX FOR INNER JOINS IN SQL
   -- SELECT column
   -- FROM table A
   -- INNER JOIN table B
   -- ON tableA.col-name = tableB.col-name;
   
   SELECT *
   FROM Stdent as S
   INNER JOIN Courses as C
   ON S.stdent_id = C.stdent_id;
   
   -- 2> OUTER JOINS SUB TYPES
      -- 2.1> LEFT JOIN/LEFT OUTER JOIN
      -- RETURNS ALL RECORDS FROM THE LEFT TABLE AND THE MATCHED RECORDS FROM THE RIGHT TABLE.
      
      -- SYNTAX FOR LEFT JOIN/LEFT OUTER JOIN
       -- SELECT column
   -- FROM table A
   -- LEFT JOIN table B
   -- ON tableA.col-name = tableB.col-name;
   
    SELECT *
   FROM Stdent as S
   LEFT JOIN Courses as C
   ON S.stdent_id = C.stdent_id;
   
          -- NOW, IN ADDITION WE HAVE 2 MORE JOINS IN SQL
   -- 1> LEFT EXCLUSIVE JOIN
   -- 2> RIGHT EXCLUSIVE JOIN
   
   -- 1> LEFT EXCLUSIVE JOIN(OMIT LEFT TABLE DATA).
   
   -- SYNTAX FOR LEFT EXCLUSIVE JOIN..
   
   SELECT *
   FROM Stdent as S
   LEFT JOIN Courses as C
   ON S.stdent_id = C.stdent_id
   WHERE  C.stdent_id IS NULL ;
   
   
         
   
   -- 2.2> RIGHT JOIN
   -- RETURNS ALL RECORDS FROM THE RIGHT TABLE, AND THE MATCHED RECORDS FROM THE LEFT TABLE.
   
   
    -- SYNTAX FOR RIGHT JOIN
	-- SELECT column
   -- FROM table A
   -- RIGHT JOIN table B
   -- ON tableA.col-name = tableB.col-name;
      
	SELECT *
   FROM Stdent as S
   RIGHT JOIN Courses as C
   ON S.stdent_id = C.stdent_id;
   
       -- NOW, IN ADDITION WE HAVE 2 MORE JOINS IN SQL
   -- 1> LEFT EXCLUSIVE JOIN
   -- 2> RIGHT EXCLUSIVE JOIN
   
   -- 1> RIGHT  EXCLUSIVE JOIN(OMIT RIGHT TABLE DATA).
   -- SYNTAX FOR RIGHT EXCLUSIVE JOIN..
    
   SELECT *
   FROM Stdent as S
   RIGHT JOIN Courses as C
   ON S.stdent_id = C.stdent_id
   WHERE  S.stdent_id IS NULL ;
   
   
   
   
   
   -- 2.3> FULL JOIN/FULL OUTER JOIN
   -- RETURNS ALL RECORDS WHEN THERE IS A MATCHED IN EITHER LEFT OR RIGHT TABLE.
   
   -- SYNTAX FOR FULL JOIN/FULL OUTER JOIN
   
   -- SYNTAX FOR LEFT JOIN
   -- UNION'
   -- SYNTAX FOR RIGHT JOIN
   
    -- SELECT column
   -- FROM table A
   -- LEFT JOIN table B
   -- ON tableA.col-name = tableB.col-name;
   -- UNION
    -- SYNTAX FOR RIGHT JOIN
	-- SELECT column
   -- FROM table A
   -- RIGHT JOIN table B
   -- ON tableA.col-name = tableB.col-name;
      
   
    SELECT *
   FROM Stdent as S
   LEFT JOIN Courses as C
   ON S.stdent_id = C.stdent_id
   UNION
   SELECT *
   FROM Stdent as S
   RIGHT JOIN Courses as C
   ON S.stdent_id = C.stdent_id
   
   

 