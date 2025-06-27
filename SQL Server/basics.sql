CREATE DATABASE "2403F1";

use "2403F1";

DROP DATABASE "2403F1";

Create Table Employee(
	id INT PRIMARY KEY IDENTITY(1,1),
	empName VARCHAR(255) NOT NULL,
	designation VARCHAR(255) NOT NULL,
	salary INT NOT NULL,
	city VARCHAR(255) NOT NULL,
	deptId INT
);


INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Moin', 'Angular Developer', 150000, 'Khi', null),
('Aqsa', 'Php Developer', 50000, 'Lhr', null),
('Abdullah', 'Angular Developer', 130000, 'Isb', null),
('Basim', 'Dot Net Developer', 220000, 'Isb', null),
('Ammad', 'Php Developer', 40000, 'Khi', null),
('Hanzala', 'React Developer', 70000, 'Lhr', null),
('Zainab', 'Laravel Developer', 65000, 'Khi', null);

SELECT * FROM Employee;
-- DISTINCT Different
SELECT DISTINCT designation FROM Employee;

SELECT city from Employee;

UPDATE Employee set salary = 300000 where city = 'Khi';

UPDATE Employee set empName = 'Burney', city = 'Lhr' where id = 5;

DELETE FROM Employee where id = 5;

-- where clause

SELECT empName, designation FROM Employee where designation = 'Angular Developer';

--not operator
SELECT empName, designation FROM Employee where not designation = 'Angular Developer';

-- AND operator

SELECT empName, designation, salary FROM Employee where not designation = 'Angular Developer'
AND salary > 150000;


SELECT empName, designation, salary FROM Employee where not designation = 'Angular Developer'
AND salary < 150000;

-- OR Operator

SELECT empName, designation, salary FROM Employee where not designation = 'Angular Developer'
OR salary > 150000;

SELECT empName, designation, salary FROM Employee where not designation = 'Angular Developer'
OR salary < 150000;

-- between
SELECT * FROM Employee where id between 2 and 6;

-- like 
SELECT city FROM Employee where city like '%kh%';
SELECT * FROM Employee where city like '%i%' AND designation like '%Ang%';

-- IN

SELECT * FROM Employee where city IN ('Khi');

-- Order By

SELECT * FROM Employee order by empName asc;

SELECT * FROM Employee order by salary desc;

-- top

select top 4 * from Employee;

select top 50 percent * from Employee order by empName asc;

-- aggregate functions

SELECT COUNT(empName) as total_cities FROM Employee;

SELECT MIN(salary) as min_salary FROM Employee;

SELECT MAX(salary) as max_salary FROM Employee;

SELECT SUM(salary) as totalsum_salary FROM Employee;

SELECT AVG(salary) as avg_salary FROM Employee;

SELECT CONCAT(empName , ' has a designation of ', designation, ' has salary of ', salary)
as emp_details FROM Employee;

SELECT * FROM Employee;

-- Sub Queries
SELECT empName, salary From Employee
where salary < (SELECT AVG(salary) as avg_salary FROM Employee);

-- Group By Clause

SELECT city, COUNT(id) as EmpCount FROM Employee GROUP BY city;

SELECT city, Max(salary) as MaxSal FROM Employee GROUP BY city;

SELECT city, Min(salary) as MinSal FROM Employee GROUP BY city;

SELECT city, Sum(salary) as TotalSal FROM Employee GROUP BY city;

INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Uzair', 'MANAGER', 250000, 'Khi', null),
('Zunno', 'MANAGER', 450000, 'Lhr', null),
('Aneeq', 'MANAGER', 330000, 'Isb', null);

SELECT designation, COUNT(id) as EmpCount FROM Employee
Group By designation having designation = 'MANAGER';

CREATE TABLE Department(
deptId int PRIMARY KEY identity(1,1),
deptName varchar(70) not null
);

INSERT INTO Department VALUES ('HR'),('Admin'),('SRO'),('Faculty'),('Techroom'),('Exam');
INSERT INTO Department VALUES ('BookDept'),('Marketing'),('Placement');
SELECT * FROM Department;

DROP TABLE Employee;

Create Table Employee(
	id INT PRIMARY KEY IDENTITY(1,1),
	empName VARCHAR(255) NOT NULL,
	designation VARCHAR(255) NOT NULL,
	salary INT NOT NULL,
	city VARCHAR(255) NOT NULL,
	deptId INT,
	FOREIGN KEY (deptId) references Department(deptId)
);


INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Moin', 'Angular Developer', 150000, 'Khi', 1),
('Aqsa', 'Php Developer', 50000, 'Lhr', 2),
('Abdullah', 'Angular Developer', 130000, 'Isb', 6),
('Basim', 'Dot Net Developer', 220000, 'Isb', 3),
('Ammad', 'Php Developer', 40000, 'Khi', 4),
('Uzair', 'MANAGER', 250000, 'Khi', 5),
('Zunno', 'MANAGER', 450000, 'Lhr', 4),
('Aneeq', 'MANAGER', 330000, 'Isb', 2),
('Hanzala', 'React Developer', 70000, 'Lhr', 5),
('Zainab', 'Laravel Developer', 65000, 'Khi', 3);

SELECT * FROM Employee;

-- INNER JOINS

SELECT empName, designation,deptName,city, salary 
FROM Employee as emp INNER JOIN Department as d on emp.deptId=d.deptId


INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Ahmed', 'Angular Developer', 150000, 'Khi', null),
('Saim', 'Php Developer', 50000, 'Lhr', null),
('Zameer', 'Angular Developer', 130000, 'Isb', null);

-- LEFT JOINS

SELECT *
FROM Employee as emp LEFT JOIN Department as d on emp.deptId=d.deptId;

-- RIGHT JOINS

SELECT *
FROM Employee as emp RIGHT JOIN Department as d on emp.deptId=d.deptId;

-- FULL OUTER JOIN

SELECT *
FROM Employee as emp FULL OUTER JOIN Department as d on emp.deptId=d.deptId;

-- VIEWS

SELECT empName,designation FROM Employee;

CREATE VIEW [empDetails]
AS
SELECT empName,designation FROM Employee;


SELECT * FROM empDetails;
SELECT * FROM Department;

CREATE VIEW [deptNames]
AS
SELECT deptName FROM Department;

SELECT * From deptNames;

-- DCL DATA CONTROL LANGUAGE

SELECT * FROM sys.sql_logins;

CREATE LOGIN ACC_EMP WITH Password='777';
CREATE USER ACC_EMP FROM LOGIN ACC_EMP;

DROP LOGIN ACC_EMP;

GRANT SELECT, INSERT, DELETE on dbo.Employee TO ACC_EMP;

GRANT SELECT on dbo.Department TO ACC_EMP;

REVOKE SELECT on dbo.Employee TO ACC_EMP;

-- Stored Procedures
CREATE PROCEDURE SeeEmp
AS
BEGIN
SELECT * FROM Employee
END;

CREATE PROCEDURE SeeEmp2
AS
BEGIN
SELECT * FROM Employee where id=2
END;

SeeEmp;

SeeEmp2;

CREATE PROCEDURE AddEmp @Name varchar(255), @desig varchar(70), @sal int, @city varchar(60),
@dId int
AS
BEGIN
INSERT INTO Employee VALUES (@Name, @desig, @sal, @city, @dId)
SELECT * FROM Employee
END;

AddEmp @Name='Usman', @desig='Software Developer', @sal=80000, @city='Khi', @dId=2;
AddEmp @Name='Zaweer', @desig='Angular Developer', @sal=12000, @city='Lhr', @dId=5;









