CREATE DATABASE IF NOT EXISTS  academic;
USE academic;

-- understanding foreign keys in details

-- creating table 1
CREATE TABLE departmentt(
id INT PRIMARY KEY,
name VARCHAR(51)
);

-- creating table 2
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(51),
department_id INT,
FOREIGN KEY (department_id) REFERENCES departmentt(id)
);



