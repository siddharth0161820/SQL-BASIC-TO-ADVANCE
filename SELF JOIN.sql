 CREATE DATABASE IF NOT EXISTS together;
 USE together;
 
 CREATE table Employee(
 id INT PRIMARY KEY,
 name VARCHAR(11),
 manager_id INT 
 );
 
 INSERT INTO Employee
 (id,name,manager_id)
 VALUES
 (101,"Amar",103),
 (102,"Shambhu",104),
 (103,"Shiv",NULL),
 (104,"Nilkanth",103);
 
 SELECT * FROM Employee;
 
 -- Applying self join here 
 -- self join ---> It is a regular join but the table is joined with itself.
 -- simply we say in self join we join same table again .
   SELECT * 
 FROM Employee as a
 JOIN Employee as b
 ON a.id = b.manager_id;
 
 -- differentiate manager name and empoyee name ob=ver the table

 SELECT a.name as manager_name,b.name
 FROM Employee as a
 JOIN Employee as b
 ON a.id = b.manager_id;
 
 
 -- UNDERSTANDING UNION 
 
 SELECT name FROM Employee
 UNION
 SELECT name FROM Employee;
 
 -- understanding UNION ALL
 
  SELECT name FROM Employee
 UNION ALL
 SELECT name FROM Employee;