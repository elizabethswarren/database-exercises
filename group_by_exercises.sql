-- Group By Exercises

USE employees;

-- 2.
SELECT DISTINCT title
FROM titles;
-- 7 unique titles

-- 3.
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

-- 4.
SELECT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;

-- 5.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- 6.
SELECT last_name,
	COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- 7.
SELECT first_name, gender,
	COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY first_name, gender;

-- 8.
SELECT first_name, last_name, birth_date,
	LOWER(
		CONCAT(
			SUBSTR(first_name, 1, 1), 
			SUBSTR(last_name, 1, 4),
            '_',
			SUBSTR(birth_date, 6, 2),
			SUBSTR(birth_date, 3, 2)
            )) AS username,
	COUNT(*) AS username_count
FROM employees
GROUP BY first_name, last_name, birth_date;


-- 9.
SELECT first_name, last_name, birth_date,
	LOWER(
		CONCAT(
			SUBSTR(first_name, 1, 1), 
			SUBSTR(last_name, 1, 4),
            '_',
			SUBSTR(birth_date, 6, 2),
			SUBSTR(birth_date, 3, 2)
            )) AS username,
	COUNT(*) AS username_count
FROM employees
GROUP BY first_name, last_name, birth_date
ORDER BY username_count DESC;
-- Yes, there are duplicate usernames. The highest is twice.
--  There are six duplicate usernames.

-- BONUS
use employees;
-- a.
SELECT AVG(salary), emp_no
FROM salaries
WHERE to_date NOT LIKE '99%'
GROUP BY emp_no;

-- b.
SELECT dept_no,
	COUNT(*)
FROM dept_emp
WHERE to_date LIKE '1999-01-01'
GROUP BY dept_no;

-- c.
SELECT emp_no,
	COUNT(salary)
FROM salaries
GROUP BY emp_no;

-- d.
SELECT emp_no,
	MAX(salary)
FROM salaries
GROUP BY emp_no;

-- e.
SELECT emp_no,
	MIN(salary)
FROM salaries
GROUP BY emp_no;

-- f.
SELECT emp_no,
	STD(salary)
FROM salaries
GROUP BY emp_no;

-- g.
SELECT emp_no,
	MAX(salary)
FROM salaries
GROUP BY emp_no
HAVING max(salary) > 150000;

-- h.
SELECT emp_no,
	AVG(salary)
FROM salaries
GROUP BY emp_no
HAVING AVG(salary) BETWEEN 80000 AND 90000;

