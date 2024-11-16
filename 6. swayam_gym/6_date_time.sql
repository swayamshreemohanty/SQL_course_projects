-- SELECT * FROM memberships

-- SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
-- FROM memberships 

--WEEKDAY
-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin
-- FROM memberships

-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin
-- FROM memberships

-- SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
-- FROM memberships

-- SELECT last_checkin - last_checkout 
-- SELECT last_checkout - last_checkin
-- FROM memberships

-- SELECT membership_end - membership_start
-- FROM memberships
-- WHERE membership_end IS NOT NULL

-- SELECT NOW() - membership_start
-- FROM memberships

-- SELECT membership_start - 7 , membership_start
-- FROM memberships

SELECT (membership_start + INTERVAL '7 MONTH')::TIMESTAMP::DATE , membership_start
FROM memberships