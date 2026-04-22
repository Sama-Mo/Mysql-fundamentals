-- string functions:
-- length
select length('samaa');

select * from employee_demographics;

select first_name , length(first_name) 
from employee_demographics
order by 2
;

-- Upper and lower:
select upper('sama');

select lower('SAMA');

 
select first_name , upper(first_name) 
from employee_demographics;


-- Trim
select ('          sky          ');

select trim('          sky          ');

-- left trim
select ltrim('          sky          ');

-- Right trim
select Rtrim('          sky         ');



-- substring , left , right
select first_name,
left(first_name,4),
right(first_name,3),
substring(first_name , 2 , 3)
from employee_demographics ;

select first_name,
left(first_name,4),
right(first_name,3),
substring(first_name , 2 , 3),
birth_date
from employee_demographics ;

select first_name,
left(first_name,4),
right(first_name,3),
substring(first_name , 2 , 3),
birth_date,
substring(birth_date , 6 , 2) AS Birth_month
from employee_demographics ;


-- Replace
select first_name , replace(first_name , 'a' , 'z')
from employee_demographics ;


-- locate
select locate('a','sama');

select first_name,locate('n',first_name)
from employee_demographics ;


-- concatenation
select first_name,last_name,
concat(first_name,' ',last_name) AS Full_Name
from employee_demographics ;