

DROP TABLE IF EXISTS conversations;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS employers;


-- PostgreSQL + ENUM => We have to create a custom type first

-- CREATE TYPE employment_status AS ENUM('employed', 'unemployed', 'self-employed');


--Create users table
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(200) NOT NULL,
    yearly_salary INT CHECK(yearly_salary > 0),
    current_status employment_status NOT NULL
);


--Create employers table
CREATE TABLE employers (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT,
    yearly_revenue NUMERIC(10, 2),
    is_hiring BOOLEAN DEFAULT FALSE
);

--Create conversations table
CREATE TABLE conversations (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE NOT NULL,
    employer_id INT REFERENCES employers(id) ON DELETE CASCADE NOT NULL,
    "message" TEXT NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);