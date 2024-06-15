-- STRING FUNCTIONS

-- Lengths
-- Returns the number of character in a string
SELECT length('Thunder');

SELECT first_name, LENGTH(first_name) AS f_len
FROM employee_salary;

SELECT first_name, LENGTH(first_name) AS f_len
FROM employee_salary
ORDER BY 2;

-- UPPER and LOWER
-- UPPER returns alphabets in capital letters, and vice versa for LOWER
SELECT UPPER('lowkey');

SELECT last_name, UPPER(last_name)
FROM employee_demographics;

SELECT first_name, LOWER(first_name)
FROM employee_demographics;

-- TRIM, LTRIM (LeftTrim), RTRIM
-- TRIM removes white spaces. LTRIM removes from the left side and the oppodite with RTRIM
SELECT TRIM('   Hilarious  ');

SELECT LTRIM('   Hilarious  ');

SELECT RTRIM('   Hilarious  ');


-- LEFT, RIGHT, SUBSTRING
SELECT last_name,
LEFT(last_name, 3) AS lname_lt,
RIGHT(last_name, 4) AS lname_rt,
SUBSTRING(last_name, 3, 2) AS lname_sbtring
FROM employee_demographics;

-- Return the Birth month of the employees
SELECT *, 
SUBSTRING(birth_date, 6, 2) AS birth_month
FROM employee_demographics;

-- REPLACE and LOCATE
SELECT REPLACE('Influence', 'e', 'i');

SELECT first_name,
REPLACE(first_name, 'e', 'i') AS rep_fname
FROM employee_salary;

SELECT LOCATE('s', 'Kensas');

SELECT last_name, LOCATE('k', last_name)
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ', last_name) AS fullname
FROM employee_salary;






