-- GROUP BY Examples in SQL
-- =============================================
-- This file demonstrates various examples of using GROUP BY in SQL queries
-- for data summarization and aggregation operations.

-- Database Setup
-- =============================================
create database DBForGroupBy;
use DBForGroupBy;
select database();

create table employees(
id int auto_increment primary key,
name varchar(50),
department varchar(50),
salary decimal(10,2),
joining_date date
);

-- Initial Data Insertion
-- =============================================
insert into employees(name,department,salary,joining_date)
values
('Alice', 'HR', 50000, '2020-06-15'),
('Bob', 'HR', 55000, '2019-08-20'),
('Charlie', 'IT', 70000, '2018-03-25'),
('David', 'IT', 72000, '2017-07-10'),
('Eve', 'IT', 73000, '2021-02-15'),
('Frank', 'Finance', 60000, '2020-11-05'),
('Grace', 'Finance', 65000, '2019-05-30'),
('Hannah', 'Finance', 62000, '2021-01-12');

-- Additional Data Insertion
-- =============================================
INSERT INTO employees (name, department, salary, joining_date) 
VALUES
('Tim', 'HR', 65000, '2019-05-30'),
('Tom', 'IT', 62000, '2021-01-12');

-- View All Employee Data
-- =============================================
select * from employees;

-- Example 1: Count Employees in Each Department
-- =============================================
select department ,count(*) as 'employee_count' from employees group by department;

-- Example 2: Get the Average Salary Per Department
-- =============================================
select department, avg(salary) as 'avg_salary' from employees group by department;

-- Example 3: Get the Highest and Lowest Salary Per Department
-- =============================================
select department, max(salary) ,min(salary) from employees group by department;

-- Example 4: Count Employees Per Department and Joining Year
-- =============================================
select department,year(joining_date),count(*)  from employees group by joining_date, department;

-- Example 5: Order Departments by the Highest Average Salary
-- =============================================
select department,avg(salary)as 'avg_salary'  from employees group by department order by avg_salary desc;

-- Example 6: Group by Calculated Salary Range
-- =============================================
select
case
when salary < 60000 then 'low salary'
when salary between 60000 and 70000  then 'medium salary'
else ' high salary'
end as salary_range,
count(*) as employee_count from employees group by salary_range;

-- Example 7: Find Department with the Maximum Number of Employees
-- =============================================
select department,count(*) as 'total_employees' from employees group by department order by total_employees desc limit 1;

-- Example 8: Find Departments With More Than 2 Employees (With Conditions)
-- =============================================
select department, avg(salary) as 'average_salary', count(*) as 'total_employees' from employees where joining_date >
 '2017-07-10'  group by department having total_employees > 2 and average_salary > 55000;