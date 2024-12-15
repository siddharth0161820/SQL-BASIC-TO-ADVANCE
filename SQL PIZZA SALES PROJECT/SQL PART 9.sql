-- Join relevant tables to find the category-wise distribution of pizzas.

SELECT category , count(NAME) FROM pizza_types
GROUP BY category;
