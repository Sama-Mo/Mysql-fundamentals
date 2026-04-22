-- Unions 
select first_name, last_name 
from employee_demographics
union distinct                   -- union = union distinct (default)
select first_name, last_name
from employee_salary;


select first_name, last_name 
from employee_demographics
union all                       -- union everything even the duplicate ones                   
select first_name, last_name
from employee_salary;


select first_name,last_name
from employee_demographics
where age>50;


select first_name,last_name , 'Old Man' AS label
from employee_demographics
where age>40 and gender = 'Male'
union
select first_name,last_name , 'Old Lady' AS label
from employee_demographics
where age>40 and gender = 'Female'
union
select first_name,last_name , 'Highly Paid' AS label
from employee_salary
where salary > 70000
order by first_name , last_name 
;