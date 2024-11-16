BEGIN;

--Insert customers
INSERT INTO customers (
    first_name,
    last_name,
    email
)
VALUES(
    'Amit',
    'Sharma',
    'amit@test.com'
),(
    'Priya',
    'Singh',
    'priya@test.com'
),(
    'Rahul',
    'Verma',
    'rahul@test.com'
);

-- SAVEPOINT savepoint1;

-- Insert orders
-- INSERT INTO orders (
--     amount_billed,
--     customer_id
-- )
-- VALUES 
--     (48.99),
--     (27.45, 2),
--     (19.49, 1),
--     (8.49, 3);

