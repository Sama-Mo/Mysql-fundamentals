-- Group by
select gender
from employee_demographics 
group by gender
;

select gender , avg(age) , max(age) , min(age), count(age)
from employee_demographics 
group by gender
;

-- Order by

select *
from employee_demographics 
order by first_name ASC #by default we don't need to mention it
;

select *
from employee_demographics 
order by gender Desc 
;

select *
from employee_demographics 
order by gender,age 
;

select *
from employee_demographics 
order by 5,4 -- these are the columns positions(their index)
;