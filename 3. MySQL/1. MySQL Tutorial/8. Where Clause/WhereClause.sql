create database bookstore;
use bookstore;

create table books(
book_id int primary key,
title varchar(50),
author varchar(50),
price decimal(10,2),
publication_date date,
category varchar(30),
in_stock int
);

INSERT INTO books(book_id, title, author, price, publication_date, category, in_stock)
VALUES
(1, 'The MySQL Guide', 'John Smith', 29.99, '2023-01-15', 'Technology', 50),
(2, 'Data Science Basics', 'Sarah Johnson', 34.99, '2023-03-20', 'Technology', 30),
(3, 'Mystery at Midnight', 'Michael Brown', 19.99, '2023-02-10', 'Mystery', 100),
(4, 'Cooking Essentials', 'Lisa Anderson', 24.99, '2023-04-05', 'Cooking', 75);

select * from books;

select * from books where category = 'Technology'; 

INSERT INTO books VALUES(5, 'Cook Book', null, 24.99, '2023-04-05', 'Cooking', 75);

INSERT INTO books VALUES
(6, 'Mini Cook Book', 'Gohn Smith', 24.99, '2023-04-05', 'Cooking', 75);

select title, price from books where price < 30.00;

select title , publication_date from books where publication_date >= '2023-03-01';

select * from books where category = 'Technology' and price < 30.00;

select * from books where category = 'Technology' or price < 30.00;

select * from books where (category = 'Technology' or category = 'Mystery') and price <25.00;

select * from books where not category = 'Technology'; 

select * from books where author is null;

select * from books where title like '%SqL%';
select * from books where title like 'the%';
select * from books where title like binary '%SQL%';
select * from books where author like '_ohn%';

select * from books where price between 20 and 30;
select * from books where category in('Technology','Mystery','Science');
select * from books where price between 20 and 40 and publication_date >= '2023-01-01';

select * from books where price > ( select avg(price) from books );

select * from books where category in (
select category from books where in_stock > 20
);

select * from books where year(publication_date) = 2023;
select avg(price) from books where price <= 26.99;

SELECT title, price, publication_date
FROM books
WHERE YEAR(publication_date) = 2023
AND price < (SELECT AVG(price) FROM books);

select category from books;
select book_id from books;

 -- List all technology books with "data" in the title that have more than 50 copies in stock
 
SELECT title, category, in_stock
FROM books
WHERE category = 'Technology'
AND title LIKE '%data%'
AND in_stock > 50;

 -- Find books that are either in the Technology category with price > $30 or in the Mystery category with price < $20
 
SELECT title, category, price
FROM books
WHERE (category = 'Technology' AND price > 30.00)
OR (category = 'Mystery' AND price < 20.00);

 -- List all books where the author's name contains either 'son' or 'th' and were published after March 2023

SELECT title, author, publication_date
FROM books
WHERE (author LIKE '%son%' OR author LIKE '%th%')
AND publication_date > '2023-03-31';
