-- SELECT amount_billed, 
--        CASE WHEN amount_billed > 15 AND amount_billed <=30 THEN 'Normal Day'
--             WHEN amount_billed > 30 THEN 'Good Day'
--             ELSE 'Bad Day' END AS amount_category
-- FROM orders


SELECT 
    CASE WHEN week_day = 0 THEN 'Sunday'
         WHEN week_day = 1 THEN 'Monday'
         WHEN week_day = 2 THEN 'Tuesday'
         WHEN week_day = 3 THEN 'Wednesday'
         WHEN week_day = 4 THEN 'Thursday'
         WHEN week_day = 5 THEN 'Friday'
         WHEN week_day = 6 THEN 'Saturday'
         ELSE 'Unknown' END AS day_of_week
FROM(
    SELECT EXTRACT(DOW FROM last_checkin) AS week_day
    FROM memberships
) AS week_days