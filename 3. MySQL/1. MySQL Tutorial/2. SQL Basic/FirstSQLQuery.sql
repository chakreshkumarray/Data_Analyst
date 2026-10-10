create database my_database;
USE my_database;
CREATE TABLE products(
Product_id INT AUTO_INCREMENT PRIMARY KEY,
Product_name VARCHAR(100) NOT NULL,
Price DECIMAL(10,2) NOT NULL
);
INSERT INTO products (Product_name,Price)
VALUES ('laptop',9999.45),
	('headphone',7664.45),
    ('Moniter',193.9);

select * from products;    
SELECT Product_id,Product_name,Price
FROM products
ORDER BY Price DESC;

-- 1. SQL is a programming language that is used to manage and manipulate relational databases.

-- 2. i. CREATE TABLES
--    ii. MODIFY TABLES
--    iii. RETRIEVE DATA
--    iv. DELETE DATA
--    v. MODIFY ACCESS
--    
-- 3. SQL deals with structured data, that is data which is organized in tables following a strict format.

-- 4. Main categories of SQL commands
--    i. DDL (Data Definition Language)
--    ii. DML (Data Manipulation Language)
--    iii. DCL (Data Control Language)
--    iv. TCL (Transaction Control Protocol)

-- 5. DDL comands
-- SQL provides commands to define the structure of a database, collectively known as Data Definition Language (DDL). 
-- Some common DDL commands include:
-- a. CREATE: Used to create databases, tables, indexes, and more.
-- b. ALTER: Used to modify existing database objects (e.g., add or remove a column from a table).
-- c. DROP: Used to delete entire databases, tables, or other objects.

-- 6. DML Commands
-- Data Manipulation Language (DML) commands let you insert, update, or delete data within the database tables. 
-- These commands include:
-- a. SELECT: Retrieves data from one or more tables.
-- b. INSERT: Adds new records into a table.
-- c. UPDATE: Modifies existing records in a table.
-- d. DELETE: Removes records from a table.

-- 7. DCL Commands
-- DCL commands are used to control access to data in a database.
-- a. GRANT: Gives a user access privileges to database objects.
-- b. REVOKE: Removes access privileges from a user.

-- 8. TCL Commands
-- TCL commands are used to manage transactions within a database, ensuring data integrity and consistency.
-- a. COMMIT: Saves all changes made during the current transaction.
-- b. ROLLBACK: Undoes changes made during the current transaction.
-- c. SAVEPOINT: Sets a point within a transaction to which you can roll back.
-- d. SET TRANSACTION: Configures transaction properties.

-- 9. Key Features and Advantages of Using SQL
-- i. Simplicity: SQL uses an English-like syntax (e.g., SELECT, UPDATE, WHERE), making it relatively easy to learn.
-- ii. Ubiquity: Nearly every relational database system supports SQL. Once you learn core SQL, you can apply it to MySQL, PostgreSQL, 
--     Oracle, and more.
-- iii. Flexibility: You can handle complex queries involving multiple joined tables, subqueries, window functions, and more.
-- iv. Performance: When used properly with indexes and query optimization, SQL can query large volumes of data very efficiently.
-- v. Data Integrity: Features like transactions, constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE), and ACID compliance ensure that your 
--    data remains accurate and consistent.

-- 10.SQL in MySQL   
-- MySQL is one of the most popular open-source relational database systems that implements SQL. Here’s how SQL typically is used with MySQL:   
-- Write SQL statements in a client (MySQL CLI or a GUI tool like MySQL Workbench).   
-- Execute the statements. MySQL’s SQL engine interprets, optimizes, and runs them against the database.   
-- Receive results, either in text form (CLI) or tabular data (GUI).