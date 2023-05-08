-- Temporary Tables Exercises

USE quintela_2246;

-- 1.
CREATE TEMPORARY TABLE employees_with_departments AS
SELECT first_name, last_name, dept_name
FROM employees
JOIN dept_emp USING (emp_no)
JOIN departments USING (dept_no)
LIMIT 100;

-- 1.a
ALTER TABLE employees_with_departments ADD full_name VARCHAR(30);

-- 1.b
UPDATE employees_with_departments
SET full_name = CONCAT(first_name, last_name);

-- 1.c
ALTER TABLE employees_with_departments
DROP COLUMN first_name,
DROP COLUMN last_name;


-- 1.d.
-- You could concat the first_name and last_name when creating the temporary table.

-- 2.
CREATE TEMPORARY TABLE my_payment
SELECT *
FROM sakila.payment
LIMIT 100;

ALTER TABLE my_payment
CHANGE amount amount DECIMAL NOT NULL;

-- 3.
USE employees;

SELECT salary,
	(salary - (SELECT AVG(salary) FROM
FROM quintela_2246.dept_salaries




