select first_name, last_name, salary, position, department_id from employees 
where salary between 45000 and 55000;
select first_name, last_name, salary, position, department_id from employees 
where department_id in (1, 3);
select first_name, last_name, salary, position, department_id from employees 
where hire_date  between '2014-01-01' and '2019-12-31';
select first_name, last_name, salary, position, department_id from employees 
where position in ('Warehouse Manager', 'Senior Researcher', 'Lead Engineer');