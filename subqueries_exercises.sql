-- Subqueries Exercises

USE employees;

-- 1.
SELECT first_name, last_name
FROM employees
WHERE hire_date = (
	SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

-- 2.
SELECT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no
    FROM employees
    WHERE first_name LIKE 'Aamod'
)
	AND to_date > NOW();

-- 3.
SELECT COUNT(*)
FROM employees
WHERE emp_no IN (
	SELECT emp_no
    FROM dept_emp
    WHERE to_date < NOW()
);
-- 85108

-- 4.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
	SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
)
	AND gender = 'f';
/* Isamu Legleitner
   Karsten Sigstam
   Leon DasSarma
   Hilary Kambil */

-- 5.
SELECT COUNT(*)
FROM salaries
WHERE salary > (
	SELECT AVG(salary)
    FROM salaries
)
	AND to_date > NOW();

-- 6.
SELECT COUNT(emp_no)
FROM salaries
WHERE salary > 1 + (
	SELECT STDDEV(salary)
    FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
    LIMIT 1
);


USE employees;

/* SELECT MAX(salary)
FROM salaries
WHERE to_date > NOW();
-- 158220 Max Salary
SELECT STD(salary)
FROM salaries
WHERE to_date > NOW();
-- 17309.96 STD
SELECT COUNT(salary)
FROM salaries
WHERE salary > 
	(SELECT MAX(salary)
	FROM salaries
	WHERE to_date > NOW()) -
    (SELECT STD(salary)
	FROM salaries
	WHERE to_date > NOW())
AND to_date > NOW();*/
    