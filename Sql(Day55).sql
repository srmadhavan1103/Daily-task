CREATE DATABASE Day55_DB;
USE Day55_DB;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Arun', 'IT', 50000),
(2, 'Bala', 'HR', 40000),
(3, 'Charan', 'IT', 60000),
(4, 'David', 'Finance', 70000),
(5, 'Ezhil', 'HR', 45000);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50),
    mark INT
);

INSERT INTO students VALUES
(1, 'Mohan', 'Python', 85),
(2, 'Ravi', 'Java', 70),
(3, 'Priya', 'Python', 95),
(4, 'Kumar', 'Java', 60),
(5, 'Anu', 'SQL', 80);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Mobile', 'Electronics', 18000),
(3, 'TV', 'Electronics', 35000),
(4, 'Chair', 'Furniture', 5000),
(5, 'Refrigerator', 'Appliances', 28000);


WITH avg_salary AS (
    SELECT AVG(salary) AS average_salary
    FROM employees
)
SELECT *
FROM employees
WHERE salary > (
    SELECT average_salary
    FROM avg_salary
);


WITH dept_salary AS (
    SELECT
        department,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department
)
SELECT *
FROM dept_salary;

WITH average_mark AS (
    SELECT AVG(mark) AS avg_mark
    FROM students
)
SELECT
    student_name,
    course,
    mark
FROM students
WHERE mark > (
    SELECT avg_mark
    FROM average_mark
);


WITH product_data AS (
    SELECT
        product_name,
        category,
        price
    FROM products
)
SELECT *
FROM product_data
WHERE price > 20000;


WITH employee_bonus AS (
    SELECT
        emp_id,
        emp_name,
        salary,
        salary * 0.10 AS bonus
    FROM employees
)
SELECT
    emp_name,
    salary,
    bonus,
    salary + bonus AS total_salary
FROM employee_bonus;