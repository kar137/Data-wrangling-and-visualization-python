-- Unions -> allows us to combine rows together from separate table as well

select first_name, last_name
from employee_demographics
union all  -- by default it is distinct shows only unique values
select first_name, last_name
from employee_salary
;

select first_name, last_name, 'Old Man' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name, last_name, 'Old Lady' as label
from employee_demographics
where age > 40 and gender = 'Female'
union 
select first_name, last_name, 'Highly paid employee' as label
from employee_salary
where salary > 70000
order by first_name, last_name
;