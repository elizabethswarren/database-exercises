-- Order By Exercises

USE employees;

SHOW CREATE TABLE employees;

-- 2.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;
-- Irena Reutenauer. Vidya Simmen

-- 3.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;
-- Irena Acton. Vidya Zweizig

-- 4. 
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;
-- Irena Acton. Maya Zyda.

-- 5.
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
	AND last_name LIKE '%E'
ORDER BY emp_no;
-- 899 employees. 10021 Ramzi Erde.

-- 6.
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE last_name LIKE 'E%'
	AND last_name LIKE '%E'
ORDER BY hire_date DESC;
-- 899 employees. Vitaly Erie. Sergi Erde.

-- 7.
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
-- 362 employees. Pohua Sudkamp. Douadi Pettis.
