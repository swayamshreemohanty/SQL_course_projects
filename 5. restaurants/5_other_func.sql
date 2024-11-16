
-- SELECT * FROM bookings;

-- SELECT SUM(amount_billed) FROM bookings

SELECT ROUND(AVG(amount_tipped),2) FROM bookings
WHERE amount_tipped IS NOT NULL;