-- Having VS Where

select gender ,avg(age)
from employee_demographics 
group by gender
Having avg(age)> 40 
;

select occupation , avg(salary)
from employee_salary 
where occupation like '%manager%' # where works on the rows before the group by
group by occupation
having avg(salary)> 75000;  # having works on the aggregated functions after the group by