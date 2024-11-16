-- SELECT * FROM dinning_tables;

-- SELECT MAX(seats) FROM dinning_tables;
-- SELECT MIN(seats) FROM dinning_tables;


-- SELECT MAX(amount_billed) AS max_amount_billed, MAX(amount_tipped) AS max_amount_tipped 
-- FROM bookings;

-- SELECT MIN(category), MAX(category) FROM dinning_tables

-- SELECT MIN(booking_date), MAX(booking_date) FROM bookings

SELECT SUM(amount_billed) FROM bookings