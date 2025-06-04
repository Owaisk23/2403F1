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


