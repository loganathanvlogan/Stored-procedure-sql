/* STORED PROCEDURE

    -- Stored procedure is a group code that stored and resuse agian and again
    -- Purpose of using is to reduce the network traffic
    -- We just call the procedure and excecute the query
    */

create procedure sample_pro
as
select employee_id, max(salary) 
from employees
group by employee_id
having max(salary)>5000
go

exec sample_pro;

---USING PARAMETER

create procedure employee_gender @gender varchar(10)
as
select * from employee
where gender=@gender
go

exec employee_gender @gender='female';

COMMIT;