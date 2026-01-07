-- Foreign Keys in SQL: Database Relationships
-- =============================================

-- INTRODUCTION TO FOREIGN KEYS --
-- A foreign key is a column or set of columns in one table that refers to the primary key in another table.
-- It creates a link between the two tables, establishing a parent-child relationship.
-- Parent table: Contains the primary key that is referenced
-- Child table: Contains the foreign key that references the primary key of the parent table
-- Purpose of Foreign Keys: Referential Integrity, Data Validation, Structured Relationships

-- TYPES OF TABLE RELATIONSHIPS --
-- ============================

-- 1. One-to-One (1:1): Each record in Table A relates to exactly one record in Table B
CREATE TABLE employee_details (
    employee_id INT NOT NULL,
    passport_number VARCHAR(20),
    marital_status VARCHAR(20),
    emergency_contact VARCHAR(100),
    PRIMARY KEY (employee_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
-- 2. One-to-Many (1:N): Each record in Table A relates to multiple records in Table B
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    PRIMARY KEY (employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- Here, multiple employee records can reference the same department_id