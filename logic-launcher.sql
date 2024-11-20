SELECT first_name, last_name, position, salary from employees
where salary > 5000 and position like '%Engineer%';
select first_name, last_name, position, salary from employees
inner join departments on employees.department_id = departments.department_id
where departments.name like ("%Engineering%", "%Development%");
select first_name, last_name, position, salary from employees
inner join departments on employees.department_id = departments.department_id
where  departments.name not like "%Analytics%" and salary > 5000;
select first_name, last_name, position, salary from employees
where salary < 5000 and hire_date like '2023%'; 