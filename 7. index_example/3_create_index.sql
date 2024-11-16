--Single column index
-- CREATE INDEX salary_index ON users (salary);

-- DROP INDEX IF EXISTS salary_index;


-- multi column index
CREATE INDEX multi_address_index ON addresses (street, city);