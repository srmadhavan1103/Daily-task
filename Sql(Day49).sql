create database Joins;
use Joins;
CREATE TABLE departments (dept_id INT,dept_name VARCHAR(50));
CREATE TABLE employees (emp_id INT,emp_name VARCHAR(50),dept_id INT,manager_id INT,salary INT);
CREATE TABLE projects (project_id INT,project_name VARCHAR(50),dept_id INT);
CREATE TABLE emp_projects (emp_id INT,project_id INT);
CREATE TABLE locations (location_id INT,dept_id INT,city VARCHAR(50));
INSERT INTO departments VALUES(1, 'IT'),(2, 'HR'),(3, 'Finance'),(4, 'Sales');
INSERT INTO employees VALUES(1, 'Alice', 1, NULL, 80000),(2, 'Bob', 1, 1, 60000),(3, 'Charlie', 2, 1, 50000),(4, 'David', 3, 2, 70000),(5, 'Eva', NULL, 2, 45000);
INSERT INTO projects VALUES(101, 'Website', 1),(102, 'Payroll', 3),(103, 'Recruitment', 2);
INSERT INTO emp_projects VALUES(1, 101),(2, 101),(3, 103),(4, 102);
INSERT INTO locations VALUES(1, 1, 'New York'),(2, 2, 'London'),(3, 3, 'Tokyo');

select e.emp_name ,d.dept_name from employees e inner join departments d on d.dept_id=e.dept_id;

select e.emp_name ,d.dept_name from employees e left join departments d on d.dept_id=e.dept_id;

select e.emp_name ,d.dept_name from departments d  left join employees e on d.dept_id=e.dept_id;

select e.emp_name ,p.project_name from employees e
inner join emp_projects ep on e.emp_id=ep.emp_id 
inner join projects p on ep.project_id=p.project_id;

select e.emp_name from employees e left join emp_projects ep on e.emp_id=ep.emp_id where ep.project_id is null;

select p.project_name,d.dept_name from projects p inner join departments d on p.dept_id=d.dept_id;

SELECT e.emp_name, d.dept_name, l.city
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN locations l
ON d.dept_id = l.dept_id;


SELECT e.emp_name AS Employee,
       m.emp_name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;


SELECT d.dept_name
FROM departments d
LEFT JOIN projects p
ON d.dept_id = p.dept_id
WHERE p.project_id IS NULL;

SELECT e.emp_name AS Employee,
       e.salary AS Employee_Salary,
       m.emp_name AS Manager,
       m.salary AS Manager_Salary
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id
WHERE e.salary > m.salary;

SELECT d.dept_name,
       COUNT(e.emp_id) AS Employee_Count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


SELECT emp_name
FROM employees
WHERE dept_id IS NULL;

SELECT d.dept_name,
       COUNT(p.project_id) AS Project_Count
FROM departments d
LEFT JOIN projects p
ON d.dept_id = p.dept_id
GROUP BY d.dept_id, d.dept_name;


SELECT e.emp_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

SELECT e.emp_name, p.project_name
FROM employees e
LEFT JOIN emp_projects ep
ON e.emp_id = ep.emp_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

SELECT d.dept_name, l.city
FROM departments d
LEFT JOIN locations l
ON d.dept_id = l.dept_id;

SELECT e.emp_name, l.city
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
INNER JOIN locations l
ON d.dept_id = l.dept_id
WHERE l.city = 'Tokyo';



SELECT p.project_name,
       COUNT(ep.emp_id) AS Employee_Count
FROM projects p
LEFT JOIN emp_projects ep
ON p.project_id = ep.project_id
GROUP BY p.project_id, p.project_name;


SELECT d.dept_name,
       COUNT(e.emp_id) AS Employee_Count
FROM departments d
INNER JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name
HAVING COUNT(e.emp_id) > 1;


SELECT e.emp_name,
       d.dept_name,
       p.project_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
LEFT JOIN emp_projects ep
ON e.emp_id = ep.emp_id
LEFT JOIN projects p
ON ep.project_id = p.project_id;

SELECT emp_name
FROM employees
WHERE manager_id IS NULL;


SELECT e.emp_name, p.project_name
FROM employees e
CROSS JOIN projects p;

SELECT emp_name
FROM employees
WHERE dept_id = (
    SELECT dept_id
    FROM employees
    WHERE emp_name = 'Alice'
);


SELECT d.dept_name, e.emp_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
UNION
SELECT d.dept_name, e.emp_name
FROM departments d
RIGHT JOIN employees e
ON d.dept_id = e.dept_id;


SELECT d.dept_name
FROM departments d
INNER JOIN employees e
ON d.dept_id = e.dept_id
LEFT JOIN locations l
ON d.dept_id = l.dept_id
WHERE l.location_id IS NULL
GROUP BY d.dept_id, d.dept_name;