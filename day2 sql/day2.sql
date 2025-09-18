-- 1. Create the employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    age INT,
    salary INT
);

-- 2. Insert sample rows
INSERT INTO employees (emp_id, name, department, age, salary) VALUES
(1, 'Ali', 'IT', 28, 60000),
(2, 'Sara', 'HR', 32, 45000),
(3, 'John', 'Sales', 24, 52000),
(4, 'Zara', 'Finance', 35, 70000),
(5, 'Amir', 'IT', 30, 80000),
(6, 'Ayesha', 'Sales', 26, 38000),
(7, 'Bilal', 'Finance', 42, 90000),
(8, 'Asad', 'IT', 22, 30000);

-- 3. Queries

-- All employees from IT department
SELECT * FROM employees
WHERE department = 'IT';

-- All employees with salary > 50000
SELECT * FROM employees
WHERE salary > 50000;

-- All employees aged between 25 and 35
SELECT * FROM employees
WHERE age BETWEEN 25 AND 35;

-- All employees not in HR
SELECT * FROM employees
WHERE department <> 'HR';

-- Top 3 highest paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Youngest 5 employees (sorted by age ascending)
SELECT * FROM employees
ORDER BY age ASC
LIMIT 5;

-- All employees whose name starts with 'A'
SELECT * FROM employees
WHERE name LIKE 'A%';

-- Employees from Sales OR Finance department, ordered by salary descending
SELECT * FROM employees
WHERE department IN ('Sales', 'Finance')
ORDER BY salary DESC;

-- BONUS: salary between 40k and 80k, sorted by department then salary descending
SELECT * FROM employees
WHERE salary BETWEEN 40000 AND 80000
ORDER BY department ASC, salary DESC;
