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
/*Instructor Answer:
SELECT *
FROM employees
WHERE first_name = 'Irena'
	OR first_name = 'Vidya'
    OR first_name = 'Maya';*/

-- 3. 
SELECT *
FROM employees
WHERE ( first_name = 'Irena'
	OR 'Vidya'
    OR 'Maya')
    AND gender = 'M';
-- 10397, 10821, 11327
/* Instructor Answer:
SELECT *
FROM employees
WHERE (first_name = 'Irena'
	OR first_name = 'Vidya'
    OR first_name = 'Maya')
    AND gender = 'M'; */

-- 4.
SELECT DISTINCT *
FROM employees
WHERE last_name LIKE 'E%';
/* Instructor Answer:
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'; */

-- 5.
SELECT DISTINCT *
FROM employees
WHERE last_name LIKE 'E%'
	OR last_name LIKE '%E';
/* Instructor Answer:
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%'
	OR last_name LIKE '%E';*/
    
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
/* Instructor Answer:
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'; */
    
-- 8.
SHOW CREATE TABLE employees;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1989-12-31' AND '1999-12-31';
/* Instructor Answer:
SELECT *
FROM employees
WHERE hire_date LIKE '199%'; 
10008, 10011, 10012 */

-- 9.
SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';
-- Instructor Answer: 10078, 10115, 10261

-- 10.
SELECT *
FROM employees
WHERE (hire_date 
	BETWEEN '1989-12-31' AND '1999-12-31')
    AND birth_date LIKE '%12-25';
/* Instructor Answer: 
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%12-25'; 
    10261, 10438, 10681*/
    
-- 11.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';

-- 12.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';


