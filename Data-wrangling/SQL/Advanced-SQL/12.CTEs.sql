-- CTEs -> Common Table Expressions that helps define subquery which we can reference within the main query

with CTE_example(Gender, AVG_Sal, Max_sal, Min_sal, Count_sal) as 
(
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)
select *
from CTE_example
;


select avg(avg_sal)
from (
select gender, avg(salary) avg_sal, max(salary) max_sal, min(salary) min_sal, count(salary) count_sal
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
) example_salary
;

select avg(avg_sal)  -- It will throw an error because above CTE_example is basically a temporary table not stored in memory
from CTE_example;

with CTE_example as 
(
select employee_id, gender, birth_date
from employee_demographics dem
where birth_date > '1985-01-01'
),
CTE_example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select *
from CTE_example
join CTE_example2
	on CTE_example.employee_id = CTE_example2.employee_id
;
