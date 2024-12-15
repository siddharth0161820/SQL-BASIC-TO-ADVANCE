-- Identify the highest-priced pizza.
--  Pizza_types have pizza name and pizzas have price.

SELECT 
    pizza_types.NAME, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
   -- ORDER BY pizzas.price DESC,  -- get complete data with price in descending order
     ORDER BY pizzas.price DESC limit 1;
    
