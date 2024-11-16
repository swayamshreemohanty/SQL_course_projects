
-- SELECT ROUND(AVG(amount_tipped),2) FROM bookings
-- WHERE amount_billed > 20 AND num_guests > 2;


-- SELECT MAX(b.num_guests) AS max_num_guest, MAX(dt.seats) AS max_seats
-- FROM bookings AS b
-- INNER JOIN dinning_tables AS dt ON b.table_id = dt.id


SELECT MAX(b.num_guests) AS max_num_guest, MAX(dt.seats) AS max_seats
FROM bookings AS b
INNER JOIN dinning_tables AS dt ON b.table_id = dt.id
INNER JOIN payment_methods AS pm ON b.payment_id = pm.id
WHERE dt.seats < 5 AND pm.name = 'Cash';
