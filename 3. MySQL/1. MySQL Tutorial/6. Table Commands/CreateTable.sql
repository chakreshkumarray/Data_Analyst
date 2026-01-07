create database CreateTable;
use CreateTable;
select database();
show databases;

create table employees(
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
