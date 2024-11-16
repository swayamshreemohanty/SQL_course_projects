CREATE TABLE users(
    id SERIAL PRIMARY KEY,
  full_name VARCHAR(200) NOT NULL,
  yearly_salary INT CHECK(yearly_salary > 0),
  current_status employment_status NOT NULL
);

-- UPDATE users

-- ALTER TABLE users
-- -- DROP CONSTRAINT yearly_salary;
-- ADD CONSTRAINT yearly_salary_check CHECK(yearly_salary > 0);