-- Subqueries
select * 
from employee_demographics
where employee_id in (select employee_id
						from employee_salary 
                        where dept_id=1)
;


select * from employee_salary;

select first_name ,salary, avg(salary) 
from employee_salary
group by first_name , salary;


select first_name ,salary,
(select avg(salary) from employee_salary)
from employee_salary
; 



select * from employee_demographics;

select gender , max(age), min(age),count(age),avg(age)
from employee_demographics
group by gender;


select gender , avg(`max(age)`)
from
(select gender , max(age), min(age),count(age),avg(age)
from employee_demographics
group by gender)
AS aggregated_table
group by gender;

-- avg age from all genders not male and female separated
select avg(`max(age)`)
from
(select gender , max(age), min(age),count(age),avg(age)
from employee_demographics
group by gender)
AS aggregated_table;