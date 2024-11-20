select rating, sum(price * quantity) as total_value from products
group by rating
order by total_value desc; 