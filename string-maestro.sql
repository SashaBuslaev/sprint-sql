SELECT first_name, last_name, substring(email, charindex('@', email)+1, len(email) - charindex('@', email)) email_domain FROM students;