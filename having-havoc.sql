select department_id, count(department_id) as employee_count, avg(salary) as average_salary from employees
group by department_id
having count(department_id) > 2 and avg(salary) < 75000;