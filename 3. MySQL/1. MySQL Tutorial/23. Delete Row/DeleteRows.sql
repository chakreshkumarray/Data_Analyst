-- SQL DELETE Tutorial
-- Demonstrates how to remove records from a database table
-- DELETE FROM table_name WHERE condition;

-- Create a database for our examples
CREATE DATABASE delete_tutorial;
USE delete_tutorial;

-- Create a simple product inventory table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Insert sample data
INSERT INTO products VALUES
(1, 'Laptop', 999.99, 10),
(2, 'Smartphone', 499.99, 25),
(3, 'Headphones', 89.99, 50),
(4, 'Tablet', 349.99, 15),
(5, 'Keyboard', 59.99, 30),
(6, 'Mouse', 29.99, 45),
(7, 'Monitor', 249.99, 12),
(8, 'Printer', 179.99, 8),
(9, 'External Hard Drive', 129.99, 20),
(10, 'USB Drive', 19.99, 100);

-- Verify the data
SELECT * FROM products;

-- Delete a specific record by ID
DELETE FROM products WHERE product_id = 10;

-- Check the result
SELECT * FROM products;

-- Delete records based on a condition
DELETE FROM products WHERE price < 50.00;
-- Note: In safe update mode, this might generate an error if primary key is not used in WHERE clause

-- Delete all records from a table
DELETE FROM products;

-- Check the empty table
SELECT * FROM products;

-- Reinsert sample data
INSERT INTO products VALUES
(1, 'Laptop', 999.99, 10),
(2, 'Smartphone', 499.99, 25),
(3, 'Headphones', 89.99, 50),
(4, 'Tablet', 349.99, 15),
(5, 'Keyboard', 59.99, 30),
(6, 'Mouse', 29.99, 45),
(7, 'Monitor', 249.99, 12),
(8, 'Printer', 179.99, 8),
(9, 'External Hard Drive', 129.99, 20),
(10, 'USB Drive', 19.99, 100);

-- Select expensive products
SELECT * FROM products WHERE price > 300;

-- Delete expensive products
DELETE FROM products WHERE price > 300;

-- Creating a table with a foreign key reference
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert an order
INSERT INTO orders VALUES (1, 2, 3);

select * from orders;

-- Try to delete a referenced product (will fail due to foreign key constraint)
DELETE FROM products WHERE product_id = 2; -- ERROR

-- Remove the default foreign key constraint
ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;

-- Add a new foreign key constraint with CASCADE delete behavior
ALTER TABLE orders 
ADD CONSTRAINT orders_ibfk_1 
FOREIGN KEY (product_id) REFERENCES products(product_id) 
ON DELETE CASCADE;

-- Now deleting the product will also delete related orders
DELETE FROM products WHERE product_id = 2;

-- Check the results
SELECT * FROM products;
SELECT * FROM orders;

-- Insert a new order
INSERT INTO orders VALUES (1, 3, 2);

-- Change the foreign key behavior
ALTER TABLE orders DROP FOREIGN KEY orders_ibfk_1;

-- Add a constraint with SET NULL behavior
ALTER TABLE orders 
ADD CONSTRAINT orders_ibfk_1 
FOREIGN KEY (product_id) REFERENCES products(product_id) 
ON DELETE SET NULL;

-- Now deleting the product will set related order product_id to NULL
DELETE FROM products WHERE product_id = 3;

-- Check the results
SELECT * FROM products;
SELECT * FROM orders;

-- Insert some data
INSERT INTO auto_example (name) VALUES ('Item 1'), ('Item 2'), ('Item 3');

-- Delete all records
DELETE FROM auto_example;

-- Insert a new record (notice the ID continues from previous sequence)
INSERT INTO auto_example (name) VALUES ('New Item');

-- Check the result
SELECT * FROM auto_example;

