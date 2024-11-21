SELECT rating, total_quantity, average_price FROM (SELECT rating, sum(quantity) as total_quantity, round(avg(price), 2) as average_price FROM products GROUP BY rating)
WHERE total_quantity > 500;