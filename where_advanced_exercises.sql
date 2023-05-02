-- WHERE Advanced Exercises

USE employees;

SHOW CREATE TABLE employees;

-- 1.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- 10200, 10397, 10610

-- 2.
SELECT *
FROM employees
WHERE first_name = 'Irena'
	OR 'Vidya'
    OR 'Maya';
-- 10397, 10610, 10821. No, the numbers are not the same.

-- 3. 
SELECT *
FROM employees
WHERE ( first_name = 'Irena'
	OR 'Vidya'
    OR 'Maya')
    AND gender = 'M';
-- 10397, 10821, 11327

-- 4.
SELECT DISTINCT *
FROM employees
WHERE last_name LIKE 'E%';

-- 5.
SELECT DISTINCT *
FROM employees
WHERE last_name LIKE 'E%'
	OR last_name LIKE '%E';
    
-- 6. 
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%E'
	AND last_name NOT LIKE 'E%';
    
-- 7.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%E'
	AND last_name LIKE 'E%';
    
-- 8.
SHOW CREATE TABLE employees;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1989-12-31' AND '1999-12-31';

-- 9.
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

-- 10.
SELECT *
FROM employees
WHERE (hire_date 
	BETWEEN '1989-12-31' AND '1999-12-31')
    AND birth_date LIKE '%12-25';
    
-- 11.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';

-- 12.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';


