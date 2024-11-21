select rating, sum(price * quantity) as total_inventory_value, rating average_rating from products
group by rating
having total_inventory_value > 20000 and average_rating < (select avg(rating) from products);