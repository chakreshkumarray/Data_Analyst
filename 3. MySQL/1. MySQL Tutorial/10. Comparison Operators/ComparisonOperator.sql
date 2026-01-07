-- StoreDB Complete SQL Script
-- This script creates a sample database with products and orders tables
-- and demonstrates various SQL query examples

-- Create the database
create database StoreDB;
use StoreDB;

-- Create products table
create table products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(50),
price DECIMAL(10,2),
stock INT 
);

-- Insert sample data into products table
INSERT INTO products(product_name,category,price,stock)
VALUES('Laptop', 'Electronics', 1200.00, 10),
      ('Tablet', 'Electronics', 600.00, 20),
      ('Headphones', 'Accessories', 150.00, 50),
      ('Mouse', 'Accessories', 30.00, 100),
      ('Keyboard', 'Accessories', 45.00, 80),
      ('Phone', 'Electronics', 800.00, 15);
      
-- Create orders table      
CREATE TABLE orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE,
customer_name VARCHAR(50)
);   

-- Insert sample data into orders table  
INSERT INTO orders(order_date,customer_name)
VALUES('2024-02-01', 'Alice'),
      ('2024-02-05', 'Bob'),
      ('2024-02-10', 'Charlie'),
      ('2024-02-15', 'David'); 
      
select * from products;
select * from orders;      

-- ========================================
-- QUERY EXAMPLES
-- ========================================

-- Get all products with a price of exactly 600
select* from products where price  = 600;

-- Get all products that are NOT priced at 800
select * from products where price <> 800;
select * from products where price != 800;

-- Get all products priced below 500
select * from products where price < 500;

-- Get all products priced above 700
select * from products where price > 700;

-- Get all products priced at or below 150
select * from products where price <= 150;

-- Get all products priced at or above 800
select * from products where price >= 800;

-- Get all products where the category is exactly "Electronics"
select * from products where category = 'Electronics';

-- Retrieve Orders Placed Before February 10, 2024
select * from orders where order_date < '2024-2-10';

-- String comparison example (alphabetical ordering)
select * from products where product_name = "Mouse";

-- Numeric comparison with strings (lexicographic comparison)
select '100' < '2';
select '100' + 0 < '2' + 0;
select 100 < '2';

-- Another string comparison example (lexicographic ordering)
select 100 < '211fcfc';
