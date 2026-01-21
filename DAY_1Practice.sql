-- CREATE DATABASE Employees;
-- USE Employees;

-- CREATE TABLE Employees (
--     EmpID INT,
--     Name VARCHAR(50),
--     Department VARCHAR(30),
--     Salary INT,
--     City VARCHAR(30),
--     JoinDate DATE
-- );


-- INSERT INTO Employees VALUES
-- (1, 'Ankit', 'IT', 50000, 'Delhi', '2022-01-10'),
-- (2, 'Rahul', 'HR', 40000, 'Mumbai', '2021-05-15'),
-- (3, 'Sneha', 'IT', 60000, 'Delhi', '2023-03-12'),
-- (4, 'Pooja', 'Finance', 55000, 'Pune', '2020-11-01'),
-- (5, 'Amit', 'HR', 45000, 'Delhi', '2022-08-19'),
-- (6, 'Neha', 'Finance', 70000, 'Mumbai', '2019-06-25'),
-- (7, 'Rohit', 'IT', 48000, 'Pune', '2021-12-05'),
-- (8, 'Kiran', 'Sales', 52000, 'Delhi', '2023-01-20');


-- SELECT Specific Columns

-- Display all records from Employees
-- SELECT * FROM Employees;

-- Display Name and Salary of all employees
-- SELECT NAME , SALARY FROM Employees;

-- Display Name, Department, City of employees
-- SELECT NAME, DEPARTMENT, CITY FROM Employees;

-- Display EmpID and JoinDate only
-- SELECT EmpID, JoinDate FROM Employees;

-- DISTINCT

-- Display distinct departments
-- SELECT DISTINCT DEPARTMENT FROM Employees;

-- Display distinct cities
-- SELECT DISTINCT CITY FROM Employees;

-- Display distinct Department and City combinations
-- SELECT DISTINCT DEPARTMENT ,CITY FROM Employees;

-- Column Alias (AS)

-- Display Name as EmployeeName and Salary as MonthlySalary
-- SELECT NAME AS EMPLOYEENAME , SALARY AS MONTHLYSALARY FROM Employees;

-- Display Department as Dept
-- SELECT DEPARTMENT AS DEPT FROM Employees;

-- Display City as WorkLocation.
-- SELECT CITY AS WORKLOCATION FROM Employees;

-- WHERE

-- Display employees working in IT department
-- SELECT * FROM Employees
-- WHERE DEPARTMENT = 'IT';

-- Display employees from Delhi
-- SELECT * FROM Employees
-- WHERE CITY = 'DELHI'

-- Display employees with Salary > 50000
-- SELECT * FROM Employees 
-- WHERE SALARY > 50000;

-- Display employees who joined after 2022-01-10
-- SELECT * FROM Employees
-- WHERE JOINDATE = '2022-01-10';

-- AND / OR

-- Employees from IT department AND Delhi
-- SELECT * FROM Employees
-- WHERE DEPARTMENT = 'IT' AND CITY = 'DELHI';

-- Employees from HR OR Finance
-- SELECT * FROM Employees 
-- WHERE DEPARTMENT = 'HR' OR DEPARTMENT = 'FINANCE';

-- Employees with Salary > 50000 AND City = 'Mumbai'
-- SELECT * FROM Employees
-- WHERE SALARY > 50000 AND CITY = 'MUMBAI';

-- Employees from Delhi OR Pune
-- SELECT * FROM Employees
-- WHERE CITY = 'DELHI' OR CITY = 'PUNE';

-- IN

-- Employees working in IT, HR, or Sales
-- SELECT NAME, DEPARTMENT FROM Employees
-- WHERE DEPARTMENT IN ('IT','HR','SALES');

-- Employees from Delhi or Mumbai
-- SELECT * FROM Employees
-- WHERE CITY IN('DELHI','MUMBAI');

-- Employees whose Salary is IN (40000, 50000, 60000)
-- SELECT * FROM Employees
-- WHERE SALARY IN(40000,50000,60000);

-- BETWEEN
-- Employees with Salary BETWEEN 45000 AND 60000
-- SELECT * FROM Employees
-- WHERE SALARY BETWEEN 45000 AND 60000;

-- Employees who joined BETWEEN '2021-01-01' AND '2022-12-31'
-- SELECT * FROM Employees
-- WHERE JOINDATE BETWEEN '2021-01-01' AND '2022-12-31';

-- Employees with EmpID BETWEEN 3 AND 7
-- SELECT * FROM Employees
-- WHERE EMPID BETWEEN 3 AND 7;

-- LIKE (PATTERN MATCHING)
-- Employees whose name starts with 'A'.
-- SELECT * FROM Employees
-- WHERE NAME LIKE 'A%';

-- Employees whose name ends with 'a'.
-- SELECT * FROM Employees
-- WHERE NAME LIKE '%a';

-- Employees whose name contains 'it'.
-- SELECT * FROM Employees
-- WHERE NAME LIKE '%it%';

-- Employees whose city starts with 'M'.
-- SELECT * FROM Employees
-- WHERE CITY LIKE 'M%';

-- ORDER BY

-- Display employees ordered by Salary ASC
-- SELECT * FROM Employees
-- ORDER BY SALARY ASC;

-- Display employees ordered by Salary DESC
-- SELECT * FROM Employees
-- ORDER BY SALARY DESC;

-- Display employees ordered by Name ASC
-- SELECT * FROM Employees
-- ORDER BY NAME ASC;

-- Display employees ordered by JoinDate DESC
-- SELECT * FROM Employees
-- ORDER BY JOINDATE DESC;

-- Mixed Practice

-- Display Name, Salary of employees from IT department, ordered by Salary DESC
-- SELECT NAME, SALARY FROM Employees
-- WHERE DEPARTMENT = 'IT' ORDER BY SALARY DESC;

-- Display distinct cities where employees earn more than 50000
-- SELECT DISTINCT CITY FROM Employees
-- WHERE SALARY > 50000;

-- Display employees from Delhi or Mumbai whose salary is BETWEEN 45000 AND 65000
-- SELECT * FROM Employees
-- WHERE CITY IN ('DELHI','MUMBAI') AND SALARY BETWEEN 45000 AND 65000;

-- Display Name as EmpName, Department as Dept for employees whose name starts with ‘R’
-- SELECT NAME AS EMPNAME, DEPARTMENT AS DEPT FROM Employees
-- WHERE NAME LIKE 'R%';

-- Display employees not from Delhi
-- SELECT * FROM Employees
-- WHERE CITY != 'DELHI';

-- Display employees from Finance department, ordered by JoinDate ASC
-- SELECT * FROM Employees
-- WHERE DEPARTMENT = 'FINANCE' ORDER BY JOINDATE ASC;

-- Display top 3 highest-paid employees
SELECT TOP 3 * FROM Employees 
ORDER BY SALARY DESC;