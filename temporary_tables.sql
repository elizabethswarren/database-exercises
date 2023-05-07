-- Temporary Tables Exercises

USE employees;

-- 1.
CREATE TEMPORARY TABLE quintela_2246.employees_with_departments AS
SELECT first_name, last_name, dept_name
FROM employees
JOIN dept_emp USING (emp_no)
JOIN departments USING (dept_no)
LIMIT 100;

USE quintela_2246;
-- 1.a
ALTER TABLE quintela_2246.employees_with_departments ADD full_name VARCHAR(30);

-- 1.b
UPDATE employees_with_departments
SET full_name = CONCAT(first_name, last_name);

SELECT *
FROM employees_with_departments;

