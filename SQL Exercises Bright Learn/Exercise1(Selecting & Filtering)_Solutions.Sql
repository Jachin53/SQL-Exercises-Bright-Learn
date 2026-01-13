-- Question 1 (SQL query to retrieve all columns from the employees table.)
SELECT  *
FROM employees;

-- Question 2 (SQL query to find all the unique departments in the employees table.)
SELECT DISTINCT  id,
                first_name,
                last_name,
                Department
FROM employees;

-- Question 3 (SQL query to retrieve all employees'first and last names, ordered by salary in descending order.)
 SELECT  first_name,
          last_name,
          salary
ORDER BY salary DESC
FROM employees;

-- Question 4  (SQL query to retrieve the top 5 highest-paid employees.)
SELECT  first_name,
        last_name,
        salary
ORDER BY salary LIMIT 5
FROM employees;

-- Question 5 ( SQL query to find employees that work in IT.)
SELECT  first_name,
        last_name,
        department
FROM employees
WHERE department='IT';

-- Question 6 ( SQL query  to find employees who work in the Finance department AND have a salary greater than 58,000.)

SELECT first_name,
        last_name,
        department,
        salary
FROM employees
WHERE department='Finance' AND salary > 58,000;

-- Question 7 (SQL query to find employees who work in HR department OR Marketing department.)
SELECT first_name,
        last_name,
        department
FROM employees
WHERE department='HR' OR 'Marketing';

-- Question 8 (SQL query to find employees who do not work in the IT department.
SELECT first_name,
        last_name,
        department
FROM employees
WHERE department NOT IN ('IT');

-- Question 9 ( SQL query to find employees who work in HR,IT OR Finance department.)
SELECT first_name,
        last_name,
        department
FROM employees
WHERE department IN ('HR','IT') OR 'Finance';

-- Question 10 (SQL query to find employees who are in the IT department, have a salary greater than 50,000, and are located in New York.)
SELECT first_name,
        last_name,
        department,
        salary
FROM employees
WHERE department='IT' AND City IN ('New York')
AND  salary > 50,000;

-- Question 11 (SQL query to retrieve the first and last names of employees who work in the Finance or Marketing department, earn more than 52,000, and order the results by salary in descending order.)
SELECT first_name,
        last_name,
        department,
        salary
FROM employees
WHERE department='Finance' OR department='Marketing' AND slary > 52,000
ORDER BY salary DESC;

-- Question 12 ( SQL query to  find all the unique cities where employees work, excluding those in the IT and HR departments.)

SELECT DISTINCT City, 
          department
WHERE city NOT IN ('IT','HR')
FROM employees

-- Question 13 (SQL query to retrieve employees who are NOT in the Finance department, have a salary greater than 50,000, and order the results by hire date in ascending order.)
SELECT first_name,
        last_name,
        department,
        salary
        hire_date
FROM employees
WHERE department NOT IN ('Finance') AND salary > 50,000
ORDER BY hire_date ASC;

-- Question 14 (SQL query to find the first 3 employees who work in either Chicago or Los Angeles and belong to the IT or Marketing department.)
SELECT  first_name,
        last_name,
        department
FROM employees
WHERE department IN ('Chicago','Los Angeles') AND department='IT' OR department='Marketing'
LIMIT 3;
  








