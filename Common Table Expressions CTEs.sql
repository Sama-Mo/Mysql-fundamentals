-- CTEs Common Table Expressions


select gender , avg(salary) avg_sal ,max(salary) max_sal, min(salary) min_sal,count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender
;

with CTE_Example AS
(
select gender , avg(salary) avg_sal ,max(salary) max_sal, min(salary) min_sal,count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender
)
select * from CTE_example
;



with CTE_Example AS
(
select gender , avg(salary) avg_sal ,max(salary) max_sal, min(salary) min_sal,count(salary) count_sal
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender
)
select avg(avg_sal)
 from CTE_example
;


with CTE_Example AS
(
select employee_id, gender , birth_date 
from employee_demographics 
where birth_date > '1985-01-01'
),
CTE_Example2 AS 
(
select employee_id, salary
from employee_salary
where salary>50000
)
select *
 from CTE_Example
 join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id
;

-- to make it easier to make alias or change names 
with CTE_Example(Gender , Avg_Sal , Max_Sal, Min_Sal, Count_Sal) AS
(
select gender , avg(salary)  ,max(salary) , min(salary) ,count(salary) 
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender
)
select * 
from CTE_example
;
