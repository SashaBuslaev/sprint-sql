select 
first_name || ' ' || last_name as full_name,
substr(email, instr(email, '@') +1) as email_domain,
upper(position) as job_title
from employees;