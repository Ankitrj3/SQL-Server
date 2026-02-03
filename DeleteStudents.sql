-- Question
-- 1
-- Delete Students
-- Description
-- Delete Students With No Marks
-- Delete students who do not have entries in Marks table

CREATE DATABASE School;
USE School;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Marks INT,
    City VARCHAR(30)
);

INSERT INTO Students VALUES
(1, 'Ankit', 20, 85, 'LPU'),
(2, 'Robin', 22, 0, 'LPU'),
(3, 'Rockey', 21, 90, 'LPU'),
(4, 'Shashi', 23, NULL, 'LPU'),
(5, 'Ranjan', 20, 95, 'LPU'),
(6, 'Likhitha', 22, NULL, 'LPU');

DELETE FROM Students WHERE Marks IS NULL OR MARKS = 0;


