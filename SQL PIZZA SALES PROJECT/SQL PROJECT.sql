-- SELECT * FROM pizzahut.pizza_types;
CREATE DATABASE IF NOT EXISTS pizzahut;
USE pizzahut;
SHOW tables;

CREATE table orders(
order_id INT NOT NULL,
order_date DATE NOT NULL,
order_time  TIME NOT NULL,
PRIMARY KEY(order_id));

CREATE table order_details(
order_details_id INT NOT NULL,
order_id INT NOT NULL,
pizza_id TEXT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY(order_details_id));
