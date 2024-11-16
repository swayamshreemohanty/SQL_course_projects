
-- PostgreSQL + ENUM => We have to create a custom type first

-- CREATE TYPE employment_status AS ENUM('employed', 'unemployed', 'self-employed');

-- CREATE TABLE users(
--   full_name VARCHAR(200),
--   yearly_salary INT,
--   current_status employment_status
-- );


-- CREATE TABLE users(
--   full_name VARCHAR(200) NOT NULL,
--   yearly_salary INT NOT NULL,
--   current_status employment_status NOT NULL
-- );


-- ALTER TABLE users
-- ALTER COLUMN full_name SET NOT NULL,
-- -- ALTER COLUMN yearly_salary SET NOT NULL, //Not possible because we have null values in the column
-- ALTER COLUMN current_status SET NOT NULL

