select 
case
    when budget > 1000000 then upper(name) || ' - LARGE BUDGET'
    when budget >= 500000 then upper(substr(name, 1, 1)) || lower(substr(name, 2)) || ' - Medium Budget'
    else lower(name) || ' - small budget'
end as department_display from departments;

select 
'<' || upper(last_name) || ', ' || lower(first_name) || '> - ' || upper(position) || ' in ' || upper(d.name) as employee_info from employees e, departments d
where 
(first_name like '_a%' or first_name like '_e%') and (substr(last_name, 1, 1) = substr(last_name, -1, 1)) and (position like '%Manager' or position like '%Director') and d.department_id = e.department_id;

select name, rating, 'Product: ' || upper(name) || ' | Price: ' || price || ' | Rating: ' || rating as product_summary from products
where name like '% %' and name not like '% % %' and rating > (select avg(rating) from products);