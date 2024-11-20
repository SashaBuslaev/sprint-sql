select 
first_name || ' ' || last_name as full_name,
case 
    when salary > 75000 then 'High'
    when salary > 50000 then 'Medium'
    else 'Low'
end as 'salary_category',
case
    when department_id < 5 then 'Core Team'
    else 'Support Team'
end as 'employee_type' from employees;