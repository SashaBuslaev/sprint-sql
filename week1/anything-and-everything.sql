select product_id, name, price from products
where price > (select price from products where rating = (select rating from products where (select max(rating) from products) = rating));

select product_id, name, price from products
where price > (select price from products where rating = (select rating from products where (select max(rating) from products) = rating));