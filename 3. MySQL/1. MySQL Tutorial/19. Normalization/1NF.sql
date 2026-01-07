-- FIRST NORMAL FORM (1NF)
-- Requirements:
-- 1. Each column contains atomic (indivisible) values
-- 2. Each column contains values of the same type
-- 3. Each row is unique (typically ensured by a primary key)
-- 4. No repeating groups of columns
create database 1NF;
use 1NF;

CREATE TABLE book_orders_1nf (
    order_id INT,
    book_isbn VARCHAR(20),
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_address VARCHAR(255),
    book_title VARCHAR(200),
    book_author VARCHAR(100),
    book_price DECIMAL(10, 2),
    order_date DATE,
    quantity INT,
    total_price DECIMAL(10, 2),
    PRIMARY KEY (order_id, book_isbn) -- solution , problem in demostration table
);
