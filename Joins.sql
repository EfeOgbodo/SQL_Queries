-- Joins

-- Inner Joins or Join
-- Inner joins works like the intersection principle in mathematics
SELECT *
FROM employee_demographics AS dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id, dem.first_name, sal.last_name, occupation
FROM employee_demographics AS dem
JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;

-- Left Join
-- Takes the rows from the left table and compares it with the one on the right
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;

-- Right Join
-- Takes the rows from the right table and compares it with the one on the left
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;

-- Self Join
-- Just as the name implies, it joins itself
SELECT * 
FROM employee_salary AS sal1
JOIN employee_salary AS Sal2
	ON sal1.employee_id + 1 = sal2.employee_id;

-- Multiple Joins
-- It's all about joining multiple tables together
SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id;