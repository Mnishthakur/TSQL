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

-- Retrieve customer details from Customer and Order tables
SELECT c.1, c.first_name, c.last_name, c.email, c.phone_number, c.address, c.city, c.state, c.zip_code, o.order_id, o.order_date, o.total_amount
FROM Customer c
JOIN Order o ON c.customer_id = o.customer_id;

-- Delete order details for a specific customer from the Order table
DELETE FROM Order
WHERE customer_id = <1>;

-- Delete customer details from the Customer table
DELETE FROM Customer
WHERE customer_id = <1>;

-- Update customer details in the Customer table
UPDATE Customer
SET first_name = 'Manish',
    last_name = 'Thakur',
    email = 'newemail@example.com',
    phone_number = '9876543210',
    address = 'New Address',
    city = 'Gurgaon',
    state = 'Haryana',
    zip_code = '162712'
WHERE customer_id = (
    SELECT customer_id
    FROM Customer
    WHERE first_name = 'Manish'
);

-- Update customer details in the Order table (if needed)
UPDATE [Order]
SET total_amount = <700>
WHERE customer_id = (
    SELECT customer_id
    FROM Customer
    WHERE first_name = 'Manish'
);
