select *
from employee_demographics;

-- "Group By" groups data together of the same distinct or unique values
select gender
from employee_demographics
group by gender;

select avg(age), min(age), max(age), count(age), gender
from employee_demographics
group by gender;

select dept_id, min(salary), max(salary)
from employee_salary
group by dept_id;


-- "Order By" arranges data in a an ascending (default) order or desc order
-- We can order by two columns, but the first col will take precedence over the second column
select * 
from employee_salary
order by first_name, last_name;

select * 
from employee_demographics
order by gender, age;

-- the default of GROUP BY as an ascending order, but we go by a descending order
select * 
from employee_salary
order by first_name desc;

select * 
from employee_demographics
order by age desc, gender;

select first_name, occupation, salary
from employee_salary
order by salary desc;


