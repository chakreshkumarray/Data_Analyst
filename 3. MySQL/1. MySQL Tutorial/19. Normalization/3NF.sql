-- THIRD NORMAL FORM (3NF)
-- Requirements:
-- 1. Must be in 2NF
-- 2. Must not have transitive dependencies
--    (A non-key attribute cannot depend on another non-key attribute;
--     it must depend directly on the primary key)

create database 3NF;
use 3NF;

CREATE TABLE customers_3nf (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE orders_3nf (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers_3nf(customer_id)
);

CREATE TABLE books_3nf (
    isbn VARCHAR(20) PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE order_items_3nf (
    order_id INT,
    book_isbn VARCHAR(20),
    quantity INT,
    PRIMARY KEY (order_id, book_isbn),
    FOREIGN KEY (order_id) REFERENCES orders_3nf(order_id),
    FOREIGN KEY (book_isbn) REFERENCES books_3nf(isbn)
);

select * from order_items_3nf;
-- Note: The 3NF design removes the derived column total_price from order_items
-- as it can be calculated from quantity * price