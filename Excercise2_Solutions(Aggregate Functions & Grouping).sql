-- Question 1 (SQL query to find the total number of employees in the company.)

SELECT COUNT(ID),Department
FROM employees;

-- Question 2 (SQL query to find the total salary paid to all employees in the IT department.)

SELECT department,SUM(salary) AS Total_Salary
  WHERE department='IT'
FROM employees;

-- Question 2 (SQL query to calculate the average salary of employees in the HR department.)

SELECT department,AVG(Salary) AS Average_Salary
WHERE department='HR'
FROM employees;

-- Question 3 (SQL query to find the highest and lowest salary in the company.)
SELECT MAX(Salary) AS Highest_Salary
      MIN(Salary) AS Lowest_Salary
FROM employees;

-- Question 4 (SQL query to group employees by department and display the total salary paid in each department.)
SELECT department, SUM(Salary) AS Total_Salary
FROM emmployees
GROUP BY department;

-- Question 5 (SQL query to count how many employees work in each city.)
SELECT City,COUNT(ID) AS Employees_Count
FROM employees
GROUP BY City;

-- Question 6 (SQL query to group employees by department, calculate the average salary in each department, and order the results in descending order of average salary.)
SELECT department, AVG(Salary) AS Average_Salary
FROM employees
GROUP BY department
ORDER BY Average_Salary DESC;

-- Question 7 (SQL query to find departments where the total salary paid exceeds 100,000 Use GROUP BY and HAVING.)
SELECT department,SUM(Salary) AS Total_Salary
FROM employees
Group BY department
HAVING Total_Salary > 100,000;

-- Question 8 (SQL query to list cities where more than one employee works, ordered by the number of employees in descending order.)
SELECT city COUNT(ID) AS Employee_Count  
FROM employees
GROUP BY city
HAVING COUNT(ID)> 1
ORDER BY Employee_Count DESC;

-- Question 9 (SQL query to find the department with the highest average salary.)
SELECT department,AVG(Salary) AS Average_Salary
FROM employees
GROUP BY department
ORDER BY AVG(Salary) DESC
LIMIT 1;











