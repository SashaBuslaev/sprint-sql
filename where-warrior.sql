select last_name, first_name, salary from employees where salary > 55000;
select last_name, first_name, salary from employees where hire_date > '2022-06-01';
select last_name, first_name, salary from employees where salary > 50000 and department_id = 2;
select last_name, first_name, position from employees where instr(position, 'Lead');