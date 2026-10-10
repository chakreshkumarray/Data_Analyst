select version();

-- 1. What is a Database?   
-- A database is an organized collection of structured information, or data, typically stored electronically in a computer system. 
-- Databases allow for data to be easily accessed, managed, modified, updated, and deleted.

-- They serve as the backbone of various applications—everything from social media platforms to e-commerce websites and 
-- financial systems rely on databases to store user profiles, products, transactions, and more.

-- 2. Key Characteristics of Databases      
-- i. Persistent Storage: Data is stored over the long term, surviving application restarts and system reboots.   
-- ii. Structured and Organized: Data is systematically arranged to avoid duplication and inconsistency.   
-- iii. Easily Retrievable: Efficient methods exist for querying, filtering, and retrieving stored data quickly.   
-- iv. Concurrent Access: Multiple users and applications can use the database simultaneously without corrupting data.   
-- v. Security and Integrity: Access can be controlled and data can be protected against unauthorized use or corruption. 

-- 3. Why Use a Database?      
-- To maintain a permanent record of information.   
-- To ensure data integrity and reduce redundancy.   
-- To efficiently handle large volumes of data and ensure fast retrieval.   
-- To allow multiple users and applications to access and work with the data safely and concurrently.   
-- To back up and recover data in case of hardware failures or data corruption.

-- 4. Database Management Systems (DBMS)   
-- It is software that manages databases, handling data storage, retrieval, updates, and security. 
-- It acts as an interface between databases and users/applications.

-- 5.Examples of DBMS:      
-- Relational DBMS (RDBMS): MySQL, PostgreSQL, Oracle, SQL Server   
-- NoSQL DBMS: MongoDB, Cassandra, DynamoDB   
-- In-memory DBMS: Redis, Memcached  

-- 6. Introduction to the Relational Data Model      
-- The relational data model organizes data into one or more tables (also known as relations) with rows and columns. 
-- The idea, introduced by E.F. Codd in 1970, revolutionized how databases are structured and queried.

-- 7.Key Concepts in the Relational Model      
-- i. Tables (Relations): A table represents an entity or a concept. For example, Employees, Customers, Products. Each table consists of 
-- rows and columns.   
-- ii. Columns (Attributes): Columns define the type of data stored. For example, in an Employees table, you might have columns like employee_id, 
-- first_name, last_name, hire_date. All rows in the same column share the same type and meaning of data.   
-- iii. Rows (Records): Each row in a table represents a single instance or record. For example, one row in the Employees table would represent 
-- one specific employee.   
-- iv. Keys: Primary Key & Foreign Key   
-- v. Relationships Between Tables: 1:1, 1:M & M:N 

-- 8. COLUMNS (Vertical ↓)
--                Col 1        Col 2         Col 3
--              [ id ]       [ Name ]      [ Qty ]
--            --------------------------------------
-- Row 1 (→)  |   1      |    Ball     |    10     |
-- Row 2 (→)  |   2      |    Pen      |     5     |
-- Row 3 (→)  |   3      |    Cap      |    15     |

-- 9. Real-World Example   
-- Imagine a small company that needs to store data about employees, departments, and projects

-- 10. 1. Departments Table
-- CREATE TABLE departments (
--     department_id INT PRIMARY KEY,
--     department_name VARCHAR(100) NOT NULL
-- );

-- INSERT INTO departments (department_id, department_name) VALUES
-- (10, 'Sales'),
-- (20, 'Marketing');


-- -- 2. Employees Table
-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     email VARCHAR(100) NOT NULL UNIQUE,
--     department_id INT,
--     FOREIGN KEY (department_id) REFERENCES departments(department_id)
-- );

-- INSERT INTO employees (employee_id, first_name, last_name, email, department_id) VALUES
-- (1, 'John', 'Doe', 'john.doe@example.com', 10),
-- (2, 'Jane', 'Smith', 'jane.smith@example.com', 10),
-- (3, 'Robert', 'Brown', 'robert.b@example.com', 20);


-- -- 3. Projects Table
-- CREATE TABLE projects (
--     project_id INT PRIMARY KEY,
--     project_name VARCHAR(100) NOT NULL
-- );

-- INSERT INTO projects (project_id, project_name) VALUES
-- (100, 'Website Redesign'),
-- (200, 'Product Launch');

-- 11. Keys   
-- i. Primary Key: A column or set of columns that uniquely identify each row in a table. 
-- For instance, employee_id can be a primary key if it uniquely identifies every employee.
-- ii. Foreign Key: A column in one table that refers to the primary key in another table. 
-- For example, a department_id in the Employees table that references the department_id in a Departments table.   

-- 12. Relationships Between Tables   
-- i. One-to-One (1:1): Each row in Table , A is related to exactly one row in Table , B. For example, one employee might have 
-- one unique company car assigned.   
-- ii. One-to-Many (1:N): One row in Table A can be associated with multiple rows in Table B. For example, one department can 
-- have many employees.   
-- iii. Many-to-Many (M:N): Multiple rows in Table A can be associated with multiple rows in Table B. For example, employees can 
-- work on multiple projects, and projects can have multiple employees. 

-- 13.Why the Relational Model?   
-- i. Data Integrity: By using primary and foreign keys, the relational model enforces referential integrity. 
-- This means no orphaned records should exist (e.g., an employee record that refers to a department that doesn't exist).   
-- ii. Reduced Redundancy: Through a process called normalization, relational databases are designed to minimize duplication 
-- and maintain consistent data.   Flexibility in Querying: Structured Query Language (SQL) provides a powerful, 
-- declarative way to retrieve and manipulate data in complex ways without changing the database design. 