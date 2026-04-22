-- Window functions

-- group by 
select gender , avg(salary) as Avg_salary
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by gender
;

-- over  it aggregate like group by but it keep the rows as it is 
select gender , avg(salary) over()
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

select dem.first_name, dem.last_name, gender , avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- group by will return diff output as it will group by the last and first names and the gender together so the avg salary will be changed beacause these 3 factors will make each one unique so it result in showing the exact salary of the employees
select dem.first_name, dem.last_name, gender , avg(salary) as Avg_salary
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
group by dem.first_name, dem.last_name, gender
;


-- sum and order by 
-- this is gonna sum the number with the one before it 
-- now if we wanted to see what the salaries were for genders we could do that by using sum, but also we could use order by to get a rolling total
select dem.first_name, dem.last_name, gender, salary , 
sum(salary) over(partition by gender order by dem.employee_id) AS Rolling_Total
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;



-- Ranking functions row number , rank , dense rank

-- ROW_NUMBER() → Assigns a unique number to each row.No ties. Even if two values are equal, they get different numbers.
-- RANK() → Gives the same rank to equal values, but leaves gaps after ties.Example: 1, 2, 2, 4
-- DENSE_RANK() → Gives the same rank to equal values, but no gaps. Example: 1, 2, 2, 3

-- 1- row_number()
select dem.employee_id ,dem.first_name, dem.last_name, gender, salary , 
row_number() over()
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- 1- row_number() by gender 
select dem.employee_id ,dem.first_name, dem.last_name, gender, salary , 
row_number() over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- 1- row_number() by gender order by salary
select dem.employee_id ,dem.first_name, dem.last_name, gender, salary , 
row_number() over(partition by gender order by salary desc)
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;


-- Rank Gives the same rank to equal values, but leaves gaps after ties.Example: 1, 2, 2, 4
select dem.employee_id ,dem.first_name, dem.last_name, gender, salary , 
row_number() over(partition by gender order by salary desc) AS Row_num,
rank() over(partition by gender order by salary desc) AS Rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- DENSE_RANK() → Gives the same rank to equal values, but no gaps. Example: 1, 2, 2, 3
select dem.employee_id ,dem.first_name, dem.last_name, gender, salary , 
row_number() over(partition by gender order by salary desc) AS Row_num,
dense_rank() over(partition by gender order by salary desc) AS Dense_Rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;


-- observe the diff
select dem.employee_id ,dem.first_name, dem.last_name, gender, salary , 
row_number() over(partition by gender order by salary desc) AS Row_num,
rank() over(partition by gender order by salary desc) AS Rank_num,
dense_rank() over(partition by gender order by salary desc) AS Dense_Rank_num
from employee_demographics as dem
join employee_salary as sal
on dem.employee_id = sal.employee_id
;

