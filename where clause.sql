select * from employee_salary
where first_name= 'leslie';

select * from employee_salary
where salary>50000;

select * from employee_salary
where salary>=50000;

select * from employee_salary;

select * from employee_demographics;

select *
from employee_demographics 
WHERE gender = 'male' 
And birth_date > '1985-01-01';

select *
from employee_demographics 
WHERE gender = 'male' 
OR birth_date > '1985-01-01';



-- like statement
-- % this is for every thing and _ is for specific one
select *
from employee_demographics 
WHERE first_name LIKE 'Jer%';

select *
from employee_demographics 
WHERE first_name LIKE '%er%';

select *
from employee_demographics 
WHERE first_name LIKE 'a%';

select *
from employee_demographics 
WHERE first_name LIKE 'a__';

select *
from employee_demographics 
WHERE first_name LIKE 'a___%';

select *
from employee_demographics 
WHERE birth_date LIKE '1989%';