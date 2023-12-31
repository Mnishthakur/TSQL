CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(20)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Add customer details to the Customer table
INSERT INTO Customer (customer_id, first_name, last_name, email, phone_number, address, city, state, zip_code)
VALUES (1, 'Harry', 'Sharma', 'harry@example.com', '1234567890', '123 Main Street', 'City', 'State', '12345');

-- Add order details to the Order table
INSERT INTO Order (order_id, customer_id, order_date, total_amount)
VALUES (1, 1, '2023-07-14', 100.00);
