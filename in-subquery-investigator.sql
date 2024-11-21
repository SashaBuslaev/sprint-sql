select first_name, last_name, (select name from departments) from employees 
where (select department_id from employees where first_name like 'Emma' and last_name like 'Clark') = department_id;