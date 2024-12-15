-- Analyze the cumulative revenue generated over time.

 -- UNDERSTANDING CUMULATIVE REVENUE MEANS
 -- TODAY EARNED 200 TOTAL ---->200
 -- TOMORROW EARNED 300 SO, CUMULATIVE EARNING IS 300+200=500//
 
 
 SELECT orders.order_date,
 sum(order_details.quantity * pizzas.price) AS revenue
 FROM order_details JOIN pizzas
 ON order_details.pizza_id = pizzas.pizza_id
 JOIN orders
 ON orders.order_id = order_details.order_id
 GROUP BY orders.order_date;
 
 