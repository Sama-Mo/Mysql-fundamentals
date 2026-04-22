-- Temporary Tables
-- Using Temporary Tables
-- Temporary tables are tables that are only visible to the session that created them. 
-- They can be used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table.

-- There's 2 ways to create temp tables:
-- 1. This is the less commonly used way - which is to build it exactly like a real table and insert data into it
create temporary table temp_table (
first_name varchar(50),
last_name varchar(50),
fav_movie varchar(100)
);

insert into temp_table 
values ('Sama' , 'Mohamed' , 'LALA land');
select * from temp_table ;



-- the second way is much faster and my preferred method
-- 2. Build it by inserting data into it - easier and faster
create temporary table Table_Salary_Over_50K
select * 
from employee_salary
where salary>50000;

select * from Table_Salary_Over_50K;