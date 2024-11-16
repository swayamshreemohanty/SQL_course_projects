DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS payment_methods;
DROP TABLE IF EXISTS dinning_tables;


CREATE TABLE payment_methods (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


CREATE TABLE dinning_tables(
    id SERIAL PRIMARY KEY,
    seats INT NOT NULL,
    category VARCHAR(100) NOT NULL
);

CREATE TABLE bookings(
    id SERIAL PRIMARY KEY,
    booking_date DATE NOT NULL,
    num_guests INT NOT NULL,
    amount_billed NUMERIC(6, 2)  NOT NULL,
    amount_tipped NUMERIC(6, 2),
    payment_id INT REFERENCES payment_methods,
    table_id INT REFERENCES dinning_tables
);