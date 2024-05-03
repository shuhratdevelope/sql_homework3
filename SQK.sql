-- TASK 2
SELECT product_name, units_in_stock,
CASE 
    WHEN units_in_stock >= 100 THEN 'to expensive'
	WHEN units_in_stock  >= 50 AND units_in_stock < 100 THEN 'average'
	WHEN units_in_stock < 50 THEN 'low price'
	
END AS unit_in_stock

FROM products
	
	
-- TASK 3

SELECT contact_name,
CASE
    WHEN order_id IS NULL THEN ' no order'
	ELSE contact_name
END
FROM customers
JOIN orders ON customers.customer_id = orders.customer_id

--TASK 4
SELECT last_name, first_name,
CASE
    WHEN title = 'Sales Representative' THEN 'Sales Stuff'
	ELSE title
END
FROM employees
	
	