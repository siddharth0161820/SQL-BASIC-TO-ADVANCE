 -- Identify the most common pizza size ordered.
 
-- SELECT quantity , count(order_details_id)
--  FROM order_details GROUP BY quantity;
--  
 SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS ORDER_Count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY ORDER_Count DESC ;