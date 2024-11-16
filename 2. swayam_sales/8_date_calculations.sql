-- SELECT * FROM sales
-- WHERE date_fulfilled IS NOT NULL

--Find all sales fulfilled <=5 days after creation date
-- SELECT * FROM sales
-- WHERE (date_fulfilled - date_created) <=5

-- If TIMESTAMP are there then we can use the below query
-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <=5
