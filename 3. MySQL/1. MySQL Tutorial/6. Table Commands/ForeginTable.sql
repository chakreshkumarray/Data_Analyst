create database ForeginTable;
use ForeginTable;
create table employees(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
hire_date date default (CURRENT_DATE()),
email varchar(100) unique,
phone_number varchar(100) unique,
salary decimal(10,2) check(salary > 0.0),
employee_status enum('active','on leave','terminated') default 'active',
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);
INSERT INTO employees(first_name, last_name, hire_date, email, phone_number, salary, employee_status)
VALUES('cck',' ','2007-01-01','ak.kkumar@gmail.com','895528878548',70893.100,'on leave');

select * from employees;
select * from departments;

CREATE TABLE departments(
department_id INT PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(100) NOT NULL,
location VARCHAR(100),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE employees
add column emergency_contact VARCHAR(100) not null;

ALTER TABLE employees
ADD COLUMN department_id INT;

INSERT INTO departments(department_name, location)
VALUES('IT','Building A'),
       ('HR','Building B'),
       ('Sales','Building C');
       
ALTER TABLE employees
modify department_id INT;

alter table employees drop column department_id;   

-- Add Foregin Key --
alter table employees add foreign key (department_id) references departments(department_id);
