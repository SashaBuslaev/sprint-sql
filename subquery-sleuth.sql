select first_name, last_name from employees e, departments d 
where e.department_id = d.department_id and budget = (select max(budget) from departments); 
