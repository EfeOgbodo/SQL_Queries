-- Stored Procedures

-- When this quey runs, it only stores the procedure name at the backend. There is no display of outcome yet
CREATE PROCEDURE big_salary()
SELECT * 
FROM employee_salary 
WHERE salary > 50000 AND dept_id = 1;

-- We use the 'call' keyword to return the output
CALL big_salary();

-- Because of the semi-colon after the fisrt query block, double_call() didnt effect the recognize the second query block
-- In the next example, delimiters are used to counter this challenge
CREATE PROCEDURE double_call()
SELECT * 
FROM employee_salary 
WHERE salary > 50000 AND dept_id = 1;
SELECT * 
FROM employee_demographics
WHERE age > 30 AND gender = 'female';

call double_call();

-- In this example, both query blocks are recognized
DELIMITER $$
CREATE PROCEDURE query_call()
BEGIN
	SELECT * 
	FROM employee_salary 
	WHERE salary > 50000 AND dept_id = 1;
	SELECT * 
	FROM employee_demographics
	WHERE age > 30 AND gender = 'female';
END $$
DELIMITER ;

CALL query_call();


-- Using a stored Procedure on a broader scope
DELIMITER $$
CREATE PROCEDURE salary_checker(p_employee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary 
	WHERE employee_id = p_employee_id;
END $$
DELIMITER ;

CALL salary_checker(1);