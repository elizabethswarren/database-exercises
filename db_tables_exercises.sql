-- Database and Tables Exercise

-- 3. List all the databases.
SHOW databases;
/* 311_data
albums_db
chipotle
curriculum_logs
elo_db
employees
farmers_market
fruits_db
grocery_db
home_credit
information_schema
iris_db
join_example_db
logs
mall_customers
mysql
numbers
pizza
quintela_2246
quotes_db
saas_llc
sakila
spam_db
superstore_db
telco_churn
titanic_db
tsa_item_demand
world
zillow*/

-- 4. Write the SQL code necessary to use the albums_db database.
USE albums_db;

-- 5. Show the currently selected database.
SELECT database();
-- albums_db

-- 6. List all tables in the database.
SHOW tables;
-- albums

-- 7. Write the SQL code to switch the employees database.
USE employees;

-- 8. Show the currently selected database.
SELECT database();
-- employees

-- 9. List all the tables in the database.
SHOW tables;
/* departments
dept_emp
dept_manager
employees
salaries
titles*/

-- 10. Explore the employees table. What different data types are present on this table?
SHOW CREATE TABLE employees;
/* CREATE TABLE `employees` (
  `emp_no` int NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

-- Instructor Answer: DESCRIBE employees; 

string, int, and date

   11. Which tables do you think contain a numeric type column?
		salaries
        Instructor Answer: All of them because of the primary key.
        
   12. Which tables do you think contain a string type columm?
		departments, dept_emp, dept_manager, employees, titles
        
   13. Which tables do you think contain a date type column?
		dept_emp, dept_manager, employees
        Instructor Answer: dept_emp, dept_manager, employees, salaries, titles
        
   14. What is the relationship between the employees and the department tables?
		the table dept_emp
        Instructor Answer: There is no direct relationship, but we can use another table. */
 
-- 15.  Show the SQL that created the dept_manager table. Write the SQL it takes to show this as your exercise solution.
SHOW CREATE TABLE dept_manager;

/* CREATE TABLE `dept_manager` (
  `emp_no` int NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */