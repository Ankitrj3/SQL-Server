CREATE TABLE Customers (
    Id INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderId INT PRIMARY KEY,
    CustomerId INT,
    Amount INT,
    OrderDate DATE
);

INSERT INTO Customers VALUES
(1,'Rahul','Delhi'),
(2,'Ananya','Chennai'),
(3,'Ravi','Bangalore');

INSERT INTO Orders VALUES
(101,1,5000,'2025-01-10'),
(102,1,8000,'2025-01-12'),
(103,2,3000,'2025-01-15');

CREATE VIEW vwCustomers
AS
SELECT Id, Name, City
FROM Customers;

SELECT * FROM vwCustomers;

CREATE VIEW vwCustomerOrders
AS
SELECT 
    c.Id,
    c.Name,
    c.City,
    o.OrderId,
    o.Amount,
    o.OrderDate
FROM Customers c
JOIN Orders o ON c.Id = o.CustomerId;

SELECT * FROM vwCustomerOrders;

CREATE VIEW vwHighValueOrders
AS
SELECT 
    c.Name,
    o.Amount
FROM Customers c
JOIN Orders o ON c.Id = o.CustomerId
WHERE o.Amount > 5000;

SELECT * FROM vwHighValueOrders;

CREATE VIEW vwTotalSalesPerCustomer
AS
SELECT 
    c.Id,
    c.Name,
    SUM(o.Amount) AS TotalSales
FROM Customers c
JOIN Orders o ON c.Id = o.CustomerId
GROUP BY c.Id, c.Name;

SELECT * FROM vwTotalSalesPerCustomer;

ALTER VIEW vwHighValueOrders
AS
SELECT 
    c.Name,
    o.Amount,
    o.OrderDate
FROM Customers c
JOIN Orders o ON c.Id = o.CustomerId
WHERE o.Amount >= 3000;

DROP VIEW vwHighValueOrders;

