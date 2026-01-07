-- 2. One-to-Many (1:N): Each record in Table A relates to multiple records in Table B --
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- Here, multiple employee records can reference the same department_id