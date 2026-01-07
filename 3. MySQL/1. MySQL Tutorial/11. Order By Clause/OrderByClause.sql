/*
SQL Sorting and ORDER BY Tutorial
================================
This SQL script demonstrates various techniques for sorting data using ORDER BY
and includes examples ranging from basic to advanced sorting concepts.
*/

-- Section 1: Database and Table Setup
-- ----------------------------------

CREATE DATABASE db12;
USE db12;

-- Create a products table with various data types
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
price DECIMAL (10,2),
stock_quantity INT,
last_updated TIMESTAMP
);

-- Insert initial sample data
INSERT INTO products(product_id,product_name,category,price,stock_quantity,last_updated)
VALUES(1, 'Laptop Pro', 'Electronics', 1299.99, 50, '2024-01-15 10:00:00'),
	  (2, 'Desk Chair', 'Furniture', 199.99, 30, '2024-01-16 11:30:00'),
      (3, 'Coffee Maker', 'Appliances', 79.99, 100, '2024-01-14 09:15:00'),
      (4, 'Gaming Mouse', 'Electronics', 59.99, 200, '2024-01-17 14:20:00'),
      (5, 'Bookshelf', 'Furniture', 149.99, 25, '2024-01-13 16:45:00');
      
-- Section 2: Basic Sorting Operations
-- ---------------------------------
-- Display all records (unsorted)      
select * from products;

-- Sort by price in ascending order (ASC is optional as it's the default)
select * from products order by price;
select * from products order by price asc;
select * from products order by category;

-- Sort by last updated timestamp
select * from products order by  last_updated;

-- Section 3: Advanced Sorting Techniques
-- ------------------------------------
-- Multiple column sorting (sort by category descending, then price descending)
select * from products order by category desc , price desc;

-- Sort using column position (4 represents the price column)
select * from products order by 4;

-- Combining WHERE clause with ORDER BY
select * from products where category = "Electronics" order by price;

-- Case-sensitive sorting using BINARY
select * from products order by binary category;

-- Section 4: Function-Based Sorting
-- -------------------------------
-- Sort by product name length
select * from products order by length(product_name);

-- Sort by day of the month from timestamp
select * from products order by day(last_updated); 

-- Using Limit with order by to find highest stock quantity
select * from products order by stock_quantity desc limit 1;

-- Section 5: Custom Sorting Orders
-- -----------------------------
-- Default category sorting
select * from products order by category;

-- Custom category order using FIELD function
SELECT * FROM products ORDER BY FIELD(category, 'Electronics','Appliances','Furniture'), price DESC;

-- Section 6: Complex Sorting with Conditions
-- ---------------------------------------
-- Simple conditional sorting for low stock and high price items
select * from products order by stock_quantity <= 50 ;
select * from products order by (stock_quantity <= 50 and price >= 200);
select * from products order by (stock_quantity <= 50 and price >= 200) desc;
select *, stock_quantity <= 50 and price >= 200 from products order by (stock_quantity <= 50 and price >= 200) desc;
select*,
stock_quantity <= 50 and price >= 200 as priority_flag
from products order by (stock_quantity <= 50 and price >= 200) desc;

-- Advanced priority - based sorting using case
SELECT *,
    CASE
        WHEN stock_quantity <= 50 AND price >= 200 THEN 1
        WHEN stock_quantity <= 50 THEN 2
        ELSE 3
    END AS priority 
FROM products
ORDER BY priority;

-- Section 7: Handling NULL Values
-- ----------------------------
-- Add records with NULL values for demonstration
INSERT INTO products VALUES
(6, 'Desk Lamp', 'Furniture', NULL, 45, '2024-01-18 13:25:00'),
(7, 'Keyboard', 'Electronics', 89.99, NULL, '2024-01-19 15:10:00');

-- Basic NULL handling in ORDER BY
SELECT * FROM products ORDER BY price;
SELECT * FROM products ORDER BY price is null;

-- Explicit NULL handling
SELECT *, 
    price IS NULL
FROM products 
ORDER BY price IS NULL;

-- Section 8: Working with Calculated Columns
-- --------------------------------------
-- Sort by total value (price * quantity)
SELECT *, 
    price * stock_quantity AS total_value 
FROM products
ORDER BY total_value DESC;

-- Section 9: Query Performance Analysis
-- ---------------------------------
-- Examine query execution plan for multi-column sort
EXPLAIN SELECT * FROM products
ORDER BY category, price;

-- Compare with primary key sort performance
EXPLAIN SELECT * FROM products 
ORDER BY product_id;