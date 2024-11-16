-- SELECT * FROM bookings;

-- SELECT COUNT(*) FROM bookings;

-- SELECT COUNT(booking_date) AS booking_count FROM bookings;

-- SELECT COUNT(amount_tipped) FROM bookings;


SELECT COUNT(DISTINCT booking_date) FROM bookings;