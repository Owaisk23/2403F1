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

SELECT empName, designation FROM Employee where designation = 'Angular Developer';
