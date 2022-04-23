--2022-04-02
select product_name, year, price
from Sales s
left join Product p on p.product_id = s.product_id
