-- =============================================
-- SQL FUNCTIONS DEMO SCRIPT
-- A comprehensive demonstration of various SQL functions
-- =============================================

-- =================
-- STRING FUNCTIONS
-- =================

-- Create and use database for string function examples
create database StringFunctionsDB;
use StringFunctionsDB;
select database();

-- Create employees table for string function demonstrations
create table employees(
emp_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(100),
department varchar(50)
);

-- Insert sample employee data
insert into employees(first_name,last_name,email,department)
values
('John', 'Doe', 'john.doe@example.com', 'Marketing'),
('Jane', 'Smith', 'jane.smith@example.com', 'Sales'),
('Michael', 'Johnson', 'michael.johnson@example.com', 'IT'),
('Emily', 'Davis', 'emily.davis@example.com', 'HR'),
('Chris', 'Brown', 'chris.brown@example.com', 'Finance');

select * from employees;

-- CONCAT: Combine first and last names into full name
select concat(first_name,' ',last_name) as 'Full Name' from employees;

-- LENGTH: Get the length of the first name
select length(first_name) from employees;
select first_name , length(first_name) as 'length' from employees;

-- UPPER and LOWER: Convert first names to uppercase and lowercase
select upper(first_name) from employees;
select lower(first_name) from employees;
select first_name, upper(first_name) as 'Upper Case' ,first_name,lower(first_name) as 'Lower Case' from employees;

-- TRIM: Remove leading and trailing spaces
select trim('        ok         ') as 'remove space';

-- SUBSTRING: Extract the first three characters of first names
select substring(first_name,1,3) from employees;
select first_name,substring(first_name,1,3) as 'Three Char' from employees;

-- LOCATE: Find the position of character 'a' in first names
select locate('a',first_name) from employees;
select first_name,locate('a',first_name) as 'Position' from employees;

-- LOCATE: Find the position of characters 'ch' in first names
select first_name,locate('ch',first_name) as 'Position' from employees;

select * from employees;
-- REPLACE: Replace domain in email addresses
select first_name,replace(email,'example.com','amazon.com') as 'new_email' from employees;

-- REVERSE: Reverse the characters in first names
select reverse(first_name) from employees;
select first_name, reverse(first_name) as 'Reverse' from employees;

-- LEFT and RIGHT: Get the first two and last two characters of first names
select left(first_name,2),right(first_name,2) from employees;
select first_name,left(first_name,2) as 'Left', first_name,right(first_name,2) as 'Right' from employees;

-- ASCII: Get ASCII value of the first character in first names (regular and lowercase)
select ascii(first_name) from employees;
select first_name, ascii(lower(first_name)) as 'ASCII' from employees;

-- Create products database for FIELD function demonstration

-- Create products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    last_updated TIMESTAMP
);
-- Insert sample product data
INSERT INTO products 
VALUES
(1, 'Laptop Pro', 'Electronics', 1299.99, 50, '2024-01-15 10:00:00'),
(2, 'Desk Chair', 'Furniture', 199.99, 30, '2024-01-16 11:30:00'),
(3, 'Coffee Maker', 'Appliances', 79.99, 100, '2024-01-14 09:15:00'),
(4, 'Gaming Mouse', 'Electronics', 59.99, 200, '2024-01-17 14:20:00'),
(5, 'Bookshelf', 'Furniture', 149.99, 25, '2024-01-13 16:45:00');

-- print products data
select * from products;

-- FIELD: Order products by category in custom order
SELECT *, 
       FIELD(category, 'Electronics', 'Appliances', 'Furniture') AS category_order 
FROM products 
ORDER BY FIELD(category, 'Electronics', 'Appliances', 'Furniture') DESC;

-- LENGTH vs CHAR_LENGTH: Demonstrate difference with ASCII and multibyte characters
SELECT LENGTH('hello') AS length_in_bytes;          -- Returns 5 (bytes)
SELECT LENGTH('こんにちは') AS multibyte_length;      -- Returns more than 5 because each character is multiple bytes
SELECT CHAR_LENGTH('hello') AS char_count;          -- Returns 5 (characters)
SELECT CHAR_LENGTH('こんにちは') AS multibyte_char_count; -- Returns 5 (characters)

-- SOUNDEX: Compare phonetically similar strings
SELECT SOUNDEX('Smith') AS smith_soundex;  -- Returns 'S530'
SELECT SOUNDEX('Smyth') AS smyth_soundex;  -- Also returns 'S530'
SELECT SOUNDEX('Robert') AS robert_soundex; -- Returns 'R163'
SELECT SOUNDEX('Rupert') AS rupert_soundex; -- Also returns 'R163'
SELECT SOUNDEX('Chakresh') AS rupert_soundex;  -- Returns 'C620'

-- Find employees with names that sound like "Jane"
SELECT * FROM employees WHERE SOUNDEX('jane') = SOUNDEX(first_name);
