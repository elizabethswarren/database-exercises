-- Case Exercises

USE employees;

-- 1.
SELECT emp_no,
CONCAT(first_name, ' ', last_name) AS full_name, 
dept_no, from_date, to_date,
	CASE to_date
		WHEN '9999-01-01' THEN 1
        ELSE 0
	END AS is_current_employee
FROM dept_emp
JOIN employees USING (emp_no);

-- 2.
SELECT first_name, last_name,
	CASE
		WHEN last_name BETWEEN 'a' AND 'i' 
		THEN 'A-H'
		WHEN last_name BETWEEN 'i' AND 'r'
		THEN 'I-Q'
		WHEN (last_name BETWEEN 'r' AND 'z') OR
			last_name LIKE 'z%'
		THEN 'R-Z' ELSE null
	END AS alpha_group
FROM employees;

-- 3.
SELECT
	COUNT(CASE WHEN birth_date LIKE '195%' THEN birth_date ELSE NULL END) AS 50s,
	COUNT(CASE WHEN birth_date LIKE '196%' THEN birth_date ELSE NULL END) AS 60s
FROM employees;

-- 4.
SELECT
	CASE
		WHEN dept_name LIKE 'research' OR dept_name LIKE 'development' THEN 'R&D'
        WHEN dept_name LIKE 'sales' OR dept_name LIKE 'marketing' THEN 'Sales & Marketing'
        WHEN dept_name LIKE 'production' OR dept_name LIKE 'quality management' THEN 'Prod & QM'
        WHEN dept_name LIKE 'finance' OR dept_name LIKE 'human resources' THEN 'Finance & HR'
        ELSE 'Customer Service'
        END dept_groups,
		AVG(salary) avg_salary
FROM departments
JOIN dept_emp de using (dept_no)
JOIN salaries s using (emp_no)
WHERE s.to_date > NOW()
GROUP BY dept_groups;


    

    
    
	
             
