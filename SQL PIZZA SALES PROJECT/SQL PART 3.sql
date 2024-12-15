-- Calculate the total revenue generated from pizza sales.

-- QUANTITY UNDER ORDER DETAILS && PRICE UNDER PIZZAS SO PIZZA_ID COMMON BETWEEN TWO 
         -- TABLES SO NEED TO USE JOIN AS TO GET DATA FROM TWO TABLES TO GET REVENUE.
         
         --          TO BEAUTIFY/ARRANGE  THE CODE CTRL+B.
         
         
       SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_Sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id