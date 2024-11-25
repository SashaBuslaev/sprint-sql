select department_id, avg(salary) as average_salary, max(salary) as max_salary from employees
where position like '%Engineer%'
group by department_id
having avg(salary) > 40000 and max(salary) < 120000;