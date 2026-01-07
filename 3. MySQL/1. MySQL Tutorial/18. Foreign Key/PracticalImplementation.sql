-- PRACTICAL IMPLEMENTATION --
-- ======================== --

-- Create a database
CREATE DATABASE companyDB;
USE companyDB;

-- Create the parent table (departments)
CREATE TABLE departments (
    department_id INT NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    PRIMARY KEY (department_id)
);

-- Create the child table with a foreign key (employees)
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2),
    department_id INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- INSERT SAMPLE DATA
-- =================

-- Insert department data
INSERT INTO departments (department_id, department_name, location)
VALUES 
    (1, 'Human Resources', 'Floor 1'),
    (2, 'Marketing', 'Floor 2'),
    (3, 'Engineering', 'Floor 3'),
    (4, 'Finance', 'Floor 1');

-- Insert employee data
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary, department_id)
VALUES
    (101, 'John', 'Smith', 'john.smith@company.com', '2018-06-20', 55000.00, 1),
    (102, 'Sarah', 'Johnson', 'sarah.johnson@company.com', '2019-03-15', 62000.00, 2),
    (103, 'Michael', 'Williams', 'michael.williams@company.com', '2020-01-10', 75000.00, 3),
    (104, 'Emily', 'Brown', 'emily.brown@company.com', '2019-11-05', 68000.00, 3),
    (105, 'David', 'Jones', 'david.jones@company.com', '2021-02-28', 58000.00, 4),
    (106, 'Jessica', 'Davis', 'jessica.davis@company.com', '2020-07-16', 61000.00, 2),
    (107, 'Robert', 'Miller', 'robert.miller@company.com', '2018-09-12', 72000.00, 3);    

-- View employee data
SELECT * FROM employees;    

-- DEMONSTRATING FOREIGN KEY CONSTRAINT
-- ====================================

-- Attempt to insert an employee with non-existent department_id (this will fail)
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary, department_id)
VALUES
    (145, 'John', 'Smith', 'john.smith@company.com', '2018-06-20', 55000.00, 69);
-- Error: Cannot add or update a child row: a foreign key constraint fails

-- Insert an employee with NULL department_id (allowed if the foreign key allows NULL)
INSERT INTO employees (employee_id, first_name, last_name, email, hire_date, salary, department_id)
VALUES 
    (108, 'Thomas', 'Wilson', 'thomas.wilson@company.com', '2022-04-10', 65000.00, NULL);
    