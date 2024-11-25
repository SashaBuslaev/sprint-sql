select 
first_name || ' ' || last_name as full_name, 
(salary * 12) as annual_salary,
salary * 1.1 as increased_salary,
round((julianday(datetime('now')) - julianday(datetime(hire_date))) / 365) as years_employed,
salary / 20 as daily_rate
from employees;
