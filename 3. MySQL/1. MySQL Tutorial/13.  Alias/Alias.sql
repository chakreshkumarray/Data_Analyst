-- MySQL Aliases Tutorial
-- Aliases are temporary names assigned to database tables, columns, or expressions 
-- to make them more readable and manageable.

-- Create and use the database
create database db16;
use db16;

-- create employees table
create table employees(
emp_id int primary key,
first_name varchar(50),
last_name varchar(50),
salary decimal(10,2),
hire_date date
);
-- insert records in table
insert into employees(emp_id,first_name,last_name,salary,hire_date)
values   (1, 'John', 'Doe', 60000.00, '2020-01-15'),
         (2, 'Jane', 'Smith', 65000.00, '2019-11-20'),
         (3, 'Mike', 'Johnson', 55000.00, '2021-03-10');
         
-- print all records
select * from employees;

-- Basic column aliases: Creating full name using concatenation
select concat(first_name,' ',last_name) as 'Full Name' from employees;

-- create departemnt table
create table departments(
dept_id int primary key,
dept_name varchar(50),
location varchar(50)
);
-- insert records in department table
insert into departments(dept_id,dept_name,location)
values (1, 'Engineering', 'New York'),
       (2, 'Marketing', 'Los Angeles'),
       (3, 'Finance', 'Chicago');
       
-- print departments records   
select * from departments;    

-- Add department reference to employees table
alter table employees add column departments_id int;

-- Using table aliases in JOIN operations
SELECT 
    e.first_name,
    e.last_name,
    d.dept_name 
FROM employees AS e 
JOIN departments AS d 
    ON e.departments_id = d.dept_id;

-- Using aliases in subqueries
SELECT avg_salary.average_salary
FROM (
    SELECT AVG(salary) AS average_salary 
    FROM employees
) AS avg_salary;