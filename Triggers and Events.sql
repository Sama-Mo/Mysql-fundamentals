-- Triggers and Events

-- 1-Triggers
-- trigger is a block of code that execute automatically when an event takes place on a specific table

select* 
from employee_demographics;

select * 
from employee_salary;

Delimiter $$
create trigger insert_employee
	after insert on employee_salary
    for each row
 begin
	insert into employee_demographics (employee_id, first_name , last_name)
    values (New.employee_id, New.first_name , New.last_name);
 End $$
 delimiter ;
 
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13, 'Jean-Ralphio', 'Saperstein', 'Entertainment 720 CEO', 1000000, NULL);
 
 
 -- 2-Events
 -- Event takes place when it is scheduled 
 
 select * from employee_demographics ;
 
 delimiter $$
 create event delete_retirees
 on schedule every 30 second
 do 
 begin
	delete
    from employee_demographics
    where age>= 60;
 end $$
 delimiter ;
 