CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    EmpId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Salary DECIMAL(10,2),
    Dept NVARCHAR(50),
    CreatedAt DATETIME DEFAULT GETDATE()
);

CREATE PROCEDURE sp_AddEmployee
    @Name NVARCHAR(100),
    @Email NVARCHAR(100),
    @Salary DECIMAL(10,2),
    @Dept NVARCHAR(50)
AS
BEGIN
    INSERT INTO Employees (Name, Email, Salary, Dept)
    VALUES (@Name, @Email, @Salary, @Dept)
END
GO

EXEC sp_AddEmployee 'Ankit', 'ankit@gmail.com', 50000, 'IT';
EXEC sp_AddEmployee 'Rohit', 'rohit@gmail.com', 60000, 'HR';
EXEC sp_AddEmployee 'Suman', 'suman@gmail.com', 55000, 'Finance';
EXEC sp_AddEmployee 'Priya', 'priya@gmail.com', 52000, 'Marketing';
EXEC sp_AddEmployee 'Amit', 'amit@gmail.com', 48000, 'Sales';
EXEC sp_AddEmployee 'Ankitranjan', 'ankitranjan@gmail.com', 50000, 'IT';
EXEC sp_AddEmployee 'Rohitranjan', 'rohitranjan@gmail.com', 52000, 'HR';

-- GET All Employees
CREATE PROCEDURE sp_GetAllEmployees
AS
BEGIN
    SELECT * FROM Employees
END
GO

EXEC sp_GetAllEmployees;

-- GET Employee by Id
CREATE PROCEDURE sp_GetEmployeeById
    @EmpId INT
AS
BEGIN
    SELECT * FROM Employees WHERE EmpId = @EmpId
END
GO

EXEC sp_GetEmployeeById 1;
EXEC sp_GetEmployeeById 3;

CREATE PROCEDURE sp_UpdateSalary
    @EmpId INT,
    @NewSalary DECIMAL(10,2)
AS
BEGIN
    UPDATE Employees
    SET Salary = @NewSalary
    WHERE EmpId = @EmpId
END
GO

EXEC sp_UpdateSalary 1, 60000;

CREATE PROCEDURE sp_DeleteEmployee
    @EmpId INT
AS
BEGIN
    DELETE FROM Employees WHERE EmpId = @EmpId
END
GO

EXEC sp_DeleteEmployee 1;

CREATE PROCEDURE sp_TotalEmployees
    @Total INT OUTPUT
AS
BEGIN
    SELECT @Total = COUNT(*) FROM Employees
END

DECLARE @Count INT;
EXEC sp_TotalEmployees @Total = @Count OUTPUT;
SELECT @Count;

