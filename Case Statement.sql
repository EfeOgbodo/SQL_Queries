-- Case Statments 

SELECT first_name, last_name, age, 
CASE
	WHEN age <= 35 THEN 'Youth'
    WHEN age BETWEEN 36 AND 55 THEN 'Matured'
    WHEN age > 55 THEN 'Elderly'
END AS age_bracket
FROM employee_demographics;


-- USE CASE
# If salary < 40000 5% increase
# If salary > 40000 7% increase
# If in Parks and Recreation dept +10000

SELECT first_name, last_name, salary,
CASE
	WHEN salary < 40000 THEN Salary + (salary * 0.05)
    WHEN salary > 40000 THEN Salary + (salary * 0.05)
END AS new_salary,
CASE
	WHEN dept_id = 1 AND 4 THEN salary + 10000
END	AS year_bonus
FROM employee_salary;

SELECT * 
FROM parks_departments;

SELECT * 
FROM employee_salary;