SELECT first_name, last_name, position, salary, department_id from employees 
where salary > 5000 and position like '%Engineer%';
select first_name, last_name, position, salary, e.department_id from employees e, departments 
where e.department_id = departments.department_id and departments.name like "%Engineering%" or departments.name like "%Development%";
select first_name, last_name, position, salary, e.department_id from employees e , departments 
where e.department_id = departments.department_id and departments.name not like "Analytics" and salary > 5000;
select first_name, last_name, position, salary, department_id from employees 
where salary < 5000 and hire_date like '2023%'; 