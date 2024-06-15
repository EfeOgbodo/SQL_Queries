-- SUBQUERIES
-- Having queries in another query 
SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

SELECT * 
FROM parks_departments;

-- Return the data of employees whose dept_id = 3(Public works)
-- Subqueries help in fetching this data quickly

-- the query below will be nested in another query. I had to write the nested query first and run it... 
-- It allows for better understanding
SELECT employee_id
FROM employee_salary
WHERE dept_id = 3;

SELECT * 
FROM employee_demographics
WHERE employee_id IN 
				(SELECT employee_id
					FROM employee_salary
					WHERE dept_id = 3
);

-- calculate average salary using subqueries
SELECT first_name, salary, 
(SELECT AVG(salary)
FROM employee_salary)
FROM employee_salary;


SELECT AVG(salary)
FROM employee_salary;

select ge, avg(age), min(age), max(age), count(age)
from employee_salary
group by gender;


