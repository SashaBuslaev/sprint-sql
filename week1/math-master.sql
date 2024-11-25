select
name,
abs(quantity-100) as quantity_diff,
round(price) as rounded_price,
rating * 20 as rating_percent,
case when price > 50 then price else 50 end as price_or_50,
case when quantity < 200 then quantity else 200 end as quantity_cap,
price * quantity as total_value
from products;