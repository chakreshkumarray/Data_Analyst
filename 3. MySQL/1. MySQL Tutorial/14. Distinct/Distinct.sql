create database EmployeeDB;
use EmployeeDB;

create table employees(
id int auto_increment primary key,
name varchar(50),
department varchar(50),
salary decimal(10,2)
);

INSERT INTO employees (name, department, salary) 
VALUES
    ('Alice', 'HR', 50000),
    ('Bob', 'Finance', 60000),
    ('Charlie', 'IT', 70000),
    ('Alice', 'HR', 50000),      -- Duplicate record
    ('David', 'Finance', 55000),
    ('Eve', 'IT', 70000),        -- Duplicate salary
    ('Frank', 'HR', 50000);      -- Duplicate department & salary
    
-- View all employees 
select * from employees;    

-- Example 1: Using DISTINCT on a single column
-- Get unique departments
select distinct department from employees;

-- Example 2: Using DISTINCT on multiple columns
-- Get unique department-salary combinations
select distinct department,salary from employees;

-- Example 3: Using DISTINCT with aggregate functions
-- Count number of unique departments
SELECT COUNT(DISTINCT department) AS unique_departments from employees;

-- Example 4: Using DISTINCT with string functions
-- Get unique name-department combinations
select concat(name,' ',department) as 'combine' from employees;

-- Example 5: Using DISTINCT with ORDER BY
-- Get unique salary in descending order
select distinct salary from employees order by salary desc;

-- Example 6: Using DISTINCT with WHERE clause
-- Get unique department where salary is greater than 50000
select distinct department from employees where salary > 50000;

-- Display current data
select * from employees;

-- Example 7: Handling NULL values with DISTINCT
-- Insert records with NULL departments
INSERT INTO employees (name, department, salary)
 VALUES 
    ('Grace', NULL, 48000),
    ('Bobby', NULL, 48000);

-- Show how DISTINCT handles NULL values
select distinct department from employees;    
