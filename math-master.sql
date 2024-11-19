select
name,
abs(quantity-100) as quantity_diff,
round(price),
rating * 20 as rating_percent,
case when max(price) > 50 then max(price) else 50 end as price_or_50,
case when min(quantity) < 200 then 200 else min(quantity) end as quantity_cap,
price * quantity as total_value
from products;