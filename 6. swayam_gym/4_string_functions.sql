-- SELECT CONCAT(first_name, ' ', last_name) AS full_name
-- FROM memberships

-- PostgresSQL only
-- SELECT first_name || ' ' || last_name
-- FROM memberships

SELECT CONCAT('$ ', price)
FROM memberships;