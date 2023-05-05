-- Join Exercises

USE join_example_db;

-- 1.
SELECT *
FROM users;

SELECT *
FROM roles;

-- 2a.
-- 4 results
SELECT *
FROM users 
JOIN roles ON users.role_id = roles.id;

-- 2b.
-- 6 results
SELECT *
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

-- 2c.
-- 4 results
SELECT *
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

-- 3.
SELECT roles.name,
	COUNT(users.name)
FROM users 
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

USE employees;

-- 2.
SELECT d.dept_name,
	CONCAT(e.first_name, ' ', e.last_name) AS dept_manager
FROM dept_manager AS dm
JOIN employees AS e
	ON e.emp_no = dm.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

SHOW CREATE TABLE departments;
-- 3.
SELECT d.dept_name,
	CONCAT(e.first_name, ' ', e.last_name) as dept_manager
FROM dept_manager AS dm
JOIN employees AS e
	ON e.emp_no = dm.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
	AND e.gender LIKE 'F';
    
-- 4. 
SELECT t.title,
	COUNT(*)
FROM dept_emp AS de
JOIN titles AS t
	ON t.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
WHERE d.dept_name LIKE 'Customer Service'
	AND t.to_date = '9999-01-01'
GROUP BY t.title;

-- 5.
SELECT d.dept_name,
	CONCAT(e.first_name, ' ', e.last_name),
    s.salary
FROM dept_manager AS dm
JOIN employees AS e
	ON e.emp_no = dm.emp_no
JOIN departments AS d
	ON d.dept_no = dm.dept_no
JOIN salaries AS s
	ON s.emp_no = dm.emp_no
WHERE s.to_date LIKE '9999-01-01'
	AND dm.to_date LIKE '9999-01-01'
ORDER BY d.dept_name;

-- 6.
SELECT d.dept_no,
	d.dept_name,
    COUNT(e.emp_no) as num_employees
FROM dept_emp AS de
JOIN employees AS e
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
WHERE de.to_date LIKE '9999-01-01'
GROUP BY d.dept_no, d.dept_name
ORDER BY d.dept_no;

-- 7.
SELECT d.dept_name,
	AVG(s.salary) as average_salary
FROM dept_emp AS de
JOIN salaries AS s
	ON s.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
WHERE s.to_date LIKE '9999-01-01'
GROUP BY d.dept_name
ORDER BY average_salary DESC
LIMIT 1;

-- 8.
SELECT e.first_name, e.last_name,
	MAX(s.salary) as highest_salary
FROM dept_emp AS de
JOIN salaries AS s
	ON s.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
JOIN employees AS e
	ON e.emp_no = de.emp_no
WHERE d.dept_name LIKE 'marketing'
	AND s.to_date LIKE '9999-01-01'
GROUP BY e.first_name, e.last_name
ORDER BY highest_salary DESC
LIMIT 1;

-- 9.
SELECT e.first_name, e.last_name,
	MAX(s.salary) as salary, d.dept_name
FROM dept_emp AS de
JOIN salaries AS s
	ON s.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
JOIN employees AS e
	ON e.emp_no = de.emp_no
JOIN dept_manager AS dm
	ON dm.emp_no = de.emp_no
WHERE s.to_date LIKE '9999-01-01'
	AND de.to_date LIKE '9999-01-01'
GROUP BY e.first_name, e.last_name, d.dept_name
ORDER BY salary DESC
LIMIT 1;

-- 10.
SELECT d.dept_name,
	ROUND(AVG(s.salary)) as average_salary
FROM dept_emp AS de
JOIN salaries AS s
	ON s.emp_no = de.emp_no
JOIN departments AS d
	ON d.dept_no = de.dept_no
GROUP BY d.dept_name
ORDER BY average_salary DESC;