-- Temporary tables

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
hobby varchar(100)
);

SELECT * 
FROM temp_table;

INSERT INTO temp_table
VALUES 
('Mitchell', 'Ogunseyi', 'dancing'),
('Lina', 'Ogbodo', 'singing'),
('Pamela', 'Omokhefe', 'playing video games');

SELECT *
FROM temp_table;

-- creating temporary tables from an already existing table
-- As long as this session is still in use, the temporary table created still exists
-- However, once I close the workbench, the tempoary table seizes to exist

CREATE TEMPORARY TABLE salary_below_50k
SELECT *
FROM employee_salary
WHERE salary <= 50000;

SELECT * 
FROM salary_below_50k;

-- From the salary_below_50k table, return the female employee in the table
-- I had to use subqueries and then looked for a primary key common to both tables which is the 'employee_id'
SELECT * 
FROM salary_below_50k
WHERE employee_id IN 
		(SELECT employee_id 
		FROM employee_demographics
		WHERE gender = 'female'); 

SELECT * 
FROM employee_demographics
WHERE gender = 'female'
