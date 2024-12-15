-- Retrieve the total number of orders placed.


 SELECT * FROM orders; -- get all the data frm order table.

SELECT count(order_id) as total_orders  FROM orders; -- count(order_id) ---query to know number of order placed
                          