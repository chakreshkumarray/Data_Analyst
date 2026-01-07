-- =============================================
-- MySQL LIMIT Clause Lecture
-- =============================================

-- 1. Setup and Sample Data

create database db13;
use db13;

-- Create products table
create table products(
id int auto_increment primary key,
name varchar(1000),
price decimal(10,2),
category varchar(50),
created_at timestamp default current_timestamp
);
-- Insert sample data
INSERT INTO products (name, price, category) 
VALUES
('Laptop', 999.99, 'Electronics'),
('Smartphone', 499.99, 'Electronics'),
('Coffee Maker', 79.99, 'Appliances'),
('Headphones', 149.99, 'Electronics'),
('Blender', 59.99, 'Appliances'),
('Tablet', 299.99, 'Electronics'),
('Microwave', 199.99, 'Appliances'),
('Smart Watch', 249.99, 'Electronics'),
('Toaster', 39.99, 'Appliances'),
('Speaker', 89.99, 'Electronics');

-- Print all records
select * from products;
select * from products limit 2;

-- Return first two products
select * from products order by id limit 2;

-- 3. LIMIT with OFFSET
-- Syntax 1: LIMIT [row_count] OFFSET [offset] skip 2 row
SELECT * FROM products ORDER BY id LIMIT 2 OFFSET 2;
-- Syntax 2: LIMIT [offset], [row_count]
SELECT * FROM products ORDER BY id LIMIT 2, 2;

-- Page size: 3 items per page
-- For page 1 (Using OFFSET syntax):
select * from products limit 3 offset 0;
-- For page 2 (Using OFFSET syntax):
select * from products limit 3 offset 3;
-- For page 3 (Using OFFSET syntax):
select * from products limit 3 offset 6;

-- Alternative syntax using LIMIT offset, count
-- For page 1:
select * from products limit 0,3;
-- For page 2:
select * from products limit 3,3;
-- For page 3:
select * from products limit 6,3; 

-- Generic formula for pagination:
-- LIMIT (page_number - 1) * items_per_page, items_per_page

-- 5. Common Use Cases
-- Top 3 most expensive products
select * from products order by price desc limit 3;
-- Get 5 random products
select * from products limit 5;
select * from products order by id limit 5;
select * from products order by rand() limit 5;

-- 6. Performance Considerations

-- Example of potentially slow query with large offset 
 -- Note: In real scenario, this would be a much larger table
SELECT *
FROM products  
ORDER BY created_at
LIMIT 1000000, 10;
-- Better alternative using WHERE clause
SELECT *
FROM products
WHERE created_at > '2025-01-01 00:00:00'
ORDER BY created_at
LIMIT 10;