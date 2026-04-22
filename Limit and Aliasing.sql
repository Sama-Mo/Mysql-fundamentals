-- Limit and Aliasing

select * 
from employee_demographics
order by age desc
limit 3  # limit till third row
; 

select * 
from employee_demographics
order by age desc
limit 3 , 1 # the starting position is 3 and we will go one position after it 
#so the output will be the fourth one
; 


-- Aliasing
# giving a temporary name to a table or column

select gender , avg(age) AS avg_age
from employee_demographics
group by gender
having avg_age > 40 ;

select gender , avg(age) avg_age  # here we remove AS and it works correctly (they are the  same)
from employee_demographics
group by gender
having avg_age > 40 ;