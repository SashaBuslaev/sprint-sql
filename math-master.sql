select
name,
abs(quantity-100) as quantity_diff,
round(price),
rating * 20 as rating_percent,
case when price > 50 then price else 50 end as price_or_50,
case when quantity < 200 then 200 else quantity end as quantity_cap,
price * quantity as total_value
from products;