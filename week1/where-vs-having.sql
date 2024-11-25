select department_id, avg(salary) as average_salary from employees
where hire_date > '2015-01-01'
group by department_id
having avg(salary) > 70000;