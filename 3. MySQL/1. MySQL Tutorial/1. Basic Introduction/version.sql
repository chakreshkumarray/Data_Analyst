select version();

-- SQL (Structured Query Language) is the standard language for talking to relational databases. 
-- You use it to store, retrieve, update, and delete data that is organized in tables (rows and columns, like a spreadsheet).
-- Popular databases that use SQL: MySQL, PostgreSQL, SQL Server, Oracle, SQLite.

-- Rows and Columns
-- Using the same students table:
-- id	name	city	marks
-- 1	Asha	Mumbai	88
-- 2	Ravi	Pune	72
-- 3	Meera	Mumbai	95

-- Column
-- A column runs vertically (top to bottom). It describes one type of information and every value in it has the same kind of data.
-- Here there are 4 columns: id, name, city, marks.
-- For example, the city column holds: Mumbai, Pune, Mumbai.
-- Columns are also called fields or attributes.

-- Row
-- A row runs horizontally (left to right). It holds all the information about one item.
-- Here there are 3 rows. For example, this is one row:
-- | 2 | Ravi | Pune | 72 |
-- It tells you everything about one student, Ravi.
-- Rows are also called records or tuples.

-- Easy way to remember
-- Column = Category (like a pillar standing upright)
-- Row = Record (like a row of seats in a cinema, going sideways)