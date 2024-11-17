-- Create Database
CREATE DATABASE ecommerce_db;

-- Use the newly created database
USE ecommerce_db;

-- Create Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    registration_date DATE
);

-- Insert data into Customers Table
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, registration_date) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '555-1234', '2023-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2023-02-10'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', '555-8765', '2023-02-12'),
(4, 'Bob', 'Williams', 'bob.williams@example.com', '555-2345', '2023-03-01'),
(5, 'Charlie', 'Brown', 'charlie.brown@example.com', '555-6789', '2023-03-10'),
(6, 'Eve', 'Miller', 'eve.miller@example.com', '555-3456', '2023-03-15'),
(7, 'David', 'Davis', 'david.davis@example.com', '555-7890', '2023-03-20'),
(8, 'Grace', 'Taylor', 'grace.taylor@example.com', '555-4321', '2023-04-01'),
(9, 'Henry', 'Moore', 'henry.moore@example.com', '555-9876', '2023-04-05'),
(10, 'Ivy', 'Anderson', 'ivy.anderson@example.com', '555-5432', '2023-04-15');

-- Create Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Insert data into Products Table
INSERT INTO products (product_id, product_name, category, price, stock_quantity) VALUES
(1, 'Wireless Mouse', 'Electronics', 25.99, 50),
(2, 'Bluetooth Headphones', 'Electronics', 79.99, 30),
(3, 'Laptop Stand', 'Accessories', 34.99, 20),
(4, 'Mechanical Keyboard', 'Electronics', 119.99, 15),
(5, 'Smartphone Charger', 'Electronics', 19.99, 100),
(6, 'USB-C Hub', 'Accessories', 45.00, 25),
(7, 'Water Bottle', 'Home & Kitchen', 15.99, 40),
(8, 'Backpack', 'Apparel', 59.99, 10),
(9, 'Running Shoes', 'Footwear', 89.99, 20),
(10, 'Notebook', 'Stationery', 5.49, 200);

-- Create Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(20),
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert data into Orders Table
INSERT INTO orders (order_id, customer_id, order_date, order_status, total_amount) VALUES
(1, 1, '2023-05-01', 'Completed', 105.98),
(2, 2, '2023-05-03', 'Completed', 59.99),
(3, 3, '2023-05-05', 'Pending', 149.99),
(4, 4, '2023-05-06', 'Completed', 134.98),
(5, 5, '2023-05-07', 'Shipped', 89.99),
(6, 6, '2023-05-10', 'Completed', 15.99),
(7, 7, '2023-05-12', 'Completed', 179.98),
(8, 8, '2023-05-13', 'Cancelled', 59.99),
(9, 9, '2023-05-14', 'Completed', 19.99),
(10, 10, '2023-05-15', 'Pending', 25.99);

-- Create Order_Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data into Order_Items Table
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 2, 25.99),
(2, 1, 3, 1, 34.99),
(3, 2, 8, 1, 59.99),
(4, 3, 4, 1, 119.99),
(5, 4, 2, 1, 79.99),
(6, 4, 7, 2, 15.99),
(7, 5, 9, 1, 89.99),
(8, 6, 7, 1, 15.99),
(9, 7, 1, 1, 25.99),
(10, 7, 5, 3, 19.99);

-- Create Payments Table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(20),
    payment_status VARCHAR(20),
    amount DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- Insert data into Payments Table
INSERT INTO payments (payment_id, order_id, payment_date, payment_method, payment_status, amount) VALUES
(1, 1, '2023-05-01', 'Credit Card', 'Paid', 105.98),
(2, 2, '2023-05-03', 'PayPal', 'Paid', 59.99),
(3, 3, '2023-05-05', 'Credit Card', 'Pending', 149.99),
(4, 4, '2023-05-06', 'Credit Card', 'Paid', 134.98),
(5, 5, '2023-05-07', 'Debit Card', 'Paid', 89.99),
(6, 6, '2023-05-10', 'PayPal', 'Paid', 15.99),
(7, 7, '2023-05-12', 'Credit Card', 'Paid', 179.98),
(8, 8, '2023-05-13', 'Credit Card', 'Refunded', 59.99),
(9, 9, '2023-05-14', 'Debit Card', 'Paid', 19.99),
(10, 10, '2023-05-15', 'Credit Card', 'Pending', 25.99);
