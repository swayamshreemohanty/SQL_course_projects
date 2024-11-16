-- SELECT booking_date, COUNT(booking_date), SUM(amount_billed)
-- FROM bookings
-- -- WHERE amount_billed > 30
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) > 30

-- 130.10+101.90+35.50 = 267.50+26.40= 293.90


SELECT booking_date, SUM(amount_tipped)
FROM bookings
-- WHERE amount_billed > 30
GROUP BY booking_date