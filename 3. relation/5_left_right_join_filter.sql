-- SELECT *
-- SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, a.city_id
-- FROM users AS u
-- LEFT JOIN addresses AS a ON u.address_id = a.id 


-- SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, a.city_id
-- FROM addresses AS a 
-- LEFT JOIN users AS u ON u.address_id = a.id 

--Right join
SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, a.city_id
FROM users AS u
RIGHT JOIN addresses AS a ON u.address_id = a.id

