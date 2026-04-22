-- stored procedues
-- NOTE: stored procedures can be run only one time and can be called many times


select * from employee_salary 
where salary >= 5000;

create procedure large_salaries()
select * from employee_salary 
where salary >= 50000;

call large_salaries();



-- if we want to add multiple query to the procedure we can do the following 
-- first change the delimiter from ; to any thing $$ 
-- then create the procedure then add begin and end and the new delimiter
-- type the queries 
-- and after the end and the new delimiter change the delimiter back to ;
-- then call the procedure as we know

delimiter $$
create procedure big_sal()
begin
	select * from employee_salary
    where salary>=50000;
    
    select * from employee_salary
    where salary>=10000;

end $$

delimiter ;
call big_sal();

-- also we can create a procedure with just right click the srored procedure in the  navigator bar 
-- click create stored procedures then we can put our queries in it 



-- pass a parameter to select a certain one
delimiter $$
create procedure Large_sal2(param_employee_id int)
begin
	select salary , first_name 
    from employee_salary
    where employee_id = param_employee_id;    
end $$

delimiter ;
call Large_sal2(12);

