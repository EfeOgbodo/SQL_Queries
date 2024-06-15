-- CTE
-- Common Table Expression
-- They have to be used within the frame of the code block, jsut before the semi-colon

WITH CTE_Example AS
(
select gender, AVG(salary) avg_salary, MIN(salary) min_salary, MAX(salary) max_salary, COUNT(salary) count_salary
from employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
group by gender
)
SELECT * 
FROM CTE_Example;


-- Calculating the average salary of both females and males together
WITH CTE_Example AS
(
select gender, AVG(salary) avg_salary, MIN(salary) min_salary, MAX(salary) max_salary, COUNT(salary) count_salary
from employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
group by gender
)
SELECT AVG(avg_salary)
FROM CTE_Example
;

-- Once CTE's are taken out of the semi-colon, it can no longer functtion. 
-- The query below will return an error of non-existence
SELECT AVG(avg_salary)
FROM CTE_Example;


-- Basically, the CTE's can make bulky query blocks look simple
WITH code_block1 AS
(SELECT employee_id, first_name, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-02-01'
),
code_block2 AS
(SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM code_block1 
JOIN code_block2 
	ON code_block1.employee_id = code_block2.employee_id
;

-- Instead of writing the alias of the columns in the select statement block,
-- it can be written just after the CTE_Example; like the example below
WITH CTE_Example (gender, avg_salary, min_salary, max_salary) AS
(
SELECT gender, AVG(salary), MIN(salary), MAX(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;






    










