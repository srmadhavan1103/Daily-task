CREATE DATABASE IF NOT EXISTS Day54_DB;
USE Day54_DB;
CREATE TABLE students1 (
    id INT,
    class VARCHAR(10),
    name VARCHAR(50),
    marks INT
);

INSERT INTO students1 VALUES
(1, 'A', 'John', 85),
(2, 'A', 'Sara', 92),
(3, 'A', 'Mike', 78),
(4, 'B', 'Anna', 88),
(5, 'B', 'Tom', 90);


CREATE TABLE exam1 (
    student VARCHAR(50),
    subject VARCHAR(20),
    score INT
);

INSERT INTO exam1 VALUES
('Alice', 'Math', 90),
('Bob', 'Math', 90),
('Charlie', 'Math', 85),
('David', 'Science', 88),
('Eva', 'Science', 88);

CREATE TABLE employees11 (
    emp_name VARCHAR(50),
    department VARCHAR(20),
    salary INT
);

INSERT INTO employees11 VALUES
('Alex', 'IT', 7000),
('Brian', 'IT', 7000),
('Chris', 'IT', 6500),
('Diana', 'HR', 6000),
('Eva', 'HR', 5800);


CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount INT
);

INSERT INTO orders VALUES
(1, '2024-01-01', 100),
(2, '2024-01-02', 200),
(3, '2024-01-03', 150),
(4, '2024-01-04', 300);

CREATE TABLE monthly_sales (
    month VARCHAR(10),
    sales INT
);
INSERT INTO monthly_sales VALUES
('Jan', 5000),
('Feb', 6000),
('Mar', 5500),
('Apr', 7000);


SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY class ORDER BY marks DESC
) AS row_num
FROM students1;


SELECT *,
RANK() OVER (
    PARTITION BY class ORDER BY marks DESC
) AS student_rank
FROM students1;


SELECT *,
DENSE_RANK() OVER (
    PARTITION BY class ORDER BY marks DESC
) AS dense_rank_num
FROM students1;


SELECT *,
AVG(marks) OVER (
    PARTITION BY class
) AS class_average
FROM students1;

SELECT *,
MAX(marks) OVER (
    PARTITION BY class
) AS highest_marks
FROM students1;

SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY subject ORDER BY score DESC
) AS row_num
FROM exam1;

SELECT *,
RANK() OVER (
    PARTITION BY subject ORDER BY score DESC
) AS student_rank
FROM exam1;

SELECT *,
DENSE_RANK() OVER (
    PARTITION BY subject ORDER BY score DESC
) AS dense_rank_num
FROM exam1;


SELECT *,
COUNT(*) OVER (
    PARTITION BY subject
) AS total_students
FROM exam1;

SELECT *,
MIN(score) OVER (
    PARTITION BY subject
) AS minimum_score
FROM exam1;

SELECT *,
ROW_NUMBER() OVER (
    PARTITION BY department ORDER BY salary DESC
) AS row_num
FROM employees11;


SELECT *,
RANK() OVER (
    PARTITION BY department ORDER BY salary DESC
) AS salary_rank
FROM employees11;

SELECT *,
DENSE_RANK() OVER (
    PARTITION BY department ORDER BY salary DESC
) AS dense_rank_num
FROM employees11;


SELECT *,
SUM(salary) OVER (
    PARTITION BY department
) AS department_total
FROM employees11;

SELECT *,
AVG(salary) OVER (
    PARTITION BY department
) AS department_average
FROM employees11;