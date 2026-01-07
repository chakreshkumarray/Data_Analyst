-- Create the database
CREATE DATABASE store_inventory;
USE store_inventory;

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(20),
    price DECIMAL(10, 2),
    stock_quantity INT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert initial data
INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES 
    (1, 'Laptop', 'Electronics', 899.99, 25),
    (2, 'Desk Chair', 'Furniture', 149.50, 40),
    (3, 'Coffee Maker', 'Appliances', 79.99, 15),
    (4, 'Headphones', 'Electronics', 129.99, 30),
    (5, 'Desk Lamp', 'Furniture', 24.99, 50);

-- View all products
SELECT * FROM products;

-- Apply 10% discount to all products
UPDATE products
SET price = price * 0.9
 WHERE product_id > 0;
 
-- Attempt to update product_id (will cause a primary key constraint violation)
UPDATE products
SET product_id = 1
WHERE product_id = 2;
 
 -- Update specific product prices
UPDATE products
SET price = 999.99
WHERE product_id = 1;

UPDATE products
SET price = 89.99, stock_quantity = 20
WHERE product_id = 3;

-- Modify the last_updated column to automatically update on changes
ALTER TABLE products
MODIFY last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

    
-- Update laptop price and quantity
UPDATE products
SET price = 199, stock_quantity = 1
WHERE product_id = 1;

-- Apply 90% discount to first two products
UPDATE products 
SET price = price * 0.1 
WHERE product_id > 0 LIMIT 2; -- Error Code: 1062. Duplicate entry '1' for key 'products.PRIMARY' 
