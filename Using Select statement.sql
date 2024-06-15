select
first_name, last_name, occupation 
from employee_salary;

# PEMDAS is an acronym to solve calculation problem
# Parenthesis, , Multiplication, Division, Addition, Subtraction
select
first_name, salary, salary + 1000
from employee_salary;

# "distinct" is used to fetch unique values 
select distinct
gender
from employee_demographics;

# However there can be exceptions to the use of distinct as seen above. An example below
select distinct
last_name, gender
from employee_demographics;



