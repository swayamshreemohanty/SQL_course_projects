
-- SELECT booking_date, SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date

-- SELECT MIN(daily_sum)
-- FROM (
--     SELECT booking_date, SUM(amount_billed) AS daily_sum
--     FROM bookings
--     GROUP BY booking_date
-- ) AS subquery;


-- SELECT booking_date AS date, SUM(amount_billed) AS daily_sum
-- FROM bookings
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) = (
--     SELECT MIN(daily_sum)
--     FROM (
--         SELECT booking_date, SUM(amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--     ) AS subquery
-- );
