-- SECOND NORMAL FORM (2NF)
-- Requirements:
-- 1. Must be in 1NF
-- 2. All non-key attributes must be fully functionally dependent on the entire primary key
--    (No non-key column should depend on only part of the primary key)
--    (No partial dependencies on primary key)

create database 2NF;
use 2NF;

CREATE TABLE orders_2nf (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_address VARCHAR(255),
    order_date DATE
);

CREATE TABLE books_2nf (
    isbn VARCHAR(20) PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE order_items_2nf (
    order_id INT,
    book_isbn VARCHAR(20),
    quantity INT,
    total_price DECIMAL(10, 2),
    PRIMARY KEY (order_id, book_isbn),
    FOREIGN KEY (order_id) REFERENCES orders_2nf(order_id),
    FOREIGN KEY (book_isbn) REFERENCES books_2nf(isbn)
);

-- Sample data for 2NF tables
INSERT INTO orders_2nf VALUES
(1, 'John Smith', 'john@example.com', '123 Main St, Anytown', '2023-01-15'),
(2, 'Mary Johnson', 'mary@example.com', '456 Oak Ave, Somewhere', '2023-01-20'),
(3, 'Robert Brown', 'robert@example.com', '789 Pine Rd, Nowhere', '2023-01-25');

INSERT INTO books_2nf VALUES
('978-0141439518', 'Pride and Prejudice', 'Jane Austen', 9.99),
('978-0451524935', '1984', 'George Orwell', 12.99),
('978-0061120084', 'To Kill a Mockingbird', 'Harper Lee', 14.99);

INSERT INTO order_items_2nf VALUES
(1, '978-0141439518', 1, 9.99),
(1, '978-0451524935', 2, 25.98),
(2, '978-0061120084', 1, 14.99),
(3, '978-0141439518', 1, 9.99);

-- print data
select * from orders_2nf;
select * from books_2nf;
select * from order_items_2nf;