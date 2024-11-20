select rating, avg(price) as avg_price, sum(quantity) as total_quantity from products
group by rating
order by rating asc; 