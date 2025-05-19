-- String Functions  -> builtin that helps use strings and work with strings differently

select length('skyfall');

select first_name, upper(first_name)
from employee_demographics
order by 2
;

select upper('sky');
select lower('LOWER');

select trim('        sky    ');   -- trim gets rid of white spaces from front and back
select rtrim('        sky    ');

select first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name, 3, 2),  -- starts at 3rd positon and returns 2 characters
substring(birth_date, 6, 2) as birth_months
from employee_demographics
;

select first_name, replace(first_name, 'a', 'z')  -- It replaces a with z in first_name
from employee_demographics
;

select locate('x', 'Alexander');

select first_name, locate('An', first_name)
from employee_demographics
;

select first_name, last_name,
concat(first_name, ' ', last_name) as full_name
from employee_demographics
;
