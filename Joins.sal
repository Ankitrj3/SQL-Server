-- CREATE DATABASE CrashSQL;
-- USE CrashSQL;

-- CREATE TABLE Customers (
--     CustomerId INT PRIMARY KEY,
--     Name VARCHAR(50),
--     City VARCHAR(50)
-- );

-- CREATE TABLE Orders (
--     OrderId INT PRIMARY KEY,
--     CustomerId INT,
--     Amount DECIMAL(10,2),
--     OrderDate DATE
-- );

-- INSERT INTO Customers VALUES
-- (1,'Rahul','Delhi'),
-- (2,'Ananya','Chennai'),
-- (3,'Ravi','Bangalore');
-- INSERT INTO Customers VALUES
-- (4,'Rahul','Delhi'),
-- (5,'Ananya','Chennai'),
-- (6,'Ravi','Bangalore');

-- INSERT INTO Orders VALUES
-- (101,1,5000,'2025-01-10'),
-- (102,1,2000,'2025-01-12'),
-- (103,2,8000,'2025-01-15'),
-- (104,3,3000,'2025-01-20');
-- INSERT INTO Orders VALUES
-- (105,0,5000,'2025-01-10'),
-- (106,0,2000,'2025-01-12'),
-- (107,0,8000,'2025-01-15'),
-- (108,0,3000,'2025-01-20');

-- Inner Join to get customer names and their order amounts
SELECT c.Name , o.Amount , o.OrderDate, o.OrderId
From Customers c 
INNER JOIN Orders o ON c.CustomerId = o.CustomerId;

-- Left Join to get all customers and their order amounts (if any)
SELECT c.Name, o.OrderId 
FROM Customers c
LEFT JOIN Orders o ON c.CustomerId = o.CustomerId;

-- Right Join to get all orders and their customer names (if any)
SELECT c.Name, o.OrderId
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerId = o.CustomerId;

-- Full Outer Join to get all customers and orders, matching where possible
SELECT c.Name, o.OrderId
FROM Customers c FULL JOIN
Orders o ON c.CustomerId = o.CustomerId;

-- Cross Join to get all combinations of customers and orders
SELECT c.Name, o.OrderId
FROM Customers c
CROSS JOIN Orders o;