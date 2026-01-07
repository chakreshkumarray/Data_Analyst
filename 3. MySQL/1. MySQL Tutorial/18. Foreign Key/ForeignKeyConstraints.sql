-- ADDING AND REMOVING FOREIGN KEYS
-- ===============================

-- Create a projects table
create database ProjectDB;
use ProjectDB;

-- create table projects
CREATE TABLE projects (
    project_id INT NOT NULL,
    project_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    manager_id INT,
    PRIMARY KEY (project_id)
);

CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2),
    department_id INT,
    PRIMARY KEY (employee_id)
);

-- Add a foreign key constraint after table creation
ALTER TABLE projects
ADD FOREIGN KEY (manager_id) REFERENCES employees(employee_id);

-- View the table structure including the foreign key
SHOW CREATE TABLE projects;

-- Remove a foreign key constraint
ALTER TABLE projects DROP FOREIGN KEY projects_ibfk_1;