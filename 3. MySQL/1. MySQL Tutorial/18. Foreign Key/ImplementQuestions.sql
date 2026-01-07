-- EXERCISE: IMPLEMENTING EMPLOYEE SKILLS TABLE --
-- =========================================== --
-- Create a table for employee skills with a foreign key to employees --

create database skills;
use skills;

CREATE TABLE employees (
    employees_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    hire_date DATE,
    salary DECIMAL(10,2),
    department_id INT,
    PRIMARY KEY (employees_id)
);

CREATE TABLE employee_skills (
    skill_id INT NOT NULL,
    employees_id INT NOT NULL,
    skill_name VARCHAR(50) NOT NULL,
    proficiency_level ENUM('Beginner', 'Intermediate', 'Advanced', 'Expert') NOT NULL,
    PRIMARY KEY (skill_id),
	FOREIGN KEY (employees_id) REFERENCES employees(employees_id)
);

-- Insert some skills
INSERT INTO employee_skills(skill_id, employee_id, skill_name, proficiency_level)
VALUES
    (1, 103, 'Python', 'Expert'),
    (2, 103, 'SQL', 'Advanced'),
    (3, 104, 'Java', 'Intermediate'),
    (4, 107, 'C++', 'Advanced'),
    (5, 107, 'SQL', 'Expert'),
    (6, 102, 'Graphic Design', 'Advanced');