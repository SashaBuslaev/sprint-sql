SELECT first_name, last_name, position, salary, e.department_id from employees e
where salary > 5000 and position like '%Engineer%';
select first_name, last_name, position, salary, e.department_id from employees e
inner join departments on e.department_id = departments.department_id
where departments.name like "%Engineering%" or "%Development%";
select first_name, last_name, position, salary, e.department_id from employees e
inner join departments on e.department_id = departments.department_id
where  departments.name not like "%Analytics%" and salary > 5000;
select first_name, last_name, position, salary, e.department_id from employees e
where salary < 5000 and hire_date like '2023%'; 