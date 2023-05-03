-- Functions Exercises

USE employees;

SHOW CREATE TABLE employees;
-- 2.
SELECT *, 
	CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'e%e';

-- 3.
SELECT *,
	UPPER(CONCAT(first_name, ' ', last_name)) AS full_name
FROM employees
WHERE last_name LIKE 'e%e';

-- 4.
SELECT COUNT(*),
	UPPER(CONCAT(first_name, ' ', last_name)) AS full_name
FROM employees
WHERE last_name LIKE 'e%e';

-- 5.
SELECT *,
	datediff(CURDATE(), hire_date)
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25';
    
-- 6.
SELECT MIN(salary), MAX(salary)
FROM salaries
WHERE to_date LIKE '9999-01-01';

-- 7.
SELECT first_name, last_name, birth_date,
	LOWER(
    CONCAT(SUBSTR(first_name, 1, 1), 
		SUBSTR(last_name, 1, 4), '_',
        SUBSTR(birth_date, 6, 2),
        SUBSTR(birth_date, 3, 2))) AS username
FROM employees;
    


 
