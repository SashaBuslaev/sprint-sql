select department_id, sum(salary) as total_salary from employees
group by department_id;