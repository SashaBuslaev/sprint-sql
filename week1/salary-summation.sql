select sum(salary) as total_salary_expenditure from employees;
select department_id, sum(salary) as department_salary_expenditure from employees
group by department_id;