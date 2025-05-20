-- Limit and Aliasing

select *
from employee_demographics
order by age desc
limit 2, 1  -- it starts basically at 2nd row and return 1 row after 
;

-- Aliasing  -> used for changing the name of the column

select gender, avg(age) as avg_age
from employee_demographics
group by gender
having avg_age > 40
;

select gender, avg(age)  avg_age  -- It works like this as well
from employee_demographics
group by gender
having avg_age > 40
;


