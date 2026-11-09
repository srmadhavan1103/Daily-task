CREATE DATABASE Day50_DB;
USE Day50_DB;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    job_title VARCHAR(50),
    manager_id INT,
    hire_date DATE,
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    budget DECIMAL(12,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Employee_Projects (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);


INSERT INTO Departments VALUES
(10, 'HR', 'New York'),
(20, 'Engineering', 'San Francisco'),
(30, 'Marketing', 'London'),
(40, 'Sales', 'Chicago'),
(50, 'Legal', 'Toronto');

INSERT INTO Employees VALUES
(101, 'Alice Smith', 'HR Manager', NULL, '2020-01-15', 95000.00, 10),
(102, 'Bob Jones', 'Software Engineer', 105, '2021-03-22', 105000.00, 20),
(103, 'Charlie Brown', 'QA Engineer', 105, '2022-06-01', 70000.00, 20),
(104, 'David Miller', 'Marketing Specialist', 106, '2023-02-10', 65000.00, 30),
(105, 'Emma Davis', 'Engineering Director', NULL, '2019-05-12', 150000.00, 20),
(106, 'Frank Wilson', 'Marketing Director', NULL, '2018-11-20', 140000.00, 30),
(107, 'Grace Lee', 'Sales Rep', 108, '2024-01-05', 55000.00, 40),
(108, 'Henry Clark', 'Sales Manager', NULL, '2017-03-15', 115000.00, 40),
(109, 'Ivy Taylor', 'Software Engineer', 105, '2025-08-19', 98000.00, 20);


INSERT INTO Projects VALUES
(501, 'Apollo Project', 250000.00, 20),
(502, 'Zeus Initiative', 120000.00, 20),
(503, 'Global Branding', 85000.00, 30),
(504, 'CRM Migration', 150000.00, 40),
(505, 'Talent Acquisition', 30000.00, 10);

INSERT INTO Employee_Projects VALUES
(102, 501, 120),
(102, 502, 80),
(103, 501, 150),
(104, 503, 200),
(105, 501, 40),
(107, 504, 180),
(108, 504, 50),
(109, 502, 100);

SELECT * FROM Employees WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT * FROM Employees WHERE dept_id = (SELECT dept_id FROM Departments WHERE dept_name = 'Engineering');

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT emp_id
    FROM Employee_Projects
);


SELECT emp_name
FROM Employees
WHERE emp_id NOT IN (
    SELECT emp_id
    FROM Employee_Projects
);


SELECT *
FROM Projects
WHERE budget = (
    SELECT MAX(budget)
    FROM Projects
);

SELECT dept_name
FROM Departments
WHERE dept_id IN (
    SELECT dept_id
    FROM Projects
    GROUP BY dept_id
    HAVING SUM(budget) > (
        SELECT AVG(budget)
        FROM Projects
    )
);

SELECT *
FROM Employees
WHERE salary > (
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = (
        SELECT dept_id
        FROM Departments
        WHERE dept_name = 'Marketing'
    )
);


SELECT e1.*
FROM Employees e1
WHERE salary > (
    SELECT AVG(e2.salary)
    FROM Employees e2
    WHERE e2.dept_id = e1.dept_id
);

SELECT d.dept_name
FROM Departments d
WHERE EXISTS (
    SELECT 1
    FROM Employees e
    WHERE e.dept_id = d.dept_id
);

SELECT d.dept_name
FROM Departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM Projects p
    WHERE p.dept_id = d.dept_id
);

SELECT
    emp_name,
    (SELECT SUM(salary) FROM Employees) AS total_payroll
FROM Employees;


SELECT *
FROM Employees
WHERE hire_date = (
    SELECT MIN(hire_date)
    FROM Employees
);


SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (
    SELECT MAX(salary)
    FROM Employees
);

SELECT *
FROM Projects
WHERE budget > (
    SELECT SUM(budget)
    FROM Projects
    WHERE dept_id = (
        SELECT dept_id
        FROM Departments
        WHERE dept_name = 'Sales'
    )
);

SELECT *
FROM Employees e
WHERE manager_id IN (
    SELECT emp_id
    FROM Employees m
    WHERE m.dept_id <> e.dept_id
);









