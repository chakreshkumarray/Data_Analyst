create database my_database;
USE my_database;
CREATE TABLE products(
Product_id INT AUTO_INCREMENT PRIMARY KEY,
Product_name VARCHAR(100) NOT NULL,
Price DECIMAL(10,2) NOT NULL
);
INSERT INTO products (Product_name,Price)
VALUES ('laptop',9999.45),
	('headphone',7664.45),
    ('Moniter',193.9);

select * from products;    
SELECT Product_id,Product_name,Price
FROM products
ORDER BY Price DESC;
