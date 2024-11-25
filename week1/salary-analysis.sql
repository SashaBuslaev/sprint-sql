SELECT e.first_name, e.last_name, e.department_id, e.salary, d.name as department_name FROM departments d, employees e
WHERE d.department_id = e.department_id 
and salary > (SELECT avg(salary) FROM employees GROUP BY department_id HAVING department_id = e.department_id)
and salary > (SELECT avg(salary) FROM employees) 
and d.budget > (SELECT avg(budget) FROM departments)
order by salary desc;