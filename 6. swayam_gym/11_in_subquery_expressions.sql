-- SELECT email FROM customers

-- SELECT c.email, o.customer_id FROM customers AS c
-- INNER JOIN orders AS o ON c.id = o.customer_id


-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

--Alternate with IN

-- SELECT id, first_name
-- FROM customers
-- WHERE first_name NOT IN ('Max', 'Manu');


-----


-- SELECT email FROM customers
-- WHERE id IN (SELECT customer_id FROM orders);

-- Same output as above
-- SELECT DISTINCT email FROM customers
-- INNER JOIN orders ON customers.id = orders.customer_id;