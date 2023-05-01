-- Database and Tables Exercise
SHOW databases;

USE albums_db;

SELECT database();

SHOW tables;

USE employees;

SELECT database();

SHOW tables;

SHOW CREATE TABLE employees;

SHOW CREATE TABLE departments;

/* 11. Which tables do you think contain a numeric type column?
		salaries
        
   12. Which tables do you think contain a string type columm?
		departments, dept_emp, dept_manager, employees, titles
        
   13. Which tables do you think contain a date type column?
		dept_emp, dept_manager, employees
        
   14. What is the relationship between the employees and the department tables?
		the table dept_emp */
        
SHOW CREATE TABLE dept_manager;