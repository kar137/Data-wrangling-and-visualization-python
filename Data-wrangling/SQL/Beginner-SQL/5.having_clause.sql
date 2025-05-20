-- Having vs Where

select gender, avg(age)
from employee_demographics
where avg(age) > 40     -- this line will not execute as the gender has not been grouped by yet
group by gender
;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 40  -- having was created for this
;

select occupation, avg(salary)
from employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000  -- this having will only run for aggregated fxn after the group by actually runs
;
