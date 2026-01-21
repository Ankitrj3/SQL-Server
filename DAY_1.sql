-- Select * FROM sys.databases;

-- -- CREATE DATABASE CompanyDB;

-- use CompanyDB;
-- CREATE TABLE Employees (
--     EmpId INT PRIMARY KEY IDENTITY(1,1),
--     Name VARCHAR(50) NOT NULL,
--     Email VARCHAR(100) UNIQUE,
--     Salary DECIMAL(10,2),
--     CreatedAt DATETIME DEFAULT GETDATE()
-- );

-- INSERT INTO Employees (Name, Email, Salary)
-- VALUES
-- ('Ankit', 'ankit@gmail.com', 45000),
-- ('Rahul', 'rahul@gmail.com', 55000),
-- ('Neha', 'neha@gmail.com', 48000),
-- ('Priya', 'priya@gmail.com', 52000),
-- ('Amit', 'amit@gmail.com', 60000),
-- ('Sneha', 'sneha@gmail.com', 47000),
-- ('Rohit', 'rohit@gmail.com', 58000),
-- ('Pooja', 'pooja@gmail.com', 50000);



-- SELECT * FROM Employees FOR XML AUTO;
-- SELECT * FROM Employees FOR JSON AUTO;



-- Drop if already exists (safe rerun)
IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL DROP TABLE dbo.Orders;
IF OBJECT_ID('dbo.Customers', 'U') IS NOT NULL DROP TABLE dbo.Customers;

-- Customers table
CREATE TABLE dbo.Customers
(
    CustomerId   INT PRIMARY KEY,
    FullName     VARCHAR(100) NOT NULL,
    City         VARCHAR(50)  NOT NULL,
    Segment      VARCHAR(20)  NOT NULL,   -- Retail / Corporate
    IsActive     BIT          NOT NULL,
    CreatedOn    DATE         NOT NULL
);

-- Orders table
CREATE TABLE dbo.Orders
(
    OrderId      INT PRIMARY KEY,
    CustomerId   INT NOT NULL,
    OrderDate    DATE NOT NULL,
    Amount       DECIMAL(10,2) NOT NULL,
    Status       VARCHAR(20) NOT NULL,    -- Delivered/Cancelled/Pending
    PaymentMode  VARCHAR(20) NOT NULL,    -- UPI/Card/Cash
    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerId) REFERENCES dbo.Customers(CustomerId)
);

-- Insert Customers
INSERT INTO dbo.Customers (CustomerId, FullName, City, Segment, IsActive, CreatedOn) VALUES
(101, 'Gopi Suresh',   'Coimbatore', 'Retail',    1, '2025-11-12'),
(102, 'Anita Ravi',    'Chennai',    'Corporate', 1, '2025-10-05'),
(103, 'Karthik Mohan', 'Bengaluru',  'Retail',    1, '2025-09-15'),
(104, 'Meena Kumar',   'Chennai',    'Retail',    0, '2024-12-20'),
(105, 'Suresh Babu',   'Hyderabad',  'Corporate', 1, '2025-01-10');

-- Insert Orders
INSERT INTO dbo.Orders (OrderId, CustomerId, OrderDate, Amount, Status, PaymentMode) VALUES
(5001, 101, '2026-01-10', 1200.00, 'Delivered', 'UPI'),
(5002, 101, '2026-01-15',  850.00, 'Pending',   'Card'),
(5003, 102, '2026-01-05', 5000.00, 'Delivered', 'Card'),
(5004, 103, '2025-12-30',  300.00, 'Cancelled', 'Cash'),
(5005, 105, '2026-01-18', 2500.00, 'Delivered', 'UPI'),
(5006, 102, '2026-01-20', 1500.00, 'Pending',   'UPI');

-- SELECT * FROM dbo.Customers;

-- SELECT CustomerId, FullName, City
-- FROM dbo.Customers;

-- SELECT DISTINCT City
-- FROM dbo.Customers;

-- SELECT FullName As Name , City AS Location FROM dbo.Customers;

-- SELECT FullName As Name , City AS Location FROM dbo.Customers
-- WHERE City = 'Bengaluru';

-- SELECT * FROM 
-- dbo.Orders 
-- WHERE Status = 'Delivered' AND PaymentMode = 'UPI';

-- SELECT * FROM
-- dbo.Customers 
-- Where City IN ('Chennai', 'Bengaluru');

-- SELECT * FROM 
-- dbo.Orders
-- WHERE Amount BETWEEN 1000 AND 3000;

-- SELECT FULLNAME FROM dbo.Customers
-- ORDER BY CITY DESC;

-- SELECT * FROM dbo.Orders
-- ORDER BY Amount;

-- SELECT * FROM 
-- dbo.Customers
-- WHERE FullName LIKE 'S%a' or FullName LIKE '%a%';

SELECT *
FROM dbo.Customers
WHERE FullName LIKE 'S%a' or FullName like '%Gopi%';



SELECT top 1 * from 

(SELECT TOP 2 *
FROM dbo.Orders
ORDER BY Amount  desc ) 

TT 

order by tt.Amount;


