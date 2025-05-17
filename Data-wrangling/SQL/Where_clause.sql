-- WHERE CLAUSE

select *
from employee_salary
where first_name = 'Leslie'
;

select *
from employee_salary
where salary >= 50000
;

select *
from employee_demographics
where gender != 'Female'
;

select *
from employee_demographics
where birth_date > '1985-01-01'
;

-- Logical operators: AND, OR, NOT

select *
from employee_demographics
where birth_date > '1985-01-01'
or not gender = 'male'
;

select *
from employee_demographics
where (first_name='Leslie' and age=44) or age > 55
;

-- LIKE Statement
-- % -> anything and _ -> any specific value
select *
from employee_demographics
where first_name LIKE 'jer%'  -- this basically says first name starts with Jer and has anything after
;

select *
from employee_demographics
where first_name LIKE 'a__'  -- this basically says first name starts with a and has only two more characters after that no more or less
;

select *
from employee_demographics
where first_name LIKE 'a___%' 
;

select *
from employee_demographics
where birth_date LIKE '1985%' 
;