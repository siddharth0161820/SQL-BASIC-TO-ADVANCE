-- Determine the distribution of orders by hour of the day.

-- SELECT hour(order_time) FROM orders;  -- to extract hour

SELECT 
    HOUR(order_time) AS HOUR, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY HOUR(order_time);


 