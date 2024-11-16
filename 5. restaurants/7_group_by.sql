


-- SELECT MAX(b.num_guests) AS max_num_guest, MAX(dt.seats) AS max_seats
-- FROM bookings AS b
-- INNER JOIN dinning_tables AS dt ON b.table_id = dt.id
-- INNER JOIN payment_methods AS pm ON b.payment_id = pm.id
-- WHERE dt.seats < 5 AND pm.name = 'Cash';


-- SELECT booking_date AS "date", SUM(num_guests) AS total_guests
-- FROM bookings
-- GROUP BY booking_date

-- Error
-- Here the DISTINCT will remove the duplicate rows from the result set.
-- But the GROUP BY clause will group the rows that have the same values into summary rows, like "find the number of customers in each country".
--
-- SELECT DISTINCT booking_date AS "date", SUM(num_guests) AS total_guests
-- FROM bookings


-- SELECT p.name, SUM(b.num_guests) AS total_guests
-- FROM payment_methods AS p
-- INNER JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name


-- SELECT p.name AS payment_method, b.booking_date, SUM(b.num_guests) AS total_guests
-- FROM payment_methods AS p
-- INNER JOIN bookings AS b ON p.id = b.payment_id
-- GROUP BY p.name , b.booking_date
-- ORDER BY b.booking_date