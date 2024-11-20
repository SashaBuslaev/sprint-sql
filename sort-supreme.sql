select first_name, last_name, salary, department_id from employees
order by department_id asc, salary desc, last_name asc;

select name, budget, count(e.department_id) as number_of_employees from departments d left join employees e 
on d.department_id = e.department_id
group by d.department_id
order by number_of_employees desc, name asc;

select name, price, rating, quantity from products
order by rating desc, price asc, quantity desc;

select first_name, last_name, hire_date, round( ( julianday(datetime('now')) - julianday(datetime(hire_date)) ) / 365) as years_of_service from employees
where hire_date >= date('now', '-5 years') 
order by years_of_service desc, hire_date asc;