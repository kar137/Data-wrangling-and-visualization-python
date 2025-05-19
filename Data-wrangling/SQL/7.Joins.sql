-- Joins

select *
from employee_salary
;

select *
from employee_demographics
;

-- Inner Joins -> Selects matching items between two tables

select dem.employee_id, age, occupation
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
;

-- Outer Joins -> Selects all items from left table and matching items

select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id
; 

select *
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id
; 

-- Self Join

select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id
;

-- Joining multiple tables

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments pd
	on sal.dept_id = pd.department_id  -- they are not same but have some values
;

select *
from parks_departments;
