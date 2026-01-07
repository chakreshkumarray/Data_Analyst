CREATE DATABASE company;
use company;

CREATE TABLE employees(
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
hire_date DATE 
);

INSERT INTO employees(first_name,last_name,department,salary,hire_date)
VALUES('John', 'Doe', 'HR', 60000.00, '2022-05-10'),
      ('Jane', 'Smith', 'IT', 75000.00, '2021-08-15'),
      ('Alice', 'Johnson', 'Finance', 82000.00, '2019-03-20'),
      ('Bob', 'Williams', 'IT', 72000.00, '2020-11-25'),
      ('Charlie', 'Brown', 'Marketing', 65000.00, '2023-01-05');

SELECT * FROM employees;      

select first_name,last_name from employees;

select first_name as 'First Name' , last_name from employees;

-- Filtering --
select * from employees where department = 'IT';

-- Sorting --
select * from employees where department = 'IT' order by salary;

select * from employees where department = 'IT' order by salary desc;

-- Limit --
select * from employees limit 3;

-- Find Highest Salary --
select * from employees where department = 'IT' order by salary desc limit 1;

-- Distinct --
select distinct department from employees;

-- Math --
select salary * 1.5 from employees;

-- Concat --
SELECT CONCAT(first_name," ",last_name) as 'Full Name' FROM employees;

select * from employees;

-- Year --
select year(hire_date) as 'Year' from employees;

-- Round --
SELECT ROUND(salary) FROM employees;
SELECT ROUND(salary,1) FROM employees;
SELECT ROUND(salary) from employees where salary > 70000;
SELECT AVG(salary) FROM employees;

SELECT * FROM employees;
SELECT AVG(salary) FROM employees;
SELECT * FROM employees WHERE salary > 70800;

-- Sub Query --
select * from employees where salary > (select avg(salary) from employees);

select first_name,last_name from employees where department = 'IT';
select first_name,last_name from employees where department = 'HR';

-- Union --
select first_name,last_name from employees where department = 'IT' union
select first_name,last_name from employees where department = 'HR';

select * from employees;

-- Group By --
select count(*), department from employees group by department;

select now() as 'time';

select 8 * 2;

select length('Hello');

select ('Hello CK Ray');

select * from employees;
