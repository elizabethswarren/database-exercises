-- Limit Exercises

USE employees;

-- 3. 
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5;
-- Alselm Cappello. Utz Mandell. 
-- Bouchung Schreiter. Baocai Kushner. Petter Stroustrup.

-- 4.
SELECT *
FROM employees
WHERE hire_date LIKE '199%'
	AND birth_date LIKE '%-12-25'
ORDER BY hire_date
LIMIT 5 OFFSET 45;
-- Pranay Narwekar. Marjo Farrow. Ennio Karcich.
-- Dines Lubachevsky. Ipke Fontan.

/* In this example, there are five results (LIMIT) for every page.
	We are looking for the tenth page of data, so we are looking for
    entries 46 - 50. We would skip (OFFSET) the first 45 entries.*/