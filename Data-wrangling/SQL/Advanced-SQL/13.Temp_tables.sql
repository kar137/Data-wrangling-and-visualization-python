-- Temporary Tables -> tables only visible to the session where that is created, used for restoring intermediate results for complex queries like CTEs

-- Two ways to create temp table

create temporary table temp_table
( first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
)
;

select *
from temp_table;

insert into temp_table
values('Alex', 'Freberg', 'Lord of the Rings');

select *
from employee_salary;

create temporary table salary_over_50k
	select *
	from employee_salary
	where salary >= 50000;


select *
from salary_over_50k;