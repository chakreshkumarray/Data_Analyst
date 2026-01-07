-- ================= --
-- DATE FUNCTIONS
-- ================= --

-- Date and time data types:
-- DATE	        YYYY-MM-DD           Stores only date without time
-- DATETIME     YYYY-MM-DD HH:MI:SS  Stores date and time
-- TIMESTAMP    YYYY-MM-DD HH:MI:SS  Stores date/time with automatic UTC conversion
-- TIME         HH:MI:SS             Stores only time
-- YEAR         YYYY                 Stores only a four-digit year

-- Current date and time functions
select now() as 'current_datetime';
select curdate() as 'current_date';
select curtime() as 'current_time';

-- Date part extraction
SELECT YEAR(NOW()) AS current_year;
SELECT MONTH(NOW()) AS current_month;
SELECT DAY(NOW()) AS current_day;
SELECT HOUR(NOW()) AS current_hour;
SELECT MINUTE(NOW()) AS current_minute;
SELECT SECOND(NOW()) AS current_second;

-- Date formatting
SELECT DATE_FORMAT('2025-03-13', '%W, %M %e, %Y') AS formatted_date_long; -- "Thursday, March 13, 2025"
SELECT DATE_FORMAT('2025-03-13', '%e/%m/%Y') AS formatted_date_short; -- "13/03/2025"

-- Date arithmetic
SELECT DATE_ADD('2025-03-13', INTERVAL 7 MONTH) AS date_plus_7_months;
SELECT DATE_SUB('2025-03-13', INTERVAL 7 MONTH) AS date_minus_7_months;

-- Date difference
SELECT DATEDIFF('2025-03-10', '2024-03-03') AS days_between;

-- Unix timestamp functions (seconds since January 1, 1970, at 00:00:00 UTC)
SELECT UNIX_TIMESTAMP('2025-03-03') AS unix_time;
SELECT FROM_UNIXTIME(1741392000) AS readable_date;

-- Date function examples with a database
CREATE DATABASE DateExamplesDB;
USE DateExamplesDB;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    order_date DATETIME
);

INSERT INTO orders (customer_name, order_date) 
VALUES
('Alice', '2025-03-01 10:15:00'),
('Bob', '2025-03-02 14:45:30'),
('Charlie', '2025-03-03 09:30:15'),
('Akshay', '2024-03-01 10:15:00');

-- Querying orders in the last 7 days
SELECT * FROM orders WHERE order_date >= DATE_SUB(NOW(), INTERVAL 7 DAY);