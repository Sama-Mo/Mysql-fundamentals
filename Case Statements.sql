-- Case Statements

select first_name,
last_name,
age,
case
when age<=30 then 'Young'
when age between 31 and 50 then 'Old'
when age>50 then 'Toooo Old'
end As Age_Bracket
from employee_demographics;



-- pay increase and bonus
-- <50000 = 5%
-- >50000 = 7%
-- finance = 10%

select first_name, last_name, salary, 
case 
	when salary < 50000 then salary +(salary * 0.05)
    when salary > 50000 then salary +(salary * 0.07)
end AS Salary_with_bonus ,
case
	when dept_id=6 then salary +(salary * 0.10)
end AS finance_bonus
from employee_salary;


select * from parks_departments;
select * from employee_salary;

-- If finance employees should get only 10% (not 7%), then you must put the finance condition FIRST inside the same CASE:
select first_name, last_name, salary, 
case 
	when dept_id=6 then salary +(salary * 0.10)
	when salary < 50000 then salary +(salary * 0.05)
    when salary > 50000 then salary +(salary * 0.07)
end AS Salary_with_bonus
from employee_salary;