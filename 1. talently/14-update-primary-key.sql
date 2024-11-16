

-- --Create test_users table
-- CREATE TABLE test_users(
--     full_name VARCHAR(200) NOT NULL,
--     yearly_salary INT CHECK(yearly_salary > 0),
--     current_status employment_status NOT NULL
-- );


-- -- Insert data into test_users table
-- INSERT INTO test_users (full_name, yearly_salary, current_status)
-- VALUES 
-- ('Jane Doe', 60000, 'unemployed'),
-- ('Alice Smith', 70000, 'self-employed'),
-- ('Bob Brown', 80000, 'employed'),
-- ('Charlie Green', 90000, 'unemployed');
       

--Add a primary key to the test_users table
ALTER TABLE test_users 
ADD COLUMN id SERIAL PRIMARY KEY;