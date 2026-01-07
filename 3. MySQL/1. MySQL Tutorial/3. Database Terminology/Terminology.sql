create database SchoolDB;
use SchoolDB;
create table Students(
StudentID int primary key ,
FirstName varchar(50),
LastName varchar(50),
EnrollmentsDate date
);
insert into Students(StudentID,FirstName,LastName,EnrollmentsDate)
values(1,'Ak','Ray','2003-01-01'),
	  (2,'Ak','Ray','2005-01-01');

select * from Students;