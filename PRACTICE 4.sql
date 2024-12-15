CREATE DATABASE IF NOT EXISTS transactions; 
USE transactions;

CREATE table payment(
customerid INT PRIMARY KEY,
customer varchar(51),
mode varchar(21),
city varchar (12)
);

INSERT INTO payment
(customerid,customer,mode,city)
VALUES
(101,"Abhishek","Netbanking","Kolkata"),
(102,"Basu","Creditcard","Ranchi"),
(103,"Chandra","Creditcard","Patna"),
(104,"Devi","Netbanking","Noida"),
(105,"Eshaan","Creditcard","Delhi"),
(106,"Falguni","Debitcard","Mumbai"),
(107,"Giri","Debitcard","Jaipur"),
(108,"Hari","Netbanking","Dehradun"),
(109,"Ira","Netbanking","Hyderabad"),
(110,"John","Creditcard","Assansol");

SELECT * FROM payment ;

-- total paymnmet according to each payment using group by clause

-- steps 
-- step 1 -- get all modes
 SELECT mode
  FROM payment
 GROUP BY mode;
 
 -- step 2 --har mode k andar kitne customer m  = total payment according to each payment method
  SELECT mode,count(customer)
  FROM payment
 GROUP BY mode;
 