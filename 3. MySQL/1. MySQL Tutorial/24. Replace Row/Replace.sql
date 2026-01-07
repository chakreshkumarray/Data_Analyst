-- REPLACE INTO SQL Demonstration
-- This script demonstrates how REPLACE INTO combines INSERT and DELETE operations
-- to simplify the process of updating or inserting records based on primary or unique key values.

-- Create and use database
CREATE DATABASE replace_demo;
USE replace_demo;

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Insert initial product data
INSERT INTO products (product_id, product_name, category, price, stock_quantity)
VALUES 
    (1, 'Laptop', 'Electronics', 899.99, 25),
    (2, 'Smartphone', 'Electronics', 599.99, 50),
    (3, 'Coffee Maker', 'Kitchen', 79.99, 30),
    (4, 'Running Shoes', 'Sportswear', 129.99, 40),
    (5, 'Desk Chair', 'Furniture', 189.99, 15);

-- Replace an existing product (ID 5)
-- This will DELETE the existing record and INSERT a new one
REPLACE INTO products (product_id, product_name, category, price, stock_quantity)
VALUES
    (5, 'Mic', 'Electronics', 500, 12);
    
-- Add a new product (ID 6) with REPLACE
-- Since the ID doesn't exist, this works like a regular INSERT
REPLACE INTO products (product_id, product_name, category, price)
VALUES
    (6, 'Camera', 'Electronics', 5000); 

-- View the updated products table
SELECT * FROM products;

-- Create a second products table with an additional supplier column
CREATE TABLE products2 (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT,
    supplier VARCHAR(100) -- Extra column
);    

INSERT INTO products2 (product_id, product_name, category, price, stock_quantity, supplier)
VALUES 
    (2, 'Ultra Smartphone', 'Electronics', 899.99, 40, 'TechCorp'), -- Existing ID (2)
    (4, 'Pro Running Shoes', 'Sportswear', 149.99, 35, 'SportMaster'), -- Existing ID (4)
    (7, 'Bluetooth Speaker', 'Electronics', 79.99, 60, 'SoundWave'), -- New ID
    (8, 'Gaming Mouse', 'Computer Accessories', 49.99, 100, 'GamerZone'), -- New ID
    (9, 'Portable Monitor', 'Electronics', 199.99, 25, 'DisplayTech'); -- New ID
    
-- View both product tables before the bulk REPLACE operation
SELECT * FROM products;
SELECT * FROM products2;

-- Use REPLACE with SELECT to perform bulk replace operation
-- This will update products with IDs 2 and 4, and insert products with IDs 7, 8, and 9
REPLACE INTO products (product_id, product_name, category, price, stock_quantity)
SELECT product_id, product_name, category, price, stock_quantity
FROM products2;
    
-- View the final products table after bulk REPLACE operation
SELECT * FROM products;    