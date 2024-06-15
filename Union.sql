-- UNION
SELECT dem. employee_id, dem.first_name, dem.last_name
FROM employee_demographics AS dem 
UNION
SELECT sal.employee_id, sal.first_name, sal.last_name
FROM employee_salary AS sal;

-- UNION DISTINCT
-- The "Union" keyword works exactly as the "union distinct" when there are exact data across rows
-- the output for the query below is the same as the one above
SELECT dem. employee_id, dem.first_name, dem.last_name
FROM employee_demographics AS dem 
UNION DISTINCT
SELECT sal.employee_id, sal.first_name, sal.last_name
FROM employee_salary AS sal;

-- USE CASE: The company wants to find out the marital status of its employees, and also look into sponsoring  and 
-- their wedding ceremony, and also increasing their salary.  
SELECT first_name, last_name, gender, 'married or single' AS marital_status 
FROM employee_demographics AS dem
WHERE age < 40 AND gender = 'female'  
UNION 
SELECT first_name, last_name, gender, 'married or single' AS marital_status
FROM employee_demographics AS dem
WHERE dem.age < 40 AND gender = 'male'
UNION
SELECT first_name, last_name, occupation, salary
FROM employee_salary
WHERE salary < 40000;