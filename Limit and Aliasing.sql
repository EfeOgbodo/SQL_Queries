-- LIMIT and ALIASING

-- Limit reduces the number of rows to be returned
select *
from employee_salary
limit 4;

-- we are saying, return the next row after the 3rd positioned row. So, we are saying return the 4th row
select * 
from employee_salary
limit 3, 1;

-- Aliasing means changing the name of a column
select occupation, avg(salary) as avg_salary
from employee_salary
group by occupation
having avg_salary > 40000
limit 3;