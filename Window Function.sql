-- Window Functions

SELECT *
FROM employee_salary;

SELECT dem.first_name, dem.last_name, dem.gender, AVG(salary)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY  dem.first_name, dem.last_name, dem.gender;

-- The use of window function (Over()) eradicates the use of 'group by' at the end of a query block
SELECT  dem.first_name, dem.last_name, dem.gender, 
AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

-- the sum function used with the window function can help us get the salary total for female and male distinctively 
SELECT  dem.first_name, dem.last_name, dem.gender, salary, 
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id; 

-- row_number() function is being used.
-- row_number function doesn't allow for duplicates
SELECT  dem.first_name, dem.last_name, dem.gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER by salary DESC) AS row_num
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;
    
 -- USing the rank() function 
 -- the output of the rank() function is similar to that of the row() function. 
 -- the employees with the same salary will hold the same rank number
 # the rank() will return the positional value of the next row after a duplicated row
SELECT  dem.first_name, dem.last_name, dem.gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER by salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER by salary DESC) AS rank_num
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;

-- Using the dense_rank()
-- rank() and dense rank() similar in output. They both return duplicates. 
-- However, upon return the next number after a duplicate, the dense_rank () gives returns the next numerical value
SELECT  dem.first_name, dem.last_name, dem.gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER by salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER by salary DESC) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER by salary DESC) AS dense_rank_num
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id;


SELECT *
FROM employee_demographics;


update employee_demographics
set birth_date = '1988-11-10'
where employee_id = 13;



