CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Customers (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Customers VALUES
(1,'Rahul'),
(2,'Ananya'),
(3,'Ravi');

DECLARE cust_cursor CURSOR FOR
SELECT Name FROM Customers;

DECLARE @name VARCHAR(50);

OPEN cust_cursor;
FETCH NEXT FROM cust_cursor INTO @name;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @name;
    FETCH NEXT FROM cust_cursor INTO @name;
END

CLOSE cust_cursor;
DEALLOCATE cust_cursor;


CREATE TABLE Employees (
    EmpId INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary INT
);

INSERT INTO Employees VALUES
(1, 'Rahul', 30000),
(2, 'Ananya', 40000),
(3, 'Ravi', 35000);

DECLARE emp_cursor CURSOR FOR
SELECT EmpId, Salary FROM Employees;

DECLARE @id INT, @sal INT;

OPEN emp_cursor;
FETCH NEXT FROM emp_cursor INTO @id, @sal;

WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE Employees
    SET Salary = @sal + 1000
    WHERE EmpId = @id;

    FETCH NEXT FROM emp_cursor INTO @id, @sal;
END

CLOSE emp_cursor;
DEALLOCATE emp_cursor;

SELECT * FROM Employees;

