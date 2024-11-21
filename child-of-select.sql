select first_name, last_name, avg(salary) as department_avg_salary from employees
group by department_id;