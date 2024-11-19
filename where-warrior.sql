select first_name, last_name, salary from employees where salary > 55000;
select first_name, last_name, salary from employees where hire_date > '2022-06-01';
select first_name, last_name, salary from employees where salary < 50000 and department_id = 2;
select first_name, last_name, position from employees where instr(position, 'Lead');