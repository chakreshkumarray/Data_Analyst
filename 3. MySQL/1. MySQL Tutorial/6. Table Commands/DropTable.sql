create database DropTable;
use DropTable;

create table Departments(
employee_id int primary key auto_increment,
first_name varchar(50),
last_name varchar(50),
hire_date date default (current_date()),
email varchar(100) unique,
phone_number varchar(100) unique,
salary decimal(10,2) check (salary > 0.0),
employee_status enum('active','on leave','terminated') default 'active',
created_at timestamp default CURRENT_TIMESTAMP,
updated_at timestamp default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

INSERT INTO Departments(first_name, last_name, hire_date, email, phone_number, salary, employee_status)
VALUES('sk','kumar','2004-01-01','sk.kumar@gmail.com','7055278548',71893.100,'on leave'),
       ('dk','kumar','2004-01-01','dk.kumar@gmail.com','4055278541',21893.100,'active'),
       ('hk','kumar','2004-01-01','hk.kumar@gmail.com','3055278542',31893.100,'terminated'),
       ('lk','kumar','2004-01-01','lk.kumar@gmail.com','2055278543',41893.100,'on leave'),
       ('ck','kumar','2004-01-01','ck.kumar@gmail.com','1055278544',51893.100,'active');

drop table Departments;       

drop table if exists ok;

select * from Departments;
       