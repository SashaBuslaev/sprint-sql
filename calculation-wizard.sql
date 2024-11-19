select 
first_name || ' ' || last_name as full_name, 
(salary * 12) as annual_salary,
salary * 1.1 as increased_salary,
DATEDIFF('2024-11-19', hire_date) / 365.25 AS years_employed,
salary / 20 as daily_rate
from employees;
