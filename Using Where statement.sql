select * 
from employee_demographics;

-- Using the 'AND' and 'OR' logical syntax
select * 
from employee_demographics
where first_name = 'Leslie' AND age > 40; 

select * 
from employee_demographics
where first_name = 'Leslie' OR age > 40; 

select * 
from employee_demographics
where gender = 'male';

-- Using the != (not equal to)  
select * 
from employee_demographics
where gender != 'male' or age <= 40;

select * 
from employee_demographics
where gender != 'male' and age <= 40;

select * 
from employee_demographics
where gender != 'female' and age <= 40;


-- Using the 'like' keyword in combo with '%' and '_' syntax
-- the % can be used for more than one alphabet
select * 
from employee_demographics
where first_name like 'Les%';

-- the underscore (_) is used for an exact unknown alphabet.  
select * 
from employee_demographics
where first_name like '_es%';

-- Just one _ is one alphabet. two __ (underscores) is two alphabets
select * 
from employee_demographics
where last_name like '__yer';

-- WHERE vs HAVING
-- Having is used for aggregated functions like AVG 
SELECT gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 35;

