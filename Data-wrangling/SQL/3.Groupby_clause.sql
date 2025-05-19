-- GROUP BY

select *
from employee_demographics;


select first_name   -- Since first_name is not an aggregating column so it will throw an error
from employee_demographics
group by gender
;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;

select occupation, salary
from employee_salary
group by occupation, salary
;

-- ORDER BY
select *
from employee_demographics
order by gender, age         -- by default it is in ascending order
;

-- ORDER BY
select *
from employee_demographics
order by gender, age desc         -- gender will be in asc and age will be in desc
;

select *
from employee_demographics
order by age, gender     -- gender is not ordered because age is unique whereas afterwhich gender is not    
;

select *
from employee_demographics
order by 5, 4  -- column number        
;