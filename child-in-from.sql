SELECT rating, sum(quantity) as total_quantity, round(avg(price), 2) as average_price FROM products
GROUP BY rating
HAVING total_quantity > 500;